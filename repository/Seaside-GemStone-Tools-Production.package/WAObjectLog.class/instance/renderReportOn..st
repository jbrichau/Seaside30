rendering
renderReportOn: html
	|rows|
	
	rows := self visibleLogEntries reversed.
	
	html table
		class:'table table-condensed table-striped';
		style: 'font-size: 12px';
		with:[
			html tableRow:[
				html tableHeading: 'Priority'.
				html tableHeading: 'Timestamp'.
				html tableHeading: 'Label'.
				html tableHeading: 'Pid'.
				html tableHeading: 'Url'.
				html tableHeading: 'Object'.
				html tableHeading: [ self renderSelectAllOn: html].].
				
			rows do:[:entry |  
				html tableRow: [
						html tableData: [
							html span
								class: 'label';
								class: 'label-danger' if: ((entry priority = 1) | (entry priority = 2));
								class: 'label-warning' if: (entry priority = 3);
								class: 'label-info' if: (entry priority = 4);
								class: 'label-default' if: ((entry priority = 5) | ((entry priority = 6) | (entry priority = 7)));
								with: entry priorityString].
						html tableData: entry stampString.
						html tableData: entry labelString.
						html tableData: entry pidString.
						html tableData: entry requestString.
						html tableData: entry objectString.
						html tableData
							style:'white-space: nowrap';
							with: [
							self renderInspect: entry on: html.
							self renderSelect: entry on: html].]]].