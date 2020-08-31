<%@ Page Title="" Language="C#" MasterPageFile="~/Students/MasterStudent.master" AutoEventWireup="true" CodeFile="StudentPorfile.aspx.cs" Inherits="Students_studentInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366;">
        <tr>
            <td colspan="3" style="font-size: xx-large; color: #003366; text-align: center">
                <strong>Student Profile<br />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 369px">&nbsp;</td>
            <td style="text-align: right; width: 4px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 369px">&nbsp;</td>
            <td style="text-align: right; width: 4px">
                <asp:TextBox ID="TextBox1" runat="server" Width="247px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 369px">&nbsp;</td>
            <td style="width: 4px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 369px">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td style="width: 4px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="student_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="261px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="student_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="student_ID" />
                        <asp:BoundField DataField="student_name" HeaderText="Student Name" SortExpression="student_name" />
                        <asp:BoundField DataField="student_address" HeaderText="Student Address" SortExpression="student_address" />
                        <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                        <asp:BoundField DataField="dept_id" HeaderText="Department ID" SortExpression="dept_id" />
                        <asp:BoundField DataField="secondary_rate" HeaderText="Secondary Rate" SortExpression="secondary_rate" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        <asp:BoundField DataField="student_phone" HeaderText="student_phone" SortExpression="student_phone" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [student_ID], [student_name], [student_address], [level_id], [dept_id], [secondary_rate], [status], [student_phone] FROM [students] WHERE ([student_ID] = @student_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
       
    </table>
</asp:Content>

