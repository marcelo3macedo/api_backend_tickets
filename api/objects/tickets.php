<?php
class Ticket {
 
    private $conn;
    private $table_name = "Ticket";
    private $limit = 30;
 
    public $TicketID;
    
    public function __construct($db){
        $this->conn = $db;
    }

    function readToJson($ordering, $start, $end, $pag){ 
        $order = $this->getOrderBy($ordering);
        $filter = $this->getFilters($start, $end);
        $pagination = $this->getPage($pag);
        $response=array();

        $query = "SELECT * FROM " . $this->table_name . " " . $filter . " " . $order . " " . $pagination;
        
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

    function getPage($pag) {
        if (strlen($pag) > 0 && is_numeric($pag)) {
            $offset = $this->limit * $pag;
            return " LIMIT " . $this->limit . " OFFSET " . $offset;    
        }

        return " LIMIT " . $this->limit;
    }

    function getOrderBy($ordering) {
        if (strlen($ordering) > 0) {
            if ($ordering == "DateCreate" OR $ordering == "DateUpdate")
            return " ORDER BY " . $ordering;
        }   
        
        return "";
    }

    function getFilters($start, $end) {
        $filter = "";

        if ($this->checkValidDate($start)) {
            $filter = "WHERE DateCreate > '" . $start . "'";
        }

        if ($this->checkValidDate($end)) {
            if (strlen($filter) > 0) {
                $filter = $filter . " AND DateCreate < '" . $end . "'";
            } else {
                $filter = $filter . " WHERE DateCreate < '" . $end . "'";
            }            
        }

        return $filter;
    }
 
    function checkValidDate($date) {
        if (preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/",$date)) {
            return true;
        }

        return false;
    }
}
?>