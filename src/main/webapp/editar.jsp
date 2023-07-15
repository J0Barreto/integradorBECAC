<%@ page import="ar.com.codoacodo.oop.Articulo" %>
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
        <% 
        Articulo articulo = (Articulo)request.getAttribute("producto");
        %>
        <div class="container formulario">
            <div class="row">
                <div class="col-12">
                    <section>
                        <h1>Editar Articulo id=<%=articulo.getId()%></h1>
                        <br>
                        <form method="post" action="<%=request.getContextPath()%>/EditarController?id=<%=articulo.getId()%>">
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                                <input name="nombre" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50" value="<%=articulo.getTitulo()%>">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">codigo</label>
                                <input name="codigo" type="text" disabled class="form-control" id="exampleFormControlTextarea1" placeholder="Codigo" maxlength="20" value="<%=articulo.getPrecio()%>">
                            </div>
                            <div class="mb-3">
                                //<label for="exampleFormControlTextarea1" class="form-label">Imagen</label>
                                <input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1" placeholder="Imagen" value="<%=articulo.getImagen()%>">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">Precio</label>
                                <input name="precio" type="number" class="form-control" id="precio" placeholder="exampleFormControlTextarea1"  value="<%=articulo.getCodigo()%>">
                            </div>
                            <div class="mb-3">
                                <label for="autor" class="form-label">Autor</label>
                                <input name="autor" type="text" class="form-control" id="autor" placeholder="Autor" maxlength="50" value="<%=articulo.getAutor()%>">
                            </div>
                            <br>
                            <button class="btn btn-primary">
                                Modificar
                            </button>
                        </form>
                    </section>
                </div>
            </div>
    </body>
</html>