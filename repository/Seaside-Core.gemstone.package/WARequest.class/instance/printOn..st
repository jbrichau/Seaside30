printing
printOn: aStream 
	super printOn: aStream.
	aStream
		nextPutAll: ' method: ';
		nextPutAll: self method greaseString.
	aStream
		nextPutAll: ' uri: ';
		nextPutAll: self uri greaseString.
	aStream nextPutAll: ' version: '.
	self version printOn: aStream