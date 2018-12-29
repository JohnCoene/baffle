HTMLWidgets.widget({

  name: 'baffle',

  type: 'output',

  factory: function(el, width, height) {

    var tgt, b;

    return {

      renderValue: function(x) {

        tgt = '#' + el.id;
        if(x.hasOwnProperty('id'))
          tgt = x.id;

        if(x.hasOwnProperty('char'))
          el.innerHTML = x.char;

        b = baffle(tgt);

        if(x.hasOwnProperty('opts'))
          b.set(x.opts);

        if(x.hasOwnProperty('start'))
          setTimeout(function(){ b.start(); }, x.startDelay);

        if(x.hasOwnProperty('once'))
          setTimeout(function(){ b.once(); }, x.onceDelay);

        if(x.hasOwnProperty('reveal'))
          setTimeout(function(){ b.reveal(); }, x.revealDelay);

      },

      resize: function(width, height) {

      },
      getBaffle: function(){
        return b;
      }

    };
  }
});

function get_baffle(id){

  var htmlWidgetsObj = HTMLWidgets.find("#" + id);

  var baffle;

  if (typeof htmlWidgetsObj != 'undefined') {
    baffle = htmlWidgetsObj.getBaffle();
  }

  return(baffle);
}

if (HTMLWidgets.shinyMode) {

  Shiny.addCustomMessageHandler('b_once',
    function(data) {
      var b = get_baffle(data.id);
      if (typeof b != 'undefined') {
        setTimeout(function(){ b.once(); }, data.delay);
      }
  });

  Shiny.addCustomMessageHandler('b_start',
    function(data) {
      var b = get_baffle(data.id);
      if (typeof b != 'undefined') {
        setTimeout(function(){ b.start(); }, data.delay);
      }
  });

  Shiny.addCustomMessageHandler('b_stop',
    function(data) {
      var b = get_baffle(data.id);
      if (typeof b != 'undefined') {
        setTimeout(function(){ b.stop(); }, data.delay);
      }
  });

  Shiny.addCustomMessageHandler('b_reveal',
    function(data) {
      var b = get_baffle(data.id);
      if (typeof b != 'undefined') {
        setTimeout(function(){ b.reveal(); }, data.delay);
      }
  });

}
