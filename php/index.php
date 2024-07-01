<?php
define("ROOT_PATH", realpath(dirname(__FILE__)));

$currentPath = realpath(ROOT_PATH . "/" . ($_GET["path"] ?? ""));
if (strpos($currentPath, ROOT_PATH) !== 0) {
    $currentPath = ROOT_PATH;
}

function getFilesAndFolders(string $path): array
{
    $items = scandir($path);
    $result = [];
    $allowedExtensions = ["jpg", "jpeg", "png", "gif"];
    foreach ($items as $item) {
        if ($item == "." || $item == "..") {
            continue;
        }
        $fullPath = $path . "/" . $item;
        if (is_dir($fullPath)) {
            $result[] = ["name" => $item, "type" => "folder"];
        } elseif (
            in_array(
                strtolower(pathinfo($item)["extension"]),
                $allowedExtensions
            )
        ) {
            $result[] = ["name" => $item, "type" => "file"];
        }
    }
    return $result;
}

$items = getFilesAndFolders($currentPath);
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Файловый менеджер</title>
</head>
<body>
    <h1>Файловый менеджер</h1>
    <h2>Текущая папка: <?php echo htmlspecialchars($currentPath); ?></h2>
    <ul>
        <?php if ($currentPath !== ROOT_PATH): ?>
            <li><a href="?path=<?php echo urlencode(
                dirname($currentPath)
            ); ?>">.. (вернуться назад)</a></li>
        <?php endif; ?>
        <?php foreach ($items as $item): ?>
            <?php if ($item["type"] == "folder"): ?>
                <li><a href="?path=<?php echo urlencode(
                    str_replace(
                        ROOT_PATH,
                        "",
                        $currentPath . "/" . $item["name"]
                    )
                ); ?>"><?php echo htmlspecialchars($item["name"]); ?></a></li>
            <?php else: ?>
                <li><?php echo htmlspecialchars($item["name"]); ?></li>
            <?php endif; ?>
        <?php endforeach; ?>
    </ul>
</body>
</html>
