<?php
// POSTデータ確認
//var_dump($_POST);
if (
  //ダメな条件
  !isset($_POST['work']) || $_POST['work'] === '' ||
  !isset($_POST['wtime']) || $_POST['wtime'] === '' ||
  !isset($_POST['point']) || $_POST['point'] === '' ||
  !isset($_POST['hiniti']) || $_POST['hiniti'] === '' 
  //!isset($_POST['']) || $_POST[''] === '' ||
  //!isset($_POST['']) || $_POST[''] === ''
  
) {
  exit('??');
}

$work = $_POST['work'];
$wtime = $_POST['wtime'];
$point = $_POST['point'];
$hiniti = $_POST['hiniti'];

$dbn ='mysql:dbname=gs_d13_14;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';


// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL作成&実行
$sql = 'INSERT INTO todo_table (id, todo, deadline, created_at, updated_at) VALUES (NULL, :todo, :deadline, now(), now())';

$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':todo', $work, PDO::PARAM_STR);
$stmt->bindValue(':todo', $wtime, PDO::PARAM_STR);
$stmt->bindValue(':todo', $point, PDO::PARAM_STR);
$stmt->bindValue(':deadline', $hiniti, PDO::PARAM_STR);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

header('Location:todo_input.php');
exit();
