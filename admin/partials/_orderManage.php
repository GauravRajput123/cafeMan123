<?php
    include '_dbconnect.php';

if($_SERVER["REQUEST_METHOD"] == "POST") {

    if(isset($_POST['updateStatus'])) {
        $orderId = $_POST['orderId'];
        $status = $_POST['status'];

        $sql = "UPDATE orders SET \"orderStatus\"=$status WHERE \"orderId\"=$orderId"; 
        $result = pg_query($conn, $sql);

        if ($result){
            echo "<script>alert('update successfully');
                window.location=document.referrer;
                </script>";
        }
        else {
            echo "<script>alert('failed');
                window.location=document.referrer;
                </script>";
        }
    }
    
    if(isset($_POST['updateDeliveryDetails'])) {
        $trackId = $_POST['trackId'];
        $orderId = $_POST['orderId'];
        $name = $_POST['name'];
        $time = $_POST['time'];
        $phone = $_POST['phone'];
        if($trackId == NULL) {
            $sql = "INSERT INTO deliverydetails (orderId, deliveryBoyName, deliveryBoyPhoneNo, deliveryTime, dateTime) VALUES ('$orderId', '$name', '$phone', '$time', current_timestamp())";   
            $result = pg_query($conn, $sql);

            $sql = "SELECT * FROM public.deliverydetails ORDER BY \"orderId\" DESC LIMIT 1";
            $result = pg_query($conn, $sql);
            $row = pg_fetch_assoc($result);
            $catId=$row["trackId"];

            // if ($result){
            //     echo "<script>alert('update successfully');
            //         window.location=document.referrer;
            //         </script>";
            // }
            // else {
            //     echo "<script>alert('failed');
            //         window.location=document.referrer;
            //         </script>";
            // }
        }
        else {
            $sql = "UPDATE deliverydetails SET deliveryBoyName='$name', deliveryBoyPhoneNo='$phone', deliveryTime='$time', dateTime=current_timestamp() WHERE id='$trackId'";   
            $result = pg_query($conn, $sql);
            // if ($result){
            //     echo "<script>alert('update successfully');
            //         window.location=document.referrer;
            //         </script>";
            // }
            // else {
            //     echo "<script>alert('failed');
            //         window.location=document.referrer;
            //         </script>";
            // }
        }
    }
}

?>