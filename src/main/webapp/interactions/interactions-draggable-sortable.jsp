<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery UI Draggable + Sortable</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            ul { list-style-type: none; margin: 0; padding: 0; margin-bottom: 10px; }
            li { margin: 5px; padding: 5px; width: 150px; }
        </style>
        <script>
            $(function() {
                $( "#sortable" ).sortable({
                    revert: true
                });
                $( "#draggable" ).draggable({
                    connectToSortable: "#sortable",
                    helper: "clone",
                    revert: "invalid"
                });
                $( "ul, li" ).disableSelection();
            });
        </script>
    </head>
    <body>

        <ul>
            <li id="draggable" class="ui-state-highlight">Drag me down</li>
        </ul>

        <ul id="sortable">
            <li class="ui-state-default">Item 1</li>
            <li class="ui-state-default">Item 2</li>
            <li class="ui-state-default">Item 3</li>
            <li class="ui-state-default">Item 4</li>
            <li class="ui-state-default">Item 5</li>
        </ul>

    </body>
</html>