<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Sortable - Include / exclude items</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            #sortable1, #sortable2 { list-style-type: none; margin: 0; padding: 0; zoom: 1; }
            #sortable1 li, #sortable2 li { margin: 0 5px 5px 5px; padding: 3px; width: 90%; }
        </style>
        <script>
            $(function() {
                $( "#sortable1" ).sortable({
                    items: "li:not(.ui-state-disabled)"
                });
 
                $( "#sortable2" ).sortable({
                    cancel: ".ui-state-disabled"
                });
 
                $( "#sortable1 li, #sortable2 li" ).disableSelection();
            });
        </script>
    </head>
    <body>

        <h3 class="docs">Specify which items are sortable:</h3>

        <ul id="sortable1">
            <li class="ui-state-default">Item 1</li>
            <li class="ui-state-default ui-state-disabled">(I'm not sortable or a drop target)</li>
            <li class="ui-state-default ui-state-disabled">(I'm not sortable or a drop target)</li>
            <li class="ui-state-default">Item 4</li>
        </ul>

        <h3 class="docs">Cancel sorting (but keep as drop targets):</h3>

        <ul id="sortable2">
            <li class="ui-state-default">Item 1</li>
            <li class="ui-state-default ui-state-disabled">(I'm not sortable)</li>
            <li class="ui-state-default ui-state-disabled">(I'm not sortable)</li>
            <li class="ui-state-default">Item 4</li>
        </ul>

    </body>
</html>