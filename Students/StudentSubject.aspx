<%@ Page Title="" Language="C#" MasterPageFile="~/Students/MasterStudent.master" AutoEventWireup="true" CodeFile="StudentSubject.aspx.cs" Inherits="Students_STUDENTCOURCES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366">
        <tr>
            <td colspan="2" style="font-size: xx-large; color: #003366; text-align: center">
                <strong>Student Subject</strong></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td colspan="2">
                <table class="auto-style9">
                    
                    <tr>
                        <td rowspan="2" style="width: 9px">&nbsp;</td>
                        <td style="width: 579px" rowspan="2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="subject_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="586px" HorizontalAlign="Left">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="student_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="student_ID" />
            <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" ReadOnly="True" SortExpression="subject_ID" />
            <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
            <asp:BoundField DataField="hours_subject" HeaderText="Hours Subject" SortExpression="hours_subject" />
            <asp:BoundField DataField="level_id" HeaderText="Level ID" ReadOnly="True" SortExpression="level_id" />
            <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" ReadOnly="True" SortExpression="bluck_ID" />
            <asp:CommandField ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT * FROM [STRUDENTCOURCESVIEW] WHERE ([student_ID] = @student_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
                        </td>
                        <td style="width: 420px" rowspan="2">
                            &nbsp;</td>
                        <td style="height: 37px"></td>
                    </tr>
                    <tr>
                        <td style="height: 339px">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="308px" HorizontalAlign="Right">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
            <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
            <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [subject_ID], [marks_portfolio], [marks_exam] FROM [marks] WHERE (([student_ID] = @student_ID) AND ([subject_ID] = @subject_ID))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="GridView1" Name="subject_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 9px">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 9px">&nbsp;</td>
                        <td colspan="2">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 9px">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
      
    </table>
</asp:Content>

