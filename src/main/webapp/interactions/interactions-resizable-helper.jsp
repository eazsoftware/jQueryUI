<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Resizable - Helper</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            #resizable { width: 150px; height: 150px; padding: 0.5em; }
            #resizable h3 { text-align: center; margin: 0; }
            .ui-resizable-helper { border: 2px dotted #00F; }
        </style>
        <script>
            $(function() {
                $( "#resizable" ).resizable({
                    helper: "ui-resizable-helper"
                });
            });
        </script>
    </head>
    <body>

        <div id="resizable" class="ui-widget-content">
            <h3 class="ui-widget-header">Helper</h3>
        </div>

    </body>
</html>