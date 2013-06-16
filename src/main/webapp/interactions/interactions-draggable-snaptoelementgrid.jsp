<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>jQuery UI Draggable - Snap to element or grid</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
            .draggable { width: 90px; height: 80px; padding: 5px; float: left; margin: 0 10px 10px 0; font-size: .9em; }
            .ui-widget-header p, .ui-widget-content p { margin: 0; }
            #snaptarget { height: 140px; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable({ snap: true });
                $( "#draggable2" ).draggable({ snap: ".ui-widget-header" });
                $( "#draggable3" ).draggable({ snap: ".ui-widget-header", snapMode: "outer" });
                $( "#draggable4" ).draggable({ grid: [ 20,20 ] });
                $( "#draggable5" ).draggable({ grid: [ 80, 80 ] });
            });
        </script>
    </head>
    <body>

        <div id="snaptarget" class="ui-widget-header">
            <p>I'm a snap target</p>
        </div>

        <br style="clear: both;" />

        <div id="draggable" class="draggable ui-widget-content">
            <p>Default (snap: true), snaps to all other draggable elements</p>
        </div>

        <div id="draggable2" class="draggable ui-widget-content">
            <p>I only snap to the big box</p>
        </div>

        <div id="draggable3" class="draggable ui-widget-content">
            <p>I only snap to the outer edges of the big box</p>
        </div>

        <div id="draggable4" class="draggable ui-widget-content">
            <p>I snap to a 20 x 20 grid</p>
        </div>

        <div id="draggable5" class="draggable ui-widget-content">
            <p>I snap to a 80 x 80 grid</p>
        </div>

    </body>
</html>