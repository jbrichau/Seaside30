actions
removeSelection: anEntry
	selections remove: anEntry ifAbsent:["failsafe"]