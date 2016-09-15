<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<body>
<form method="post" >
    <input type="text"  name="name">
    <input type="text"  name="email"><br>
    <input type="submit" name="sub"  value="submit">
    <button type="button" name="hi">hi</button>
</form>
<?php
if(isset($_POST['sub']))
{
    echo  $name=$_POST['name'];
    echo  $email=$_POST['email'];

}
if(isset($_POST['hi']))
{
    echo "hi there";
}

?>
</body>
</html>
