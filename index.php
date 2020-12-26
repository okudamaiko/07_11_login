<?php
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    try {
        $db = new PDO('mysql:host=localhost;dbname=gsacf_d07_11', 'root', '');
        $sql = 'select count(*) from login_table2 where username=? and password=?';
        $stmt = $db->prepare($sql);
        $stmt->execute(array($username, $password));
        $result = $stmt->fetch();
        $stmt = null;
        $db = null;

        if ($result[0] != 0) {
            header('Location:home.php');
            exit;
        } else {
            $err_msg = "ユーザー名またはパスワードが誤りです";
        }
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
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ログイン画面</title>
</head>

<body>
    <h1>ログイン画面</h1>

    <form action="" method="POST">
        <?php if ($err_msg !== null && $err_msg !== "<br>") {
            echo $err_msg;
        } ?>
        <div class="cp_iptxt">
            <label class="ef">
                ユーザー名<input type="text" name="username" value=""><br>
                パスワード<input type="password" name="password" value=""><br>
            </label>
            <input class="btn" type="submit" name="login" value="ログイン">

        </div>
    </form>
    <a href="signin.php">新規登録</a>
</body>

</html>