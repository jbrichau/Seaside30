scripts
scriptToHandleSelectOn: html
	^ html jQuery this
			on: 'click'
			selector: 'input:checkbox'
			do: ((html jQuery ajax
					callback: [:json |  |passenger state|
						passenger := (html callbacks passengerAt: (json at:'entry')).
						state := json at: 'checked'.
						state
							ifTrue:[ self addSelection: passenger]
							ifFalse:[ self removeSelection: passenger]]
					json: (JSStream on: '{entry: event.target.id, checked: event.target.checked}')) asFunction: #(event))