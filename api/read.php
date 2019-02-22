<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once 'config/database.php';
include_once 'objects/tickets.php';
include_once 'objects/interaction.php';
 
$database = new Database();
$db = $database->getConnection();

$ticket = new Ticket($db);
$interaction = new Interaction($db);

$tickets = $ticket->readToJson();

for ($x = 0; $x < count($tickets); $x++) {
    $tickets[$x]["Interactions"] = $interaction->getByTicket($tickets[$x]["TicketID"]);
} 

http_response_code(200); 
echo json_encode($tickets);
