<!-- 
YYYY.MM.DD HH:MM:SS   
2018.07.10 11:12:00
2018.05.10 19:45:00
2018.06.17 18:30:00
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<fieldset><legend><small>Введите дату начала и окончания</small></legend>
    <form action="query_save.php" method="post">
    Дата начала: <input type="datetime-local" name="timestart">
    Дата окончания : <input type="datetime-local" name="timeend">
    <input type="submit" name="submit" value="submit">
    </form>
    </fieldset>
</body>
</html>

<?php
date_default_timezone_set('America/New_York');
$host = 'localhost';
$user = 'homestead';
$password = 'secret';
$dbname = 'news';
$dsn = 'mysql:host='. $host . ';dbname='. $dbname;
$pdo = new PDO($dsn, $user, $password);

class MyClass {
    public $pdo;
        public function __consctruct() {
        }
        public function MyData($timestart, $timeend) {
            $sql = 'SELECT 
            n.id, n.title, n.insert, 
            a.item_id, a.text, a.is_new 
            FROM news AS n 
            JOIN 
            announce AS a 
            ON n.id = a.item_id 
            WHERE n.insert 
            BETWEEN :timestart AND :timeend';
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute([
                'timestart' => $timestart, 
                'timeend' => $timeend
                ]);
            $posts = $stmt->fetchAll();
            return $posts;
        }
    }

$myclass = new MyClass();
$myclass->pdo = $pdo;
    if(isset($_POST['submit'])) {
        $timestart = $_POST['timestart'];
        $timeend = $_POST['timeend'];
        
        function check($str) {
            $pattern = "/^([0-9]{4})-([0-9]{2})-([0-9]{2})([T])([0-9]{2})(:)([0-9]{2})$/";
            if (preg_match_all($pattern, $str, $mystr)) { 
            $hour = $mystr[5][0];
            $min = $mystr[7][0];
            $sec = 00;//$mystr[9][0];
            $month = $mystr[2][0];
            $day = $mystr[3][0];
            $year = $mystr[1][0];
        
            $time =  mktime($hour,$min,$sec,$month,$day,$year); // h/m/s/m/d/y
            return $time;
            } else {
                echo ''; 
            }
            }
            $time1 = check($timestart);
            $time2= check($timeend);

    $data = $myclass->MyData($time1, $time2); 
    foreach ($data as $key => $val) {

    echo '<br>';  
    echo '<b>';  
    echo $val['title'];
    echo '</b>';
    $timestamp = '@' . $val['insert'];
    $when = new DateTime($timestamp);
    $when->setTimezone(new DateTimeZone('America/New_York'));
    $parts = explode('/', $when->format('Y/m/d/H/i/s'));
    print ' ';
    print '<small>';
    print $parts[0] . '.' . $parts[1] . '.' . $parts[2] . ' ' . $parts[3] . ':' . $parts[4] . ':' . $parts[5];
    print '</small>';
    echo '<br>';
    echo '<hr>';
    echo $val['text'] . '<br>';
    }
} 