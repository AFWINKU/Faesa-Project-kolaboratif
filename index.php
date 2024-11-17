<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="stylephp.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.10/typed.js"></script>
</head>

<body>
    <!-- HOME -->
    <section class="hero" id="home">
        <div class="na">

        <?php 
            include 'koneksi.php';
            $query = "SELECT * FROM profil";
            $query_sql = mysqli_query($koneksi, $query);
            $tampil = mysqli_fetch_assoc($query_sql);
        ?>
        
            <nav>
                <a href="#home"><img src="Image/<?= $tampil['logo'] ?>" alt="Logo"></a>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#service">Services</a></li>
                    <li><a href="#portfolio">Portfolio</a></li>
                    <li><a href="#experience">Experience</a></li>
                    <li><a href="#contact">Contact me</a></li>
                </ul>
            </nav>
        </div>

        <div class="container-hero">
            <div class="img-hero">
                <!-- hiasan yang kotak berwarna orange -->
                <div class="kotak-orange">
                    <div class="kotak-hero"></div>
                    <div class="kotak-hero"></div>
                    <div class="kotak-hero"></div>
                </div>
                <!-- hiasan gelembung -->
                <div class="gelembung-biru">
                    <div class="gelembung-hero"></div>
                    <div class="gelembung-hero"></div>
                    <div class="gelembung-hero"></div>
                </div>

                <!-- foto profil -->
                <div class="picture-hero">
                    <img src=Image/<?= $tampil['image_URL'] ?> alt="profil-picture">
                </div>
                <!-- logo sosmed -->
                <div class="sosmed">
                    <!-- facebook -->
                    <div class="facebook">
                        <a href="<?= $tampil['facebook_URL'] ?>">
                            <img src="Image/facebook.png" alt="facebook-logo">
                        </a>
                    </div>
                    <!-- Whats App -->
                    <div class="whatsapp">
                        <a href="<?= $tampil['whatsapp_URL'] ?>">
                            <img src="Image/whatsapp.png" alt="whatsapp-logo">
                        </a>
                    </div>
                    <!-- Instagram -->
                    <div class="instagram">
                        <a href="<?= $tampil['instagram_URL'] ?>">
                            <img src="Image/instagram.png" alt="instagram-logo">
                        </a>
                    </div>
                    <!-- Twitter -->
                    <div class="twitter">
                        <a href="<?= $tampil['twitter_URL'] ?>">
                            <img src="Image/twitter.png" alt="twitter-logo">
                        </a>
                    </div>
                </div>
            </div>

            <!-- Info home -->
            <div class="info-hero">
                <span class="subtitle">Hello, I am</span>
                <p><?= $tampil['two_name'] ?></p>
                <div class="job">
                    <p id="type"></p>
                </div>
                <div class="button-home">
                    <a href="#about">
                        <div class="button-get">Get started</div>
                    </a>
                    <span>
                        <a href="#portfolio">See portfolio</a>
                    </span>
                </div>
                <!-- Award -->
                <div class="award-hero">
                    <div class="award1">
                        <span id="a1">2+</span>
                        <span>Years experience</span>
                    </div>
                    <div class="award2">
                        <span id="a2">150+</span>
                        <span>Project complete</span>
                    </div>
                    <div class="award3">
                        <span id="a3">89+</span>
                        <span>Happy Clients</span>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- ABOUT -->
    <section id="about" class="about">
        <div class="container-about">
            <div class="biodata">
                <div class="biodata-title">
                    <h1>About me</h1>
                    <div class="subtitle">
                        <span>My info</span>
                    </div>
                </div>
                <div class="profil-bio">
                    <p><?= $tampil['bio'] ?></p>
                </div>

                <div class="biodata-date">
                    <div class="name">
                        <img src="Image/user.png" alt="profil-name">
                        <p><span>Name</span> <span>:</span> <span><?= $tampil['full_name'] ?></span></p>
                    </div>

                    <div class="birth">
                        <img src="Image/cake.png" alt="profil-birth">
                        <p><span>Birth</span> <span>:</span> <span><?= $tampil['birth'] ?></span></p>
                    </div>

                    <div class="email">
                        <img src="Image/mail.png" alt="profil-email">
                        <p><span>Email</span> <span>:</span> <span><?= $tampil['email_name'] ?></span></p>
                    </div>
                </div>

                <div class="interest">
                    <div class="title-interest">
                        <h1>My Interest</h1>
                    </div>
                    <div class="container-interes">
                        <div class="interest-design">
                            <img src="Image/Design.png" alt="Design-icon">
                            <span>Design</span>
                        </div>
                        <div class="interest-music">
                            <img src="Image/headphone.png" alt="Music-icon">
                            <span>Music</span>
                        </div>
                        <div class="interest-game">
                            <img src="Image/game-controller (1).png" alt="Game-icon">
                            <span>Game</span>
                        </div>
                        <div class="interest-photo">
                            <img src="Image/camera.png" alt="Photo-icon">
                            <span>Photo</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="biodata-picture">
                <div class="container-picture">
                    <img src="Image/<?= $tampil['image_URL'] ?>" alt="profil-picture">
                </div>
                <div class="gelembung-about">
                    <div class="gelembung1"></div>
                    <div class="gelembung2"></div>
                    <div class="gelembung3"></div>
                </div>
            </div>
        </div>
    </section>

