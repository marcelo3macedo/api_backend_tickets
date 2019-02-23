<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once 'config/database.php';
include_once 'objects/tickets.php';
include_once 'objects/interaction.php';

$high_priority = array("reclama", "como está", "acompanhamento", "pagamento", "não funciona", "continua dando problema", "e-bit", "nao chegou", "diferente", "errado", "nao foi entregue", "dúvida", "cancelamento", "rastrear", "como posso", "procon", "reclameaqui");
  
$database = new Database();
$db = $database->getConnection();

$ordering = "";
$start = "";
$end = "";
$pag = "";
$priority = "";

if (isset($_GET['pag'])) {
    $pag = $_GET['pag'];
}

if (isset($_GET['order'])) {
    $ordering = $_GET['order'];
}

if (isset($_GET['start'])) {
    $start = $_GET['start'];
}

if (isset($_GET['end'])) {
    $end = $_GET['end'];
}

if (isset($_GET['priority'])) {
    $priority = $_GET['priority'];
}

$ticket = new Ticket($db);
$interaction = new Interaction($db);

$tickets = $ticket->readToJson($ordering, $start, $end, $pag);

for ($x = 0; $x < count($tickets); $x++) {
    $tickets[$x]["Interactions"] = $interaction->getByTicket($tickets[$x]["TicketID"]);
    $tickets[$x]["Priority"] = $ticket->getPriority($tickets[$x], $high_priority);  
    
    if (strlen($priority) > 0) {
        if ($tickets[$x]["Priority"] != $priority) {
            array_splice($tickets, $x, 1);
        }
    }
} 

if ($ordering == "Priority") {
    usort($tickets, function($a, $b)
    {
        return strcmp($a["Priority"], $b["Priority"]);
    });
}

http_response_code(200); 
echo json_encode($tickets);
