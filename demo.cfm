

<cfset languageDetector = new languageDetector()>

<CFPARAM NAME="Form.Message" DEFAULT="">
<cfoutput>
	<div style="padding:50px;">
		<form id="form1" name="form1" method="post" action="#CGI.Script_Name#">
			<textarea name="message" style="max-width:500px; width:98%; height:100px;" required placeholder="Enter text to be tested.">#Form.Message#</textarea><br>
			<button type="submit">Perform Test</button>
		</form>
	</div>
</cfoutput>

<cfset testData = [
	{
		"Type" = "User-Defined",
		"Text" = trim(Form.Message)
	}
]>

<cfset useCustom = len(testData[1].Text)>

<cfif useCustom>
	<cfoutput>
		<p><a href="#CGI.Script_Name#">Return to unit tests</a></p>
	</cfoutput>
<cfelse>
	<cfset testData = deserializeJSON(fileRead(expandPath("./test.json"), "utf-8"))>
</cfif>

<cfoutput>
	<cfloop from="1" to="#arrayLen(testData)#" index="i">
		<cfset result = languageDetector.detect(testData[i].text)>
		<cfset isCorrect = testData[i].Type IS Result OR useCustom>
		<fieldset>
			<legend style="background-color:<CFIF isCorrect>lightgreen<cfelse>lightpink</cfif>;"><b>#i#. #result#<cfif not isCorrect> <i>(expected #testData[i].Type#)</i></cfif></b></legend>
			#testData[i].text#
		</fieldset>
	</cfloop>
</cfoutput>
