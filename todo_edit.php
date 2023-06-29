<?php
include('functions.php');

// id受け取り
//var_dump($_GET);
//exit();
$id = $_GET['id'];


// DB接続
$pdo = connect_to_db();


// SQL実行
$sql = 'SELECT * FROM todo_table WHERE id=:id';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_STR);


try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

$result = $stmt->fetch(PDO::FETCH_ASSOC);


?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（編集画面）</title>
</head>

<body>
  <form action="todo_update.php" method="POST">
    <fieldset>
      <legend>DB連携型todoリスト（編集画面）</legend>
      <a href="todo_read.php">一覧画面</a>
      <div>
        todo: <input type="text" name="todo" value="<?= $result['todo'] ?>">
      </div>
      <div>
        deadline: <input type="date" name="deadline" value="<?= $result['deadline'] ?>">
      </div>
      <input type="hidden" name="id" value="<?= $result['id']?>">
      <div>
        <button>submit</button>
      </div>
    </fieldset>
  </form>

</body>

</html>