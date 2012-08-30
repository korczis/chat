var client = new Faye.Client('http://0.0.0.0:3000/faye')

client.subscribe('/messages', function(message) {
	document.getElementById('messages').innerHTML += message.nickname + " : " + message.text + "<br>";
});
