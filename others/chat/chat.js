Messages = new Meteor.Collection('messages');

if (Meteor.isClient) {
  Template.entry.events = {
    'keydown #message': function(event){
      if(event.which == 13){
        // Submit the form
        var names =["Big J","Steve","JC"];
        var name = Random.choice(names);
        var message = $('#message')[0];
        var time = Date.now() / 1000;

        if(message.value !== ''){
          Messages.insert({
            name: name,
            message: message.value,
            time: time
          });

          message.value = '';
          $('#sound')[0].play();
        }
      }
    }
  };

  Template.messages.messages = function() {
    return Messages.find({}, { sort: { time: -1 } });
  };
}
