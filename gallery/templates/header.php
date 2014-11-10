<!DOCTYPE html>

<html>

<head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8"/>
    <link rel="stylesheet" href="styles/header.css"/>
    <link rel="stylesheet" href="styles/<?php echo $cssFile; ?>"/>
    <link rel="stylesheet" type="text/css" href="styles/footer.css">
    <title><?php echo $pageTitle?></title>
</head>
<body>

<header>
    <div> Hello, <?php echo htmlentities($_SESSION['login']); ?> </div>
    <nav>
        <ul>
            <li><a href="index_logged.php?showPublic=1">View Public</a></li>
            <li><a href="#">My albums</a>
                <ul>
                    <li><a href="index_logged.php?showPrivate=1">View all</a></li>
                    <li><a href="folders.php">Create new</a></li>
                </ul>
            </li>
            <li><a href="upload.php">Upload new picture</a></li>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </nav>
</header>