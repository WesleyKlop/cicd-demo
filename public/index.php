<html lang="en">
<head>
    <title>
        Onze dev omgeving
    </title>
</head>
<body>
<h1>DEV JONGUH</h1>
<pre>
    <code>
        <?php
        require_once "../app/Database.php";
        $query = Database::prepare("select * from users");
        $query->execute();
        $result = $query->fetchAll();

        var_dump($result);
        ?>
    </code>
</pre>
</body>
</html>
