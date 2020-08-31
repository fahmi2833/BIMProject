<%@ Page Title="" Language="C#" MasterPageFile="~/Chair man/MasterChairMan.master" AutoEventWireup="true" CodeFile="scoreUpdate.aspx.cs" Inherits="Chair_man_scoreUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table style="border-left: 1px solid #003366; border-right: 1px solid #003366; border-top: 1px solid #003366; border-bottom-style: inherit; border-bottom-color: #003366; border-bottom-width: 1px;" class="auto-style9">
        <tr>
            <td colspan="3" style="font-size: xx-large; color: #003366; text-align: center">
                <strong>Update Score<br />
                <br />
                </strong> </td>
        </tr>
        <tr>
            <td style="background-color: #F7F6F3; width: 16%; height: 41px;"><strong>Enter&nbsp; Student ID : </strong> </td>
            <td style="background-color: #F7F6F3; width: 128px; height: 41px;">
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="132px" style="background-color: #C0C0C0"></asp:TextBox>
            </td>
            <td style="background-color: #F7F6F3; height: 41px;">
                <table style="width: 100%; background-color: #F7F6F3">
                    <tr>
                        <td style="width: 137px; height: 32px"><strong>Enter Subject ID:</strong></td>
                        <td style="width: 77px; height: 32px">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="subject_name" DataValueField="subject_ID" Height="27px" Width="132px" AppendDataBoundItems="True" style="background-color: #C0C0C0">
                           <asp:ListItem>"Select Subject"</asp:ListItem>
                                 </asp:DropDownList>
                        </td>
                        <td style="height: 32px; text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="Search" style="font-weight: bold; color: #FFFFFF;" Width="107px" CssClass="newStyle1" Height="33px" />
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td >
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [subject_ID], [subject_name] FROM [subjects]"></asp:SqlDataSource>
            </td>
           
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Marks_ID_SEQ" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="869px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Marks_ID_SEQ" HeaderText="Marks_ID_SEQ" InsertVisible="False" ReadOnly="True" SortExpression="Marks_ID_SEQ" />
                        <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                        <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                        <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                        <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                        <asp:BoundField DataField="date_of_adding" HeaderText="Date Of Adding" SortExpression="date_of_adding" />
                        <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                        <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                        <asp:HyperLinkField DataNavigateUrlFields="Marks_ID_SEQ" DataNavigateUrlFormatString="~/chair man/Update.aspx?Marks_ID_SEQ={0}" Text="Edit" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>"
                     DeleteCommand="DELETE FROM [marks] WHERE [Marks_ID_SEQ] = @Marks_ID_SEQ"
                    InsertCommand="INSERT INTO [marks] ([student_ID], [subject_ID], [marks_portfolio], [marks_exam], [date_of_adding], [bluck_ID], [level_id]) VALUES (@student_ID, @subject_ID, @marks_portfolio, @marks_exam, @date_of_adding, @bluck_ID, @level_id)" 
                    SelectCommand="SELECT * FROM [marks] WHERE ([student_ID] = @student_ID)"
                     UpdateCommand="UPDATE [marks] SET [student_ID] = @student_ID, [subject_ID] = @subject_ID, [marks_portfolio] = @marks_portfolio, [marks_exam] = @marks_exam, [date_of_adding] = @date_of_adding, [bluck_ID] = @bluck_ID, [level_id] = @level_id WHERE [Marks_ID_SEQ] = @Marks_ID_SEQ">
                    
                  
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                          <asp:ControlParameter ControlID="DropDownList1" Name="subject_ID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                   
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td style="width: 69%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 16%">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td style="width: 69%">&nbsp;</td>
        </tr>
    </table>

</asp:Content>


