<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menú de Cafetería</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css">
        <style>
            body {
                background-color: #1a1a1a;
                color: white;
            }
            .card {
                transition: transform 0.3s ease, box-shadow 0.3s ease;
                border: none;
            }
            .card:hover {
                transform: scale(1.05);
                box-shadow: 0px 4px 10px rgba(255, 0, 0, 0.6);
            }
            .btn-custom {
                background-color: #ff1a1a;
                color: white;
            }
            .btn-custom:hover {
                background-color: #b30000;
            }
            /* Ajustar tamaño de imagen */
            .card-img-top {
                width: 100%;
                height: 200px;  /* Define una altura uniforme */
                object-fit: cover; /* Evita distorsión manteniendo la proporción */
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Cafetería Online</a>
        </nav>

        <div class="container mt-5">
            <h1 class="text-center text-danger">☕ Nuestro Menú ☕</h1>
            <p class="text-center">Selecciona tu bebida favorita y personalízala a tu gusto.</p>

            <div class="row">
                <!-- Café Espresso -->
                <div class="col-md-4">
                    <div class="card bg-dark text-white">
                        <img src="${pageContext.request.contextPath}/assets/img/espresso.jpg" class="card-img-top" alt="Café Espresso">
                        <div class="card-body text-center">
                            <h5 class="card-title">Café Espresso</h5>
                            <p class="card-text">Un shot fuerte y aromático para los amantes del café puro.</p>
                            <a href="pedido.jsp?bebida=espresso" class="btn btn-custom">Ordenar</a>
                        </div>
                    </div>
                </div>

                <!-- Capuchino -->
                <div class="col-md-4">
                    <div class="card bg-dark text-white">
                        <img src="assets/img/capuchino.jpeg" class="card-img-top" alt="Capuchino">
                        <div class="card-body text-center">
                            <h5 class="card-title">Capuchino</h5>
                            <p class="card-text">Espresso con leche vaporizada y espuma cremosa.</p>
                            <a href="pedido.jsp?bebida=capuchino" class="btn btn-custom">Ordenar</a>
                        </div>
                    </div>
                </div>

                <!-- Mocaccino -->
                <div class="col-md-4">
                    <div class="card bg-dark text-white">
                        <img src="assets/img/mocaccino.webp" class="card-img-top" alt="Mocaccino">
                        <div class="card-body text-center">
                            <h5 class="card-title">Mocaccino</h5>
                            <p class="card-text">Delicioso café con chocolate y crema batida.</p>
                            <a href="pedido.jsp?bebida=mocaccino" class="btn btn-custom">Ordenar</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card bg-dark text-white">
                        <img src="assets/img/factory.jpg" class="card-img-top" alt="Personalizar Café">
                        <div class="card-body text-center">
                            <h5 class="card-title">Personaliza tu Café</h5>
                            <p class="card-text">Elige tus ingredientes favoritos y crea tu café ideal.</p>
                            <a href="personalizar.jsp" class="btn btn-warning">Personalizar</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-center mt-4">
                <a href="index.html" class="btn btn-secondary">Volver al Inicio</a>
            </div>
        </div>
    </body>
</html>