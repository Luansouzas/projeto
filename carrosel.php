 <?php
      include "conexao.php";
      $id = $_GET['id'];
      $stmt = $pdo->prepare('SELECT * FROM produtos where id');
      $stmt->bindParam(1, $id, PDO::PARAM_INT);
      $stmt->execute();
      if ($alvos = $stmt->fetchAll()){
              
      ?>
        <div class="col">
		<div id="carouselExampleIndicators" class="carousel slide mt-2 mb-2" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class=""></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1" class=""></li>
            </ol>
            <div class="carousel-inner active">
                <div class="carousel-item active bg-primary rounded  text-center p-3">
                <div class="row justify-content-center">
                
                <a class="mb-3" href="item.php?nome=<?php echo $alvos[18]['nome']?>"><img class="img-fluid imgcar mt-2" alt="First slide" src="<?php echo "img/".$alvos[18]['imagem'];?>"></a>
               
                <div class="col-12 col-sm-4 col-md-4 col-lg-4 col-xl-2 mt-3">
                <a class="text-light"href="item.php?nome=<?php echo $alvos[18]['nome']?>"><figcaption class=""><h1><u><?php echo $alvos[18]['nome']?></u></h1></figcaption></a>
                <h5 class=" text-light"><?php echo "Preço: R$ ".$alvos[18]['preco'];  ?></h5>
                <p class="text-light font-weight-bold " style="font-size: 20px;"><?php echo $alvos[18]['descricao'];?></p>
                 </div>
             </div>
                </div>
                <div class="carousel-item">
                <div class="bg-primary rounded  text-center p-3">
                <div class="row justify-content-center">
                
                <a class="mb-3" href="item.php?nome=<?php echo $alvos[1]['nome']?>"><img class="img-fluid imgcar mt-2 " alt="Secound slide" src="<?php echo "img/".$alvos[1]['imagem'];?>"></a>
               
                <div class="col-12 col-sm-5 col-md-5 col-lg-4 col-xl-3 mt-3">
                <a class="text-light"href="item.php?nome=<?php echo $alvos[1]['nome']?>"><figcaption class=""><h1><u><?php echo $alvos[1]['nome']?></u></h1></figcaption></a>
                <h5 class=" text-light"><?php echo "Preço: R$ ".$alvos[1]['preco'];  ?></h5>
                <p class=" text-light font-weight-bold " style="font-size: 20px;"><?php echo $alvos[1]['descricao'];?></p>
                 </div>
             </div>
                </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only font-dark">Next</span>
            </a>
        </div>
        </div>
        <?php
        }
        ?> 
        
