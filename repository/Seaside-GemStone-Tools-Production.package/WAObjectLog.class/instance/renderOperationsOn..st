rendering
renderOperationsOn: html

	html unorderedList
		class: 'nav navbar-nav navbar-right';
		with:[
			html listItem
				class:'dropdown';
				with: [
					html anchor
						attributeAt: 'data-toggle' put:'dropdown';
						class: 'dropdown-toggle';
						with: [
							html text: 'Operations'.
							(html tag: 'b')
								class: 'caret'].
					html unorderedList
						class: 'dropdown-menu pull-right';
						with: [
							html listItem
								class:'dropdown-header';
								with: 'With all selected do...'.
							html listItem: [html anchor
												callback:[ self deleteAllSelectedLogEntries ];
												with: 'Remove']]]].