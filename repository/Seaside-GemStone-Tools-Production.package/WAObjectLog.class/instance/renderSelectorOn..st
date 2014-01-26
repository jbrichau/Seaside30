rendering
renderSelectorOn: html
	|summary|
	summary := self objectLogSummary.
	html unorderedList
		class: 'nav nav-pills navbar-left';
		style: 'padding-top: 5px';
		with: [
			self labels doWithIndex:[:label :index |
				html listItem
					class: 'active' if: (self isActiveFilter: label);
					with: [
						html anchor
							callback:[self toggleFilter: label];
							with: [
								html span 
									class: 'badge pull-right';
									with: (summary at: index) value greaseString.
								html text: label]]]]