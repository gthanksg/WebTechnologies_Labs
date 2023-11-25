<%@ page contentType="text/html;charset=UTF-16" %>
<html>
<head>
    <link rel="stylesheet" href="../css/def.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.17.11/dist/css/uikit.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.17.11/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.17.11/dist/js/uikit-icons.min.js"></script>
    <title>Motel "Teploe Mesto"</title>
    <link rel="icon" type="image/x-icon" href="../res/logo.png">
    <meta charset="UTF-16">
</head>
<body>
<nav class="uk-navbar-container">
    <div class="uk-container">
        <div uk-navbar>
            <div class="uk-navbar-center">
                <div class="uk-navbar-center-left">
                    <ul class="uk-navbar-nav">
                        <li><a href="#">My orders</a></li>
                    </ul>
                </div>
                <a class="uk-navbar-item uk-logo" href="${pageContext.request.contextPath}/">Teploe Mesto</a>
                <div class="uk-navbar-center-right">
                    <ul class="uk-navbar-nav">
                        <li><a href="#">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>