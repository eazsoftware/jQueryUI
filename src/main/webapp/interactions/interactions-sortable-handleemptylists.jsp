<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Sortable - Handle empty lists</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            #sortable1, #sortable2, #sortable3 { list-style-type: none; margin: 0; padding: 0; float: left; margin-right: 10px; background: #eee; padding: 5px; width: 143px;}
            #sortable1 li, #sortable2 li, #sortable3 li { margin: 5px; padding: 5px; font-size: 1.2em; width: 120px; }
        </style>
        <script>
            $(function() {
                $( "ul.droptrue" ).sortable({
                    connectWith: "ul"
                });
 
                $( "ul.dropfalse" ).sortable({
                    connectWith: "ul",
                    dropOnEmpty: false
                });
 
                $( "#sortable1, #sortable2, #sortable3" ).disableSelection();
            });
        </script>
    </head>
    <body>

        <ul id="sortable1" class="droptrue">
            <li class="ui-state-default">Can be dropped..</li>
            <li class="ui-state-default">..on an empty list</li>
            <li class="ui-state-default">Item 3</li>
            <li class="ui-state-default">Item 4</li>
            <li class="ui-state-default">Item 5</li>
        </ul>

        <ul id="sortable2" class="dropfalse">
            <li class="ui-state-highlight">Cannot be dropped..</li>
            <li class="ui-state-highlight">..on an empty list</li>
            <li class="ui-state-highlight">Item 3</li>
            <li class="ui-state-highlight">Item 4</li>
            <li class="ui-state-highlight">Item 5</li>
        </ul>

        <ul id="sortable3" class="droptrue">
        </ul>

        <br style="clear: both;" />

    </body>
</html>