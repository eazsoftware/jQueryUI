<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Draggable - Delay events</title>
        <jsp:include page="../js/jQueryScript.jsp" />
        <style>
          #draggable, #draggable2 { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 0 10px 10px 0; }
          #draggable p { cursor: move; }
        </style>
        <script>
            $(function() {
                $( "#draggable" ).draggable({ handle: "p" });
                $( "#draggable2" ).draggable({ cancel: "p.ui-widget-header" });
                $( "div, p" ).disableSelection();
            });
        </script>
    </head>
        <body>
            <p>
                Allow dragging only when the cursor is over a specific part of the draggable. Use the handle option to specify the jQuery selector of an element (or group of elements) used to drag the object.
                Or prevent dragging when the cursor is over a specific element (or group of elements) within the draggable. Use the cancel option to specify a jQuery selector over which to "cancel" draggable functionality.                
            </p>
            
            <div id="draggable" class="ui-widget-content">
                <p class="ui-widget-header">I can be dragged only by this handle</p>
            </div>
            
            <div id="draggable2" class="ui-widget-content">
                <p>You can drag me around…</p>
                <p class="ui-widget-header">…but you can't drag me by this handle.</p>
            </div>    
    </body>
</html>