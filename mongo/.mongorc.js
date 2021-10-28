host = db.serverStatus().host;
cmdCount = 1;

prompt = function() {
	return (cmdCount++) + ">" + db+"@"+host+"# ";         
}
