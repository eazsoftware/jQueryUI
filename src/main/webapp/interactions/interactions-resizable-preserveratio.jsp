<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Resizable - Preserve aspect ratio</title>
        <jsp:include page="../js/jQueryScript.jsp" />        
        <style>
            #resizable { width: 160px; height: 90px; padding: 0.5em; }
            #resizable h3 { text-align: center; margin: 0; }
        </style>
        <script>
            $(function() {
                $( "#resizable" ).resizable({
                    aspectRatio: 16 / 9
                });
            });
        </script>
    </head>
    <body>

        <div id="resizable" class="ui-widget-content">
            <h3 class="ui-widget-header">Preserve aspect ratio</h3>
        </div>

    </body>
</html>