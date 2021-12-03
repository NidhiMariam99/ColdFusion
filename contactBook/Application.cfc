<cfcomponent>
    <cfset this.name = "login">
    <cfset this.datasource = "contactBook">
    <cfset this.applicationTimeout  = createTimeSpan( 1, 0, 0, 0 )>
    <cfset this.sessionStorage  = true>
    <cfset this.sessionmanagement = true>
    <cfset this.sessionTimeout  = createTimeSpan( 0, 0, 10, 0 )>
    <cfset session.login = 0>
    <cfset session.sign = 0>
    <cfset session.userfk = 0>
</cfcomponent>