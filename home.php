
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contoh Container</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="style.css">
</head>

<body>
  <div class="container-md bg-info text-white">
    <ul class="nav justify-content-end">
    <li class="nav-item">
      <a class="nav-link active" aria-current="page" href="#">Active</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Daftar Baru</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Pendaftar</a>
    </li>
    <li class="nav-item">
      <a class="nav-link " href="logout.php">Logout</a>
    </li>
  </ul>
  </div>

<div class="container-md">
<section class="jumbotron text-center">
    <img src="img/RAM.PNG"  alt="aku" width="200" class="rounded-circle"/>
    <h1 class="display-4">Hello, world!</h1>
    <p class="lead"><p>redhoam94@gmail.com.</p>
</section>
</div>

<div class="container-md">
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/ppdb3.jpg" class="d-block w-100" alt="akp1">
    </div>
    <div class="carousel-item">
      <img src="img/ppdb2.jpg" class="d-block w-100" alt="akp2">
    </div>
    <div class="carousel-item">
      <img src="img/ppdb1.jpg" class="d-block w-100" alt="akp3">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>

<main class="container-md border">
        <div class="row">
            <div class="col-md-8 py-5">
                <h1>Membuat Layout Satu Kolom</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad reprehenderit libero unde ullam ducimus sunt, saepe fugit animi accusamus accusantium excepturi corrupti aut tenetur? Cumque quasi ratione ipsam facere quod?</p>
            </div>
            <div class="col-md-4 py-5">
                <img class="w-100" src="https://placeimg.com/250/250/nature" alt="gambar alam">
            </div>
        </div>
    </main>

    <footer class="container-md bg-primary text-white">
        <div class="row">
            <div class="col-12 py-4">
                &copy; 2021 Tutorial Bootstrap
            </div>
        </div>
    </footer>
 

</body>
</html>


