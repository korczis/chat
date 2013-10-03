var client = new Faye.Client('http://192.168.1.64:3000/faye')

client.subscribe('/messages', function(message) {
	document.getElementById('messages').innerHTML += message.nickname + " : " + message.text + "<br>";
});
