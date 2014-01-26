rendering
scriptToSetCheckboxesOn: html
	^ ((html jQuery id: 'selectall') propertyAt: 'checked')
		then: ((html jQuery class: 'selectentry')
					propertyAt: 'checked' put: true)
		else: ((html jQuery class: 'selectentry')
					propertyAt: 'checked' put: false)