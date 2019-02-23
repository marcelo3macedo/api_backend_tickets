<?php
class Database{
 
    private $host = "temporaryomace.mysql.dbaas.com.br:3306";
    private $db_name = "temporaryomace";
    private $username = "temporaryomace";
    private $password = "temporary@123";
    public $conn;
 
    public function getConnection() {
 
        $this->conn = null;
 
        try{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->conn;
    }
}
?>