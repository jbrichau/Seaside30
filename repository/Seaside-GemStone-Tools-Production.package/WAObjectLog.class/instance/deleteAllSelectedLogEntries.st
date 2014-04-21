actions
deleteAllSelectedLogEntries
	selections do:[:anObjectLogEntry |
		self deleteLogEntry: anObjectLogEntry]