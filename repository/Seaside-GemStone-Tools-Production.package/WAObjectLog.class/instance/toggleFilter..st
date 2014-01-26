actions
toggleFilter: aLabel
	(filters includes: aLabel)
		ifTrue:[filters remove: aLabel]
		ifFalse:[filters add: aLabel]