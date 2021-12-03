<cfset variables.obj = createObject("component", "component/component")>
<cfset variables.editContact = variables.obj.editContact()>
<cflocation url = "list.cfm" addtoken="no">