component {
	this.name = hash( getCurrentTemplatePath() );
	this.applicationTimeout = createTimeSpan( 0, 0, 1, 0 );

	this.javaSettings = {
		loadPaths: [
			"./"
		],
		loadColdFusionClassPath: true
	};
}
