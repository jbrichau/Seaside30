rendering
renderHeaderOn: html

	html div
		class: 'navbar navbar-default navbar-fixed-top';
		with: [
			html div 
				class: 'container';
				with: [
					html div
						class: 'navbar-header';
						with:[
							html anchor
								class:'navbar-brand';
								callback:[self clearFilters];
								with: [
									html text: 'Object Log '.
									html span
										class:'badge';
										with: self objectLogEntries size printString]].
					html div
						class: 'navbar-collapse';
						with: [
							self renderSelectorOn: html.
							self renderOperationsOn: html]]].