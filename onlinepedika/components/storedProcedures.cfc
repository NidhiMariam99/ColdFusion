<cffunction  name="deleteContact" access="public" returnType="string">
    
</cffunction>

<cfstoredproc  procedure="pListSeller(1)" datasource="shopping">
    <cfprocresult  name="result">
</cfstoredproc>
<cfdump var="#result#">

<cfstoredproc  procedure="cartView(2,2,3)" datasource="shopping">
    <cfprocresult  name="cart">
</cfstoredproc>
<cfdump var="#cart#">