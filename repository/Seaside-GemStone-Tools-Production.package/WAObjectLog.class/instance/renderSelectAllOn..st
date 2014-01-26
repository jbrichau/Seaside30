rendering
renderSelectAllOn: html
	html checkbox
		id: 'selectall';
		onChange: (html jQuery ajax
						serializeThisWithHidden;
						onComplete: (self scriptToSetCheckboxesOn: html));
		onTrue:[self selectAllVisible]
		onFalse:[self deselectAll]