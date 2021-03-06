description
describeOn: config
	(config list: #actionPhaseContinuationClass)
		beAdvanced;
		group: #renderLoop;
		comment: 'The continuation used for the Render Loop''s action phase.';
		options: [ self continuationClasses ];
		default: WAActionPhaseContinuation.
	(config list: #renderPhaseContinuationClass)
		beAdvanced;
		group: #renderLoop;
		comment: 'The continuation used for the Render Loop''s render phase.';
		options: [ self continuationClasses ];
		default: WARenderPhaseContinuation.
	(config list: #rootClass)
		comment: 'The root component of this seaside application.';
		options: [ self rootClasses ].
	(config collection: #rootDecorationClasses)
		comment: 'The decoration clases that should wrap the root component.';
		options: [ self rootDecorationClasses ].
	config
		at: #mainClass put: WARenderLoopMain