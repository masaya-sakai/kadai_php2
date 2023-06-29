<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（入力画面）</title>
</head>

<body>
  <form action= "todo_create.php" method="POST">
    <fieldset>
      <legend>作業内容</legend>
      <a href="todo_read.php">一覧画面</a>
      <div>
        今回の作業: <input type="text" name="work">
      </div>
      <div>
        作業時間: <input type="text" name="wtime">
      </div>
      <div>
        作業ポイント : <input type="text" name="point">
      </div>
      <div>
        作業日: <input type="date" name="hiniti">
      </div>
      <div>
        <button>保存</button>
      </div>
    </fieldset>
  </form>

</body>

</html>