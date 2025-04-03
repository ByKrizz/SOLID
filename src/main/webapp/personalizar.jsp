<%-- 
    Document   : personalizar
    Created on : 2 abr. 2025, 23:30:37
    Author     : chris
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Personaliza tu Café</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css">
        <script>
            function actualizarVistaPrevia() {
                let bebida = document.getElementById("bebida").value;
                let ingredientes = [];
                document.querySelectorAll('input[name="ingredientes"]:checked').forEach((checkbox) => {
                    ingredientes.push(checkbox.value);
                });

                document.getElementById("preview").innerHTML = `<strong>${bebida}</strong> con ${ingredientes.join(", ") || "ningún ingrediente adicional"}`;
            }
        </script>
        <style>
            body {
                background-color: #1a1a1a;
                color: white;
            }
            .card {
                background-color: #262626;
                border: 1px solid #ff1a1a;
            }
            .btn-custom {
                background-color: #ff1a1a;
                color: white;
            }
            .btn-custom:hover {
                background-color: #b30000;
            }
        </style>
    </head>
    <body>
        <div class="container mt-5">
            <h2 class="text-center text-danger">☕ Personaliza tu Café ☕</h2>
            <p class="text-center">Elige tu bebida base y personalízala con los ingredientes de tu elección.</p>

            <form action="pedido.jsp" method="post" class="mt-4">
                <!-- Selección de Bebida -->
                <div class="form-group">
                    <label><strong>Bebida Base:</strong></label>
                    <select id="bebida" name="bebida" class="form-control" onchange="actualizarVistaPrevia()">
                        <option value="cafe">Café Básico</option>
                        <option value="cafeHelado">Café Helado</option>
                        <option value="Latte">Latte</option>
                        <option value="Capuchino">Capuchino</option>
                        <option value="Mocaccino">Mocaccino</option>
                    </select>
                </div>

                <!-- Ingredientes adicionales -->
                <div class="form-group">
                    <label><strong>Ingredientes adicionales:</strong></label>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card p-3">
                                <h6 class="text-center text-danger">Adiciones Clásicas</h6>
                                <div class="form-check d-flex flex-column">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="Leche" value="true" onchange="actualizarVistaPrevia()"> Leche
                                    </label>
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="Chocolate" value="true" onchange="actualizarVistaPrevia()"> Chocolate
                                    </label>
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="DobleEspresso" value="true" onchange="actualizarVistaPrevia()"> Doble Espresso
                                    </label>
                                </div>
                                <!--                                <div class="card p-3">
                                                                    <input type="checkbox" name="ingredientes" value="Leche" onchange="actualizarVistaPrevia()"> Leche <br>
                                                                    <input type="checkbox" name="ingredientes" value="Chocolate" onchange="actualizarVistaPrevia()"> Chocolate <br>
                                                                    <input type="checkbox" name="ingredientes" value="Doble Espresso" onchange="actualizarVistaPrevia()"> Doble Espresso <br>
                                                                </div>-->
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card p-3">
                                <h6 class="text-center text-danger">Sabores Especiales</h6>
                                <div class="form-check d-flex flex-column">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="Caramelo" value="true" onchange="actualizarVistaPrevia()"> Caramelo
                                    </label>
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="Canela" value="true" onchange="actualizarVistaPrevia()"> Canela
                                    </label>
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="CremaBatida" value="true" onchange="actualizarVistaPrevia()"> Crema Batida
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card p-3">
                                <h6 class="text-center text-danger">Aromas Gourmet</h6>
                                <div class="form-check d-flex flex-column">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="Vainilla" value="true" onchange="actualizarVistaPrevia()"> Vainilla
                                    </label>
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="NuezMoscada" value="true" onchange="actualizarVistaPrevia()"> Nuez Moscada
                                    </label>
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="JarabeAvellana" value="true" onchange="actualizarVistaPrevia()"> Jarabe de Avellana
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Vista previa del pedido -->
                <div class="alert alert-dark text-center mt-3">
                    <h5>Vista Previa:</h5>
                    <p id="preview">Selecciona una bebida y añade ingredientes.</p>
                </div>

                <!-- Botones -->
                <div class="text-center mt-3">
                    <button type="submit" class="btn btn-custom">Hacer Pedido</button>
                    <a href="index.html" class="btn btn-secondary">Volver</a>
                </div>
            </form>
        </div>
    </body>
</html>