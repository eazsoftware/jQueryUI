<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Sortable - Display as grid</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            #sortable { list-style-type: none; margin: 0; padding: 0; width: 450px; }
            #sortable li { margin: 3px 3px 3px 0; padding: 1px; float: left; width: 100px; height: 90px; font-size: 4em; text-align: center; }
        </style>
        <script>
            $(function() {
                $( "#sortable" ).sortable();
                $( "#sortable" ).disableSelection();
            });
        </script>
    </head>
    <body>

        <ul id="sortable">
            <li class="ui-state-default">1</li>
            <li class="ui-state-default">2</li>
            <li class="ui-state-default">3</li>
            <li class="ui-state-default">4</li>
            <li class="ui-state-default">5</li>
            <li class="ui-state-default">6</li>
            <li class="ui-state-default">7</li>
            <li class="ui-state-default">8</li>
            <li class="ui-state-default">9</li>
            <li class="ui-state-default">10</li>
            <li class="ui-state-default">11</li>
            <li class="ui-state-default">12</li>
        </ul>

    </body>
</html>