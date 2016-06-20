{{ content() }}

<h1>Mis Mascotas</h1>
{{ link_to('cuenta/registrarMascota', 'Nueva mascota', 'class': 'btn btn-primary') }}
<br>
<br>

{% for mascota in mascotas %}
    <div class="row">
        <div class='col-md-3 col-md-offset-1'>
                <div class='list-group gallery'>
                    <a class="thumbnail fancybox" rel="ligthbox" href="#">
                        {{ elements.getImgCloud(mascota.urlFoto, ['class': 'img-responsive']) }}
                        <div class='text-right'>
                            <small class='text-muted'>{{ mascota.nombre }}</small>
                        </div> <!-- text-right / end -->
                    </a>
                    {{ link_to('cuenta/editarMascota', 'Editar mascota', 'class': 'btn btn-primary') }}
                </div> 
        </div>
        <div class="col-md-5">

            <table class="table table-bordered table-striped" style="margin-top: 20px;">
                <thead>
                    <tr>
                        <th>Característica</th>
                        <th>Descripción</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Raza</td>
                        <td>{{ mascota.raza }}</td>
                    </tr>
                    <tr>
                        <td>Sexo</td>
                        <td>{{ mascota.sexo }}</td>
                    </tr>
                    <tr>
                        <td>Peso</td>
                        <td>{{ mascota.peso }}</td>
                    </tr>
                </tbody>
            </table><br>
                    <button class="btn btn-primary">Dar en adopcion</button><br><br>
                    <button class="btn btn-primary">Ver adoptantes</button>
        </div><!-- col-6 / end -->
    </div><!-- row / end-->
    <hr/>
{% endfor %}