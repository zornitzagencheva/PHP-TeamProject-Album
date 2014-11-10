<?php
    session_start();
    if(isset($_SESSION['is_logged'])){
        if($_SESSION['is_logged'] === true){
            header('Location: index_logged.php?showPrivate=1');
            exit;
        }
    }
?>

<!DOCTYPE html>

<html>

<head>
    <title>Home</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="styles/index.css"/>
</head>

<body>
    <header class="header">
        <audio autoplay="autoplay" id="sound">
            <source src="sounds/ChilloutMusic.mp3" type="audio/mp3">
        </audio>
        <div class="buttons">
            <img src="images/Play.png" alt="play" id="play"/>
            <img src="images/Stop.png" alt="stop" id="stop"/>
        </div>
        <p id="share-moments">Share the moment</p>
    </header>
    <main>
        <section class="popular_pics">
            <div class="header"><p>Our most liked pictures</p></div>
            <?php
            $con=mysqli_connect("localhost:8080","root","","gallery");
            $result = mysqli_query($con,"SELECT pic_id FROM pictures WHERE is_public=1 ORDER BY likes DESC");
            $publicPictures = array();
            while($row = mysqli_fetch_array($result)){
              $publicPictures[] = $row['pic_id'];
            }

            if(count($publicPictures) < 8){
                $topPictures = $publicPictures;
            } else{
                $topPictures = array_slice($publicPictures, 0, 8);
            }
            for($pic = 0; $pic < count($topPictures); $pic++): ?>
                <div class="picture">
                    <img src="get_pic.php?pic_id=<?php echo $topPictures[$pic]; ?>&full_size=0">
                </div>
           <?php endfor;
           ?>
        </section>
        <section class="authentication">
            <form action="login.php" method="post" class="form">
                <label for="login">Name: </label> <input type="text" id="login" name="login" placeholder="Your username"/>
                <label for="pass">Password</label> <input type="password" id="pass" name="pass" placeholder="Your password"/>
                <input type="submit" value="Login"/>
                <input type="hidden" name="log_post" value="1"/>
            </form>
            <form action="register.php" method="post" class="form">
                <div>
                    <label for="username">Username:</label><input type="text" id="username" name="username">
                    <label for="passReg">Password:</label><input type="password" id="passReg" name="pass">
                </div>
                <div>
                    <label for="user-mail">E-Mail:</label><input type="email" id="user-mail" name="user-mail">
                </div>
                <?php if(isset($_SESSION['msg'])): ?>
                    <div><p><?php echo $_SESSION['msg']; session_destroy(); ?></p></div>
                <?php endif; ?>
                <input type="submit" value="Register"/>
            </form>
        </section>


    </main>
    <footer>
        <p>Your moments - share them, keep them, remember them every day </p>
    </footer>

    <!--Scripts-->
    <script type="text/javascript">
        window.onload = function(){
            var stop = document.getElementById('stop');
            var play = document.getElementById('play');
            var sound = document.getElementById('sound');
            stop.addEventListener('click', function() {
                sound.pause();}, false);
            play.addEventListener('click', function(){
                sound.play();}, false)
        };
    </script>
</body>

</html>