<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Resizable - Delay start</title>
        <jsp:include page="../js/jQueryScript.jsp" />        
        <style>
            #resizable, #resizable2 { width: 150px; height: 150px; padding: 0.5em; }
            #resizable h3, #resizable2 h3 { text-align: center; margin: 0; }
        </style>
        <script>
            $(function() {
                $( "#resizable" ).resizable({
                    delay: 1000
                });
 
                $( "#resizable2" ).resizable({
                    distance: 40
                });
            });
        </script>
    </head>
    <body>

        <h3 class="docs">Time delay (ms):</h3>
        <div id="resizable" class="ui-widget-content">
            <h3 class="ui-widget-header">Time</h3>
        </div>

        <h3 class="docs">Distance delay (px):</h3>
        <div id="resizable2" class="ui-widget-content">
            <h3 class="ui-widget-header">Distance</h3>
        </div>

    </body>
</html>