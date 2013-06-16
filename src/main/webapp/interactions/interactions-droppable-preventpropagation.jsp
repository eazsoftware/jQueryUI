<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Droppable - Prevent propagation</title>
        <jsp:include page="../js/jQueryScript.jsp" />        
        <style>
            #draggable { width: 100px; height: 40px; padding: 0.5em; float: left; margin: 10px 10px 10px 0; }
            #droppable, #droppable2 { width: 230px; height: 120px; padding: 0.5em; float: left; margin: 10px; }
            #droppable-inner, #droppable2-inner { width: 170px; height: 60px; padding: 0.5em; float: left; margin: 10px; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable();
 
                $( "#droppable, #droppable-inner" ).droppable({
                    activeClass: "ui-state-hover",
                    hoverClass: "ui-state-active",
                    drop: function( event, ui ) {
                        $( this )
                        .addClass( "ui-state-highlight" )
                        .find( "> p" )
                        .html( "Dropped!" );
                        return false;
                    }
                });
 
                $( "#droppable2, #droppable2-inner" ).droppable({
                    greedy: true,
                    activeClass: "ui-state-hover",
                    hoverClass: "ui-state-active",
                    drop: function( event, ui ) {
                        $( this )
                        .addClass( "ui-state-highlight" )
                        .find( "> p" )
                        .html( "Dropped!" );
                    }
                });
            });
        </script>
    </head>
    <body>

        <div id="draggable" class="ui-widget-content">
            <p>Drag me to my target</p>
        </div>

        <div id="droppable" class="ui-widget-header">
            <p>Outer droppable</p>
            <div id="droppable-inner" class="ui-widget-header">
                <p>Inner droppable (not greedy)</p>
            </div>
        </div>

        <div id="droppable2" class="ui-widget-header">
            <p>Outer droppable</p>
            <div id="droppable2-inner" class="ui-widget-header">
                <p>Inner droppable (greedy)</p>
            </div>
        </div>

    </body>
</html>