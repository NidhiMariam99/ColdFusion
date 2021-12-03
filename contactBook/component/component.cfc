<cfcomponent>
    <cffunction name = "selectAll" returnType = "query" access = "public">
        <cfquery name="myQuery" datasource="contactBook">
            SELECT * FROM userLogin;
        </cfquery>
        <cfreturn myQuery>
    </cffunction>

    <cffunction name="select">
        <cfquery name="check" datasource="contactBook">
            select * from userLogin where Username='#form.uname#';
        </cfquery>
        <cfif check.recordcount EQ 0 >
            <cfset local.result = 0>
        <cfelse>
            <cfset local.result = 1>
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction name = "AddUser" returnType = "string" access = "public">
        <cfquery name="AddUser" datasource="contactBook">
            INSERT INTO userLogin (name, email, username, password) 
            VALUES (<cfqueryparam value='#form.fname#' CFSQLType="CF_SQL_VARCHAR">, 
                    <cfqueryparam value='#form.email#' CFSQLType="CF_SQL_VARCHAR">, 
                    <cfqueryparam value='#form.uname#' CFSQLType="CF_SQL_VARCHAR">, 
                    <cfqueryparam value='#form.pass#' CFSQLType="CF_SQL_VARCHAR">);
        </cfquery>
        <cfreturn "User Added">
    </cffunction>

    <cffunction name = "AddContact" returnType = "string" access = "public">
        <cfquery name="AddContact" datasource="contactBook">
            INSERT INTO contacts (userId, title, firstname, lastname, gender, dob, photo, address, street, pincode, email, phone) 
                VALUES (<cfqueryparam value='#session.sessionId#' CFSQLType="CF_SQL_VARCHAR">, 
                        <cfqueryparam value='#form.title#' CFSQLType="CF_SQL_VARCHAR">, 
                        <cfqueryparam value='#form.fname#' CFSQLType="CF_SQL_VARCHAR">,
                        <cfqueryparam value='#form.lname#' CFSQLType="CF_SQL_VARCHAR">, 
                        <cfqueryparam value='#form.gender#' CFSQLType="CF_SQL_VARCHAR">, 
                        <cfqueryparam value='#form.dob#' CFSQLType="CF_SQL_VARCHAR">, 
                        <cfqueryparam value='#form.photo#'>, 
                        <cfqueryparam value='#form.address#' CFSQLType="CF_SQL_VARCHAR">,
                        <cfqueryparam value='#form.street#' CFSQLType="CF_SQL_VARCHAR">, 
                        <cfqueryparam value='#form.pincode#' CFSQLType="CF_SQL_VARCHAR">, 
                        <cfqueryparam value='#form.email#' CFSQLType="CF_SQL_VARCHAR">, 
                        <cfqueryparam value='#form.phone#' CFSQLType="CF_SQL_VARCHAR">);
        </cfquery>
        <cfreturn "Contact Added">
    </cffunction>

    <cffunction  name="contactList" access="public" returnType="query">
        <cfquery name="contactList" datasource="contactBook">
            SELECT * FROM contacts
            where userId = #session.sessionId#;
        </cfquery>
        <cfreturn contactList>
    </cffunction>

    <cffunction  name="populator" access="remote" returnformat="json">
        <cfquery name="contacts_taken" datasource="contactBook">
            select * from contacts where id="#arguments.contact_key#";
        </cfquery>
        <cfreturn contacts_taken>
    </cffunction>

    <cffunction  name="editContact" access="public" returnType="string">
        <cfquery name="editContact" datasource="contactBook">
            UPDATE contacts set 
            title = <CFQUERYPARAM VALUE="#form.title#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">,
            firstname = <CFQUERYPARAM VALUE="#form.fname#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">,
            lastname = <CFQUERYPARAM VALUE="#form.lname#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">,
            gender = <CFQUERYPARAM VALUE="#form.gender#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">,
            dob = <CFQUERYPARAM VALUE="#form.dob#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="30">,
            address = <CFQUERYPARAM VALUE="#form.address#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">,
            street = <CFQUERYPARAM VALUE="#form.street#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">,
            pincode = <CFQUERYPARAM VALUE="#form.pincode#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">,
            email = <CFQUERYPARAM VALUE="#form.email#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">,
            phone = <CFQUERYPARAM VALUE="#form.phone#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="45">
            WHERE id = #form.userfk#;
        </cfquery>
        <cfreturn "Employee Edited">
    </cffunction>

    <cffunction  name="deleteContact" access="public" returnType="string">
        <cfquery name="deleteContact"  datasource='contactBook'>
            DELETE FROM contacts where id = #form.userid_get_delete#;
        </cfquery>
        <cfreturn "Employee Deleted">
    </cffunction>

    <cffunction  name="pdf" access="public" returnType="query">
        <cfquery name="pdf"  datasource= "contactBook">
            select * FROM contacts where userId = #session.sessionId#
        </cfquery>
        <cfreturn pdf>
    </cffunction>

    <cffunction  name="excel" access="public" returnType="query">
        <cfquery name="excel"  datasource="contactBook"> 
            select title, firstname, lastname, gender, dob, address, street, pincode, email, phone  
            FROM contacts 
            where userId = #session.sessionId#
        </cfquery>
        <cfreturn excel>
    </cffunction>
</cfcomponent>