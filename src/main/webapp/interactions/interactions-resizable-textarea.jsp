<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Resizable - Textarea</title>
        <jsp:include page="../js/jQueryScript.jsp" /> 
        <style>
            .ui-resizable-se {
                bottom: 17px;
            }
        </style>
        <script>
            $(function() {
                $( "#resizable" ).resizable({
                    handles: "se"
                });
            });
        </script>
    </head>
    <body>

        <textarea id="resizable" rows="5" cols="20"></textarea>

    </body>
</html>