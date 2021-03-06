*jquery-ui-private
smalltalkForEvent: anArraySpec value: aString
	| stream result |
	stream := aString readStream.
	result := GRSmallDictionary new.
	anArraySpec do: [ :spec |
		(spec first = #number)
			ifTrue: [ result at: spec last put: (stream upTo: $,) greaseInteger ].
		(spec first = #passenger)
			ifTrue: [ result at: spec last put: (self renderContext callbacks passengerAt: (stream upTo: $,)) ].
		(spec first = #position or: [ spec first = #size ])
			ifTrue: [ result at: spec last put: (stream upTo: $,) greaseInteger @ (stream upTo: $,) greaseInteger ] ].
	^ result