<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Resizable - Constrain resize area</title>
        <jsp:include page="../js/jQueryScript.jsp" />        
        <style>
            #container { width: 300px; height: 300px; }
            #container h3 { text-align: center; margin: 0; margin-bottom: 10px; }
            #resizable { background-position: top left; width: 150px; height: 150px; }
            #resizable, #container { padding: 0.5em; }
        </style>
        <script>
            $(function() {
                $( "#resizable" ).resizable({
                    containment: "#container"
                });
            });
        </script>
    </head>
    <body>

        <div id="container" class="ui-widget-content">
            <h3 class="ui-widget-header">Containment</h3>
            <div id="resizable" class="ui-state-active">
                <h3 class="ui-widget-header">Resizable</h3>
            </div>
        </div>

    </body>
</html>