<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Draggable - Cursor style</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <link rel="stylesheet" href="../css/resources/demos/style.css" />        
        <style>
            #draggable, #draggable2, #draggable3 { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 0 10px 10px 0; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable({ cursor: "move", cursorAt: { top: 56, left: 56 } });
                $( "#draggable2" ).draggable({ cursor: "crosshair", cursorAt: { top: -5, left: -5 } });
                $( "#draggable3" ).draggable({ cursorAt: { bottom: 0 } });
            });
        </script>
    </head>
    <body>

        <div id="draggable" class="ui-widget-content ui-draggable">
            <p>I will always stick to the center (relative to the mouse)</p>
        </div>

        <div id="draggable2" class="ui-widget-content">
            <p>My cursor is at left -5 and top -5</p>
        </div>

        <div id="draggable3" class="ui-widget-content">
            <p>My cursor position is only controlled for the 'bottom' value</p>
        </div>


    </body>
</html>    