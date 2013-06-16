<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery UI Draggable - Visual feedback</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            #draggable, #draggable2, #draggable3, #set div { width: 90px; height: 90px; padding: 0.5em; float: left; margin: 0 10px 10px 0; }
            #draggable, #draggable2, #draggable3 { margin-bottom:20px; }
            #set { clear:both; float:left; width: 368px; height: 120px; }
            p { clear:both; margin:0; padding:1em 0; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable({ helper: "original" });
                $( "#draggable2" ).draggable({ opacity: 0.7, helper: "clone" });
                $( "#draggable3" ).draggable({
                    cursor: "move",
                    cursorAt: { top: -12, left: -20 },
                    helper: function( event ) {
                        return $( "<div class='ui-widget-header'>I'm a custom helper</div>" );
                    }
                });
                $( "#set div" ).draggable({ stack: "#set div" });
            });
        </script>
    </head>
    <body>

        <h3 class="docs">With helpers:</h3>

        <div id="draggable" class="ui-widget-content">
            <p>Original</p>
        </div>

        <div id="draggable2" class="ui-widget-content">
            <p>Semi-transparent clone</p>
        </div>

        <div id="draggable3" class="ui-widget-content">
            <p>Custom helper (in combination with cursorAt)</p>
        </div>

        <h3 class="docs">Stacked:</h3>
        <div id="set">
            <div class="ui-widget-content">
                <p>We are draggables..</p>
            </div>

            <div class="ui-widget-content">
                <p>..whose z-indexes are controlled automatically..</p>
            </div>

            <div class="ui-widget-content">
                <p>..with the stack option.</p>
            </div>
        </div>

    </body>
</html>