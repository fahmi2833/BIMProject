<%@ Page Title="" Language="C#" MasterPageFile="~/Register/MasterRegister.master" AutoEventWireup="true" CodeFile="student_quary.aspx.cs" Inherits="Register_student_quary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="border-style: solid solid none solid; border-width: thin; border-color: #003366; width: 100%; ">
        <tr>
            <td style="text-align: center; font-size: xx-large; color: #003366"><strong>Students Quary</strong></td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1" style="width: 924px">
                    <tr>
                        <td >&nbsp;</td>
                        
                    </tr>
                    <tr>
                        <td style="background-color: #F7F6F3; width: 152px;"><strong>Enter Student ID:</strong></td>
                        <td style="background-color: #F7F6F3; width: 171px;">
                            <asp:TextBox ID="TextBox1" runat="server" Width="163px" style="background-color: #C0C0C0"></asp:TextBox>
                        </td>
                        <td style="background-color: #F7F6F3">
                            <strong>
                            <asp:Button ID="Button1" runat="server" Text="Saerch" CssClass="newStyle1" Height="30px" style="font-weight: bold; color: #FFFFFF" Width="79px" />
                            </strong>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style9">
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 527px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="537px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                        <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                        <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                        <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                        <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                        <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [student_ID], [subject_ID], [marks_portfolio], [marks_exam], [date_of_adding], [bluck_ID], [level_id] FROM [marks] WHERE ([student_ID] = @student_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

