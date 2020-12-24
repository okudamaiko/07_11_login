<?php
if (isset($_POST['signin'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    try {
        $db = new PDO('mysql:host=localhost;dbname=gsacf_d07_11', 'root', '');
        $sql = 'insert into login_table2(username,password) values(?,?)';
        $stmt = $db->prepare($sql);
        $stmt->execute(array($username, $password));
        $stmt = null;
        $db = null;
        header('Location:index.php');
    } catch (PDOException $e) {
        echo $e->getMessage();
        exit;
    }
}




?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新規登録画面</title>
</head>

<body>
    <h1>新規登録画面</h1>
    <form action="" method="POST">
        ユーザー名<input type="text" name="username" value=""><br>
        パスワード<input type="password" name="password" value=""><br>
        <input type="submit" name="signin" value="新規登録">
    </form>

</body>

</html>