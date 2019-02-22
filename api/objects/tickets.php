<?php
class Ticket {
 
    private $conn;
    private $table_name = "Ticket";
 
    public $TicketID;
    
    public function __construct($db){
        $this->conn = $db;
    }

    function readToJson($ordering){ 
        $order = $this->getOrderBy($ordering);
        $response=array();

        $query = "SELECT * FROM " . $this->table_name . " " . $order;

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        $num = $stmt->rowCount();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);

            $t = array(
                "TicketID" => $TicketID,
                "CategoryID" => $CategoryID,
                "CustomerID" => $CustomerID,
                "DateCreate" => $DateCreate,
                "DateUpdate" => $DateUpdate
            );
     
            array_push($response, $t);
        }
     
        return $response;
    }

    function getOrderBy($ordering) {
        if (strlen($ordering) > 0) {
            if ($ordering == "DateCreate" OR $ordering == "DateUpdate")
            return " ORDER BY " . $ordering;
        }   
        
        return "";
    }
}
?>