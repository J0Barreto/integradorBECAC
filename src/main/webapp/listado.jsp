<%@ page import="java.util.ArrayList" %>
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
      ArrayList<Articulo> listado = (ArrayList<Articulo>)request.getAttribute("listado"); //esto es un array
      %>
      <%
        String error = (String)request.getAttribute("error");
        String success = (String)request.getAttribute("success");
      %>
      <%
        if(error!=null) {
      %>
      <div class="alert alert-danger" role="alert">
        <%=error%>
      </div>
      <%
        }
      %>
      <%
        if(success != null) {
      %>
      <div class="alert alert-success" role="alert">
        <%=success%>
      </div>
      <%
      }
      %>
      <div class="container listado">
          <div class="row">
              <div class="col-12">
                  <section>
                      <h1>Listado de Articulos</h1>
                      <table class="table">
                          <thead>
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">Titulo</th>
                              <th scope="col">Precio</th>
                              <th scope="col">Codigo</th>
                              <th scope="col">Fecha</th>
                              <th scope="col">Acciones</th>
                            </tr>
                          </thead>
                          <tbody>
                              <% 
                              for(Articulo unarticulo : listado) {
                              %>
                                  <tr>
                                      <th scope="row"><%=unarticulo.getId()%></th>
                                      <td><%=unarticulo.getTitulo()%></td>
                                      <td><%=unarticulo.getCodigo()%></td>
                                      <td><%=unarticulo.getPrecio()%></td>
                                      <td><%=unarticulo.getFechaCreacion()%></td>
                                      <td>
                                          <a href="<%=request.getContextPath()%>/DeleteController?id=<%=unarticulo.getId()%>" class="btn btn-danger" tabindex="-1" role="button" aria-disabled="true">
                                              Eliminar
                                          </a>
                                          <a href="<%=request.getContextPath()%>/EditarController?id=<%=unarticulo.getId()%>" 
                                              class="btn btn-warning" tabindex="-1" role="button" aria-disabled="true">
                                            Editar
                                        </a>
                                      </td>
                                  </tr>
                              <% } %>
                          </tbody>
                        </table>
                  </section>
              </div>
          </div>
  </body>
</html>