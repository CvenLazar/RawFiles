<?php


include('dbConnect.php');

if(isset($_REQUEST['status'])){
    $status = $_REQUEST['status'];
    $id = $_REQUEST['id'];

    $sql = "update voter set status=:status where vid=:id";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':status',$status);
    $stmt->bindParam(":id",$id);
    $stmt->execute();
    header("location:index.html.php");
}

?>