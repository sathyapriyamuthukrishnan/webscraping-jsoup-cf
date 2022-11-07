<cfscript>
	jSoupClass = createObject( "java", "org.jsoup.Jsoup" );

	// Scraping webpage by URL 
	dom = jSoupClass.connect( "https://cfdocs.org/cfset" ).get();
	// WriteDump( dom.html() );	
	WriteOutput( dom.select('footer').html() );

	// Scraping file
	filePath = expandPath("./testFile.cfm");
	if( fileExists(filePath) ) {
		fileToRead 	= fileRead( filePath );
		dom = jSoupClass.parse( fileToRead );
		writeOutput(dom.select('h1').text());
	}
</cfscript>
