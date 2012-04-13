<cfscript>
/*
   Copyright 2012 Blue River Interactive

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
	$ = application.serviceFactory.getBean('MuraScope').init(session.siteid);

	if ( IsJSON($.event('params')) ) {
		params = DeSerializeJSON($.event('params'));
	} else {
		params = {};
	}

	defaultParams = {
		exampleParam = ''
	};

	StructAppend(params, defaultParams, false);
</cfscript>
<cfoutput>
	<div id="availableObjectParams"	
		data-object="plugin" 
		data-name="Example Configured Object" 
		data-objectid="#$.event('objectID')#">
		<dl class="singleColumn">
			<dt>Example Parameter</dt>
			<dd><input name="exampleParam" class="objectParam" value="#HTMLEditFormat(params.exampleParam)#"/></dd>
		</dl>			
	</div>			
</cfoutput>