<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Sortable - Delay start</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
        <style>
            #sortable1, #sortable2 { list-style-type: none; margin: 0; padding: 0; margin-bottom: 15px;zoom: 1; }
            #sortable1 li, #sortable2 li { margin: 0 5px 5px 5px; padding: 5px; font-size: 1.2em; width: 95%; }
        </style>
        <script>
            $(function() {
                $( "#sortable1" ).sortable({
                    delay: 300
                });
 
                $( "#sortable2" ).sortable({
                    distance: 15
                });
 
                $( "li" ).disableSelection();
            });
        </script>
    </head>
    <body>

        <h3 class="docs">Time delay of 300ms:</h3>

        <ul id="sortable1">
            <li class="ui-state-default">Item 1</li>
            <li class="ui-state-default">Item 2</li>
            <li class="ui-state-default">Item 3</li>
            <li class="ui-state-default">Item 4</li>
        </ul>

        <h3 class="docs">Distance delay of 15px:</h3>

        <ul id="sortable2">
            <li class="ui-state-default">Item 1</li>
            <li class="ui-state-default">Item 2</li>
            <li class="ui-state-default">Item 3</li>
            <li class="ui-state-default">Item 4</li>
        </ul>

    </body>
</html>