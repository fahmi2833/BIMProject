<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterTeacher.master" AutoEventWireup="true" CodeFile="TeacherPorfile.aspx.cs" Inherits="Teacher_TeacherInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366">
        <tr>
            <td colspan="3" style="font-size: xx-large; color: #003366; text-align: center">
                <strong>Teacher Profile</strong></td>
        </tr>
        <tr>
            <td style="width: 396px">&nbsp;</td>
            <td style="text-align: center; width: 238px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px; width: 396px"></td>
            <td style="height: 32px; width: 238px"></td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td style="width: 396px">&nbsp;</td>
            <td style="width: 238px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="teacher_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="70px" Width="245px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="teacher_name" HeaderText="Teacher Name" SortExpression="teacher_name" />
                        <asp:BoundField DataField="techer_address" HeaderText="Techer Address" SortExpression="techer_address" />
                        <asp:BoundField DataField="specializtion" HeaderText="Specializtion" SortExpression="specializtion" />
                        <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
                        <asp:BoundField DataField="dept_id" HeaderText="Department ID" SortExpression="dept_id" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT * FROM [teachers] WHERE ([teacher_ID] = @teacher_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="teacher_ID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 396px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
    </table>
</asp:Content>

