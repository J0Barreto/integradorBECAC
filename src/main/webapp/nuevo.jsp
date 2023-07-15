<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRUD Articulos - CAC</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/styles.css">
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <div class="container formulario">
            <div class="row">
                <div class="col-12">
                    <section>
                        <h1>Alta Articulo</h1>
                        <br>
                        <br>
                        <form method="post" action="<%=request.getContextPath()%>/AltaArticuloController">
                            <div class="mb-3">
                                <!-- <label for="exampleFormControlInput1" class="form-label">Nombre</label> -->
                                <input name="nombre" type="text" class="form-control" id="nombre" placeholder="Nombre" maxlength="50">
                            </div>
                            <div class="mb-3">
                                <!-- <label for="exampleFormControlTextarea1" class="form-label">Precio</label> -->
                                <input name="precio" type="number" class="form-control" id="precio" placeholder="Precio">
                            </div>
                            <div class="mb-3">
                                <!-- <label for="exampleFormControlTextarea1" class="form-label">Imagen</label> -->
                                <input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1" placeholder="Imagen">
                            </div>
                            <div class="mb-3">
                                <!-- <label for="exampleFormControlTextarea1" class="form-label">Codigo</label> -->
                                <input name="codigo" type="text" class="form-control" id="codigo" placeholder="Codigo" maxlength="7">
                            </div>
                            <div class="mb-3">
                                <!-- <label for="autor" class="form-label">Autor</label> -->
                                <input name="autor" type="text" class="form-control" id="autor" placeholder="Autor" maxlength="50">
                            </div>
                            <br>
                            <br>
                            <button class="btn btn-primary">
                                Dar de alta
                            </button>
                        </form>
                    </section>
                </div>
            </div>
    </body>
</html>