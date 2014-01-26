accessing
visibleLogEntries

	^ (filters isEmpty)
		ifTrue:[self objectLogEntries]
		ifFalse:[ 
			|priorities|
			priorities := filters collect:[:l | self labels indexOf: l].
			self objectLogEntries select: [:each | priorities includes: each priority]].