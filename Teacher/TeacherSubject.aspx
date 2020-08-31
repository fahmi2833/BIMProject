<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterTeacher.master" AutoEventWireup="true" CodeFile="TeacherSubject.aspx.cs" Inherits="Teacher_TeacherSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366">
    <tr>
        <td colspan="4" style="font-size: xx-large; color: #003366; text-align: center;">
            <strong>Teacher Subject<br />
            </strong>
        </td>
    </tr>
    <tr>
        <td colspan="4" style="text-align: center">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
  
    <tr>
        <td style="width: 356px; height: 182px;" rowspan="3">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="subject_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="499px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                    <asp:BoundField DataField="teacher_ID" HeaderText="Teacher ID" SortExpression="teacher_ID" />
                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                    <asp:BoundField DataField="block_id" HeaderText="Block ID" SortExpression="block_id" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [subject_name], [subject_ID], [teacher_ID], [level_id], [block_id] FROM [TeacherSubjectView] WHERE ([teacher_ID] = @teacher_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="teacher_ID" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            
        </td>
        <td style="width: 431px" rowspan="4">
            &nbsp;</td>
        <td style="width: 347px; height: 64px;">
            <br />
        </td>
        <td rowspan="4">
            &nbsp;</td>
    </tr>
  
    <tr>
        <td style="width: 347px; height: 12px;">
            </td>
    </tr>
    <tr>
        <td style="width: 347px; height: 182px;">
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="student_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="454px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="student_name" HeaderText="Student Name" SortExpression="student_name" />
                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="student_ID" />
                    <asp:BoundField DataField="dept_id" HeaderText="Department ID" SortExpression="dept_id" />
                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                    <asp:BoundField DataField="teacher_ID" HeaderText="Teacher ID" SortExpression="teacher_ID" />
                    <asp:BoundField DataField="dept_name" HeaderText="Department Name" SortExpression="dept_name" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [student_name], [student_ID], [dept_id], [subject_ID], [teacher_ID], [dept_name] FROM [Teacher_student] WHERE (([teacher_ID] = @teacher_ID) AND ([subject_ID] = @subject_ID))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="teacher_ID" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="GridView3" Name="subject_ID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 356px; height: 13px;">
            
        </td>
        <td style="width: 347px; height: 13px;">
        </td>
    </tr>
   
    <tr>
        <td colspan="4">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="width: 347px">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

