<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Droppable - Visual feedback</title>
        <jsp:include page="../js/jQueryScript.jsp" />        


        <style>
            #draggable, #draggable2 { width: 90px; height: 90px; padding: 0.5em; float: left; margin: 10px 10px 10px 0; }
            #droppable, #droppable2 { width: 120px; height: 120px; padding: 0.5em; float: left; margin: 10px; }
            h3 { clear: left; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable();
                $( "#droppable" ).droppable({
                    hoverClass: "ui-state-active",
                    drop: function( event, ui ) {
                        $( this )
                        .addClass( "ui-state-highlight" )
                        .find( "p" )
                        .html( "Dropped!" );
                    }
                });
 
                $( "#draggable2" ).draggable();
                $( "#droppable2" ).droppable({
                    accept: "#draggable2",
                    activeClass: "ui-state-hover",
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

        <h3>Feedback on hover:</h3>

        <div id="draggable" class="ui-widget-content">
            <p>Drag me to my target</p>
        </div>

        <div id="droppable" class="ui-widget-header">
            <p>Drop here</p>
        </div>

        <h3>Feedback on activating draggable:</h3>

        <div id="draggable2" class="ui-widget-content">
            <p>Drag me to my target</p>
        </div>

        <div id="droppable2" class="ui-widget-header">
            <p>Drop here</p>
        </div>


    </body>
</html>