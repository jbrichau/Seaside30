rendering
renderInspect: entry on: html
	html anchor
		callback:[self call: (WAObjectLogInspector on: entry)];
		with:[
			html span
			class: 'glyphicon glyphicon-search']