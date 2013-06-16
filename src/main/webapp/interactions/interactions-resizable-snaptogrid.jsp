<%-- 
    Document   : interactions-resizable-snaptogrid
    Created on : 16-Jun-2013, 16:25:25
    Author     : javier
--%>

<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Resizable - Snap to grid</title>
        <jsp:include page="../js/jQueryScript.jsp" />   
        <style>
            #resizable { width: 150px; height: 150px; padding: 0.5em; }
            #resizable h3 { text-align: center; margin: 0; }
        </style>
        <script>
            $(function() {
                $( "#resizable" ).resizable({
                    grid: 50
                });
            });
        </script>
    </head>
    <body>

        <div id="resizable" class="ui-widget-content">
            <h3 class="ui-widget-header">Grid</h3>
        </div>

    </body>
</html>