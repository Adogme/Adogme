<div class="container">
    <header>
        <nav class="navbar navbar-default navbar-fixed-top cabecera">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-1">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!--<a href="#" class="navbar-brand" id="cabecera-logo">Adogme</a>-->
                    <?php echo $this->tag->linkTo(array('index', 'Adogme', 'class' => 'navbar-brand', 'id' => 'cabcera-logo')); ?>
                </div>

                <?php echo $this->elements->getMenu(); ?>
            </div>
        </nav>
    </header>
</div>

<div class="container">
    <?php echo $this->getContent(); ?>
</div>