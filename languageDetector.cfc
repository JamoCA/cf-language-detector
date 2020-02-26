component
	displayname="languageDetector"
	output = false
	hint = "I parse strings and attempt to identify language."
	accessors=false {

	/*
		* Version 1.0 - February 26, 2020
		* Author: James Moberg - SunStar Media https://www.sunstarmedia.com/
		* Blog: https://dev.to/gamesover
		* Wrapper for https://github.com/kju2/language-detector
		* Download pre-compiled JAR from https://mvnrepository.com/artifact/io.github.kju2.languagedetector/language-detector/1.0.5
	*/

	public component function init() output=false hint="initialize language-detector library" {
		variables.languageDetector = CreateObject("java", "io.github.kju2.languagedetector.LanguageDetector");
		return this;
	}

	public string function detect(required string inputString) output=false {
		var response = "ERROR";
		try {
			response = variables.languageDetector.detectPrimaryLanguageOf( javacast("string", arguments.inputString) ).toString();
		} catch (any e){};
		return response;
	}

}
