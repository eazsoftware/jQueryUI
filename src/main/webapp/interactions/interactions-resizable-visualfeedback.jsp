<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Resizable - Visual feedback</title>
        <jsp:include page="../js/jQueryScript.jsp" /> 
        <style>
            #resizable { width: 150px; height: 150px; padding: 0.5em; }
            #resizable h3 { text-align: center; margin: 0; }
            .ui-resizable-ghost { border: 1px dotted gray; }
        </style>
        <script>
            $(function() {
                $( "#resizable" ).resizable({
                    ghost: true
                });
            });
        </script>
    </head>
    <body>

        <div id="resizable" class="ui-widget-content">
            <h3 class="ui-widget-header">Ghost</h3>
        </div>

    </body>
</html>