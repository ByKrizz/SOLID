<%-- 
    Document   : pedido
    Created on : 2 abr. 2025, 23:02:06
    Author     : chris
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%@page import="s.Bebida"%>
<%@page import="d.CrearBebida"%>

<%
    String bebidaSeleccionada = request.getParameter("bebida");
    boolean conLeche = "true".equals(request.getParameter("Leche"));
    boolean conChocolate = "true".equals(request.getParameter("Chocolate"));
    boolean conCanela = "true".equals(request.getParameter("Canela"));
    boolean conCaramelo = "true".equals(request.getParameter("Caramelo"));
    boolean conCremaBatida = "true".equals(request.getParameter("CremaBatida"));
    boolean conDobleExpresso = "true".equals(request.getParameter("DobleEspresso"));
    boolean conJarabeAvellana = "true".equals(request.getParameter("JarabeAvellana"));
    boolean conNuezMoscada = "true".equals(request.getParameter("NuezMoscada"));
    boolean conVainilla = "true".equals(request.getParameter("Vainilla"));

    CrearBebida factory = new CrearBebida();
    Bebida bebida = factory.crearBebida(conLeche, conChocolate, conCanela, conCaramelo, conCremaBatida, conDobleExpresso, conJarabeAvellana, conNuezMoscada, conVainilla);
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pedido Confirmado</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body {
            background: url('assets/img/cafe.webp') no-repeat center center fixed;
            background-size: cover;
            color: white;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card {
            background-color: rgba(0, 0, 0, 0.85);
            color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.7);
            text-align: center;
            max-width: 500px;
        }
        .btn-custom {
            background-color: #ff4500;
            border: none;
            font-size: 18px;
            padding: 12px 25px;
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
            display: inline-block;
        }
        .btn-custom:hover {
            background-color: #b33000;
            transform: scale(1.05);
        }
        .icon {
            font-size: 50px;
            color: #ff4500;
        }
    </style>
</head>
<body>
    <div class="card">
        <i class="fas fa-mug-hot icon"></i>
        <h2 class="mb-4">¡Pedido Confirmado!</h2>
        <p><strong>Bebida:</strong> <%= bebida.getDescripcion() %></p>
        <p><strong>Precio Total:</strong> $<%= String.format("%.2f", bebida.calcularCosto()) %></p>
        <a href="index.jsp" class="btn btn-custom mt-3"><i class="fas fa-home"></i> Volver al inicio</a>
    </div>
</body>
</html>