<cfset obj = createObject("Component", "components/storedProcedures")>
<cfset deleteContact = obj.deleteContact()>
<cflocation url = "list.cfm" addtoken="no">