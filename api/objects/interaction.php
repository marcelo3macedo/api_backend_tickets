<?php
class Interaction {
 
    private $conn;
    private $table_name = "VW_TicketInteraction";
 
    public function __construct($db){
        $this->conn = $db;
    }

    function getByTicket($TicketID){ 
        $response=array();
        $query = "SELECT * FROM " . $this->table_name . " WHERE TicketID = " . $TicketID;
     
        $stmt = $this->conn->prepare($query);
        $stmt->execute();     
        $num = $stmt->rowCount();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);

            $i = array(
                "Subject" => $Subject,
                "Message" => $Message,
                "DateCreate" => $DateCreate,
                "Sender" => $Sender
            );
     
            array_push($response, $i);
        }
     
        return $response;
    }
}
?>