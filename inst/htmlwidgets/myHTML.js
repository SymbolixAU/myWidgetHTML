HTMLWidgets.widget({

  name: 'myHTML',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        //el.innerText = x.message;

        //document.getElementById("my_script").innerHTML = "<p>test_html</P>";

        //$('#my_script').html('<p>test_html</p>');
/*
				var script = document.createElement('script');
        script.type = 'text/javascript';

        if (style.styleSheet)
          style.styleSheet.cssText = x.css;
        else
          style.appendChild(document.createTextNode(x.css));

        document.getElementsByTagName("head").appendChild(style);
*/
				el.innerHTML = "<p>" + x.message + "</p>"

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
