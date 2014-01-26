rendering
updateRoot: aRoot
	aRoot beHtml5.
	super updateRoot: aRoot.
	aRoot link 
		relationship:'stylesheet';
		url: '//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css'.
	aRoot script
		url: 'http://code.jquery.com/jquery-1.10.1.min.js'.
	aRoot script
		url: '//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js'.
	aRoot bodyAttributes addStyle: 'padding-top:50px'.