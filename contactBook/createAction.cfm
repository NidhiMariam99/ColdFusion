<cfset variables.obj = createObject("component", "component/component")>
<cfset variables.createContact = variables.obj.AddContact()>
<cflocation  url="list.cfm" addToken="no">