<!-- SERVICE -->
    <section id="service" class="service">
        <div class="container-service">
            <div class="service-title">
                <h1>Service</h1>
                <div class="subtitle2">
                    <span>My expertise</span>
                </div>
            </div>

            <?php 
                include 'koneksi.php';
                $services_query = "SELECT * FROM services";
                $query_sql = mysqli_query($koneksi, $services_query);
                $ambildata = mysqli_fetch_all($query_sql, MYSQLI_ASSOC);
            ?>

            <div class="description">
                <p><?= $tampil['bio'] ?>
                </p>
            </div>
            <div class="all-service">
                <div class="paralax">

            <?php 
                foreach ($ambildata as $tampil) {
            ?>

                    <div class="presentation-design">
                        <img src="Image/<?= $tampil['icon_URL'] ?>" alt="Design-icon">
                        <h1><?= $tampil['title_servis'] ?></h1>
                        <div class="description-service">
                            <p><?= $tampil['description'] ?>
                            </p>
                        </div>
                    </div>
            <?php 
                };
            ?>

                </div>
            </div>
        </div>
    </section>

    <!-- PORTFOLIO -->
    <section class="portfolio" id="portfolio">
        <div class="container-portfolio">
            <div class="portfolio-title">
                <h1>Portfolio</h1>
                <div class="subtitle3">
                    <span>My project</span>
                </div>
            </div>

            <?php 
                include 'koneksi.php';
                $portfolio_query = "SELECT * FROM portfolio";
                $query_sql = mysqli_query($koneksi, $portfolio_query);
                $ambildata = mysqli_fetch_all($query_sql, MYSQLI_ASSOC);
            ?>

        <div class="all-portfolio">

            <?php 
                foreach ($ambildata as $tampil) {
            ?>
            
                <div class="port">
                    <img src="Image/<?= $tampil['image_URL'] ?>" alt="Template-Design">
                    <span><?= $tampil['title_portfolio'] ?></span>
                </div>

        <?php 
            };
        ?>
            </div>

        <div class="gelembung-portfolio1"></div>
        <div class="gelembung-portfolio2"></div>
        <div class="gelembung-portfolio3"></div>
        <div class="gelembung-portfolio4"></div>
        </div>
    </section>

    <!-- EXPERIENCE -->
    <section class="experience" id="experience">
        <div class="container-experience">
            <div class="experience-title">
                <h1>Experience</h1>
                <div class="subtitle3">
                    <span>My Journey</span>
                </div>
            </div>

            <!-- Card -->
            <div class="card-experience">

            <?php 
                include 'koneksi.php';
                $experience_query = "SELECT * FROM experience";
                $query_sql = mysqli_query($koneksi, $experience_query);
                $ambildata = mysqli_fetch_all($query_sql, MYSQLI_ASSOC);
            foreach ($ambildata as $tampil) {
            ?>

                <div class="card">
                    <div class="card-left">
                        <h2><?= $tampil['years_experience'] ?></h2>
                        <div class="description-card">
                            <p><?= $tampil['description'] ?></p>
                        </div>
                    </div>
                    <div class="card-right">
                        <img src="Image/<?= $tampil['image_URL'] ?>" alt="Google-Office">
                    </div>
                </div>

                <?php 
                    };
                ?>

            </div>
        </div>
    </section>

    <!-- CONTACT -->
    <section class="contact" id="contact">
        <div class="container-contact">
            <div class="title-contact">
                <h1>Lets Contact Me</h1>
            </div>
            <hr>

            <?php 
            include 'koneksi.php';
            $query = "SELECT * FROM contact";
            $query_sql = mysqli_query($koneksi, $query);
            $tampil = mysqli_fetch_assoc($query_sql);
        ?>

            <div class="bio-contact">
                <!-- Bagian 1 -->
                <div class="bagian1">
                    <img class="logo-contact" src="Image/<?= $tampil['logo'] ?>" alt="Afwinku-Logo">
                    <p><?= $tampil['description'] ?></p>
                    <div class="sosmed-contact">
                        <div class="facebook2">
                            <a href="<?= $tampil['facebook_URL'] ?>">
                                <img src="Image/facebook.png" alt="facebook-logo">
                            </a>
                        </div>
                        <!-- Whats App -->
                        <div class="whatsapp2">
                            <a href="<?= $tampil['whatsapp_URL'] ?>">
                                <img src="Image/whatsapp.png" alt="whatsapp-logo">
                            </a>
                        </div>
                        <!-- Instagram -->
                        <div class="instagram2">
                            <a href="<?= $tampil['instagram_URL'] ?>">
                                <img src="Image/instagram.png" alt="instagram-logo">
                            </a>
                        </div>
                        <!-- Twitter -->
                        <div class="twitter2">
                            <a href="<?= $tampil['twitter_URL'] ?>">
                                <img src="Image/twitter.png" alt="twitter-logo">
                            </a>
                        </div>
                    </div>
                </div>

                <!-- bagian 2 -->
                <div class="bagian2">
                    <ul>
                        <li>
                            <h2>Navigation</h2>
                        </li>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#about">About us</a></li>
                        <li><a href="#service">Service</a></li>
                        <li><a href="#project">Project</a></li>
                        <li><a href="#experience">Experience</a></li>
                    </ul>
                </div>

                <!-- bagian 3 -->
                <div class="bagian3">
                    <ul>
                        <li>
                            <h2>Contact</h2>
                        </li>
                        <li><a href="https://wa.me/<?= $tampil['phone_number'] ?>?text=Halo%20saya%20ingin%20bertanya"><?= $tampil['phone_number'] ?></a>
                        </li>
                        <li><a href="mailto:<?= $tampil['email_name'] ?>"><?= $tampil['email_name'] ?></a></li>
                    </ul>
                </div>

                <!-- bagian 4 -->
                <div class="bagian4">
                    <h2>SendFeedback</h2>
                    <form action="prosesinput.php" method="post">
                        <input type="email" name="email" id="email" placeholder="Masukkan email...">
                        <input type="text" name="feedback" placeholder="Feedback anda" id="feedback">
                        <button type="submit" name="submit" class="submit-button">Send</button>
                    </form>
                </div>
            </div>
            <hr>

            <footer>
                <span>Copyright 2024 | Designed by Afwinku Faesa Rahman</span>
                <span>Let's connect and create together</span>
            </footer>
        </div>
    </section>
    </div>
    <script src="script.js"></script>
</body>

</html>