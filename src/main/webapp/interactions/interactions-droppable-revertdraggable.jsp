<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Droppable - Revert draggable position</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            #draggable, #draggable2 { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0; }
            #droppable { width: 150px; height: 150px; padding: 0.5em; float: left; margin: 10px; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable({ revert: "valid" });
                $( "#draggable2" ).draggable({ revert: "invalid" });
 
                $( "#droppable" ).droppable({
                    activeClass: "ui-state-hover",
                    hoverClass: "ui-state-active",
                    drop: function( event, ui ) {
                        $( this )
                        .addClass( "ui-state-highlight" )
                        .find( "p" )
                        .html( "Dropped!" );
                    }
                });
            });
        </script>
    </head>
    <body>

        <div id="draggable" class="ui-widget-content">
            <p>I revert when I'm dropped</p>
        </div>

        <div id="draggable2" class="ui-widget-content">
            <p>I revert when I'm not dropped</p>
        </div>

        <div id="droppable" class="ui-widget-header">
            <p>Drop me here</p>
        </div>

    </body>
</html>