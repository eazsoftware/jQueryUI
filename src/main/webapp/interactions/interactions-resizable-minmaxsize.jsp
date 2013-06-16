<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Resizable - Maximum / minimum size</title>
        <jsp:include page="../js/jQueryScript.jsp" />        
        <style>
            #resizable { width: 200px; height: 150px; padding: 5px; }
            #resizable h3 { text-align: center; margin: 0; }
        </style>
        <script>
            $(function() {
                $( "#resizable" ).resizable({
                    maxHeight: 250,
                    maxWidth: 350,
                    minHeight: 150,
                    minWidth: 200
                });
            });
        </script>
    </head>
    <body>

        <div id="resizable" class="ui-widget-content">
            <h3 class="ui-widget-header">Resize larger / smaller</h3>
        </div>

    </body>
</html>