<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Draggable - Delay start</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <link rel="stylesheet" href="../css/resources/demos/style.css" />        
        <style>
            #draggable, #draggable2 { width: 120px; height: 120px; padding: 0.5em; float: left; margin: 0 10px 10px 0; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable({ distance: 20 });
                $( "#draggable2" ).draggable({ delay: 1000 });
                $( ".ui-draggable" ).disableSelection();
            });
        </script>
    </head>
    <body>

        <div id="draggable" class="ui-widget-content">
            <p>Only if you drag me by 20 pixels, the dragging will start</p>
        </div>

        <div id="draggable2" class="ui-widget-content">
            <p>Regardless of the distance, you have to drag and wait for 1000ms before dragging starts</p>
        </div>


    </body>
</html>