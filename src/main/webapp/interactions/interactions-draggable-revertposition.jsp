<%-- 
    Document   : interactions-draggable-revertposition
    Created on : 16-Jun-2013, 14:23:42
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery UI Draggable - Revert position</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            #draggable, #draggable2 { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 0 10px 10px 0; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable({ revert: true });
                $( "#draggable2" ).draggable({ revert: true, helper: "clone" });
            });
        </script>
    </head>
    <body>

        <div id="draggable" class="ui-widget-content">
            <p>Revert the original</p>
        </div>

        <div id="draggable2" class="ui-widget-content">
            <p>Revert the helper</p>
        </div>


    </body>
</html>

