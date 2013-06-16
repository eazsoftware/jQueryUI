<%-- 
    Document   : interactions-draggable
    Created on : 02-May-2013, 22:00:11
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Draggable - Default functionality</title>
        <jsp:include page="../js/jQueryScript.jsp" />   
        <style>
            #draggable { width: 150px; height: 150px; padding: 0.5em; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable();
            });
        </script>
    </head>
    <body>

        <div id="draggable" class="ui-widget-content">
            <p>Drag me around</p>
        </div>


    </body>
</html>    