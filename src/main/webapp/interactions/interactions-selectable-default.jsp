<%-- 
    Document   : interactions-selectable-default
    Created on : 16-Jun-2013, 16:41:06
    Author     : javier
--%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Selectable - Default functionality</title>
        <jsp:include page="../js/jQueryScript.jsp" /> 

        <style>
            #feedback { font-size: 1.4em; }
            #selectable .ui-selecting { background: #FECA40; }
            #selectable .ui-selected { background: #F39814; color: white; }
            #selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
            #selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
        </style>
        <script>
            $(function() {
                $( "#selectable" ).selectable();
            });
        </script>
    </head>
    <body>

        <ol id="selectable">
            <li class="ui-widget-content">Item 1</li>
            <li class="ui-widget-content">Item 2</li>
            <li class="ui-widget-content">Item 3</li>
            <li class="ui-widget-content">Item 4</li>
            <li class="ui-widget-content">Item 5</li>
            <li class="ui-widget-content">Item 6</li>
            <li class="ui-widget-content">Item 7</li>
        </ol>

    </body>
</html>