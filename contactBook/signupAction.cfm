<cfset variables.obj = createObject("component", "component/component")>
<cfset variables.result = variables.obj.select()>
<cfif result EQ 0>
    <cfset result = obj.AddUser()>
    <cflocation  url="login.cfm" addToken="false">
<cfelse>
    <cflocation  url="signup.cfm" addToken="false">
</cfif>

<script>
    if()
    {
        document.getElementById("userError").innerHTML = "**Username already exists!";
        document.getElementById("userError").className="error";
        return false;
    }
</script>