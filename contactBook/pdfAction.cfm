<cfdocument format="PDF" filename="tablePDF.pdf" overwrite="Yes">
    <cfset obj = createObject("component", "component/component")>
    <cfset pdf = obj.pdf()>
    <table class="detailsTable">
        <tr class="tableHeading">
            <th>Name</th>
            <th>Gender</th>
            <th>DOB</th>
            <th>Address</th>
            <th>Street</th>
            <th>Pincode</th>
            <th>Email Id</th>
            <th>Phone No.</th>
        </tr>    
        <cfoutput query="pdf">
            <tr>
                <td class="nameCol">#pdf.firstname# #pdf.lastname#</td>
                <td class="phoneCol">#pdf.gender#</td>
                <td class="phoneCol">#pdf.dob#</td>
                <td class="phoneCol">#pdf.address#</td>
                <td class="phoneCol">#pdf.street#</td>
                <td class="phoneCol">#pdf.pincode#</td>
                <td class="emailCol">#pdf.email#</td>
                <td class="phoneCol">#pdf.phone#</td>
            </tr>
        </cfoutput>
    </table>
</cfdocument>
<cfheader name="Content-Disposition" value="attachment;filename=tablePDF.pdf">
<cfcontent type="application/octet-stream" file="#expandPath('.')#\tablePDF.pdf" deletefile="Yes">
<cflocation  url="list.cfm">