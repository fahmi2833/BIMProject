<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterTeacher.master" AutoEventWireup="true" CodeFile="Manage Score.aspx.cs" Inherits="Teacher_Manage_Score" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366">
    <tr>
        <td colspan="2" style="font-size: xx-large; text-align: center; color: #003366"><strong>Manage Score<br />
            </strong></td>
    </tr>
    <tr>
        <td colspan="2">
            <table style="width: 100%; background-color: #E9ECF1">
                <tr>
                    <td style="text-align: center; width: 459px"><strong>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: bold; color: #FFFFFF;" Text="Add  New Score " CssClass="newStyle1" Height="30px" Width="160px" />
                        </strong></td>
                    <td style="text-align: center"><strong>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: bold; color: #FFFFFF;" Text=" Scores List" CssClass="newStyle1" Height="30px" Width="160px" />
                        </strong></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <br />
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Marks_ID_SEQ" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="368px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Marks_ID_SEQ" HeaderText="Marks_ID_SEQ" InsertVisible="False" ReadOnly="True" SortExpression="Marks_ID_SEQ" />
                            <asp:TemplateField HeaderText="Student ID" SortExpression="student_ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("student_ID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSourceSTU" DataTextField="student_ID" DataValueField="student_ID" Height="24px" SelectedValue='<%# Bind("student_ID") %>' Width="170px" AppendDataBoundItems="True">
                                        <asp:ListItem>&quot; Select Student ID&quot;</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceSTU" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [student_ID] FROM [students]"></asp:SqlDataSource>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("student_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject ID" SortExpression="subject_ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("subject_ID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSourceSUP" DataTextField="subject_name" DataValueField="subject_ID" Height="23px" SelectedValue='<%# Bind("subject_ID") %>' Width="170px" AppendDataBoundItems="True">
                                        <asp:ListItem>&quot;Select Subject&quot;</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceSUP" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [subject_ID], [subject_name] FROM [subjects]"></asp:SqlDataSource>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("subject_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                            <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                            <asp:TemplateField HeaderText="Date Of Adding" SortExpression="date_of_adding">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("date_of_adding") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="86px" NextPrevFormat="ShortMonth" SelectedDate='<%# Bind("date_of_adding") %>' Width="129px">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                        <DayStyle BackColor="#CCCCCC" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                    </asp:Calendar>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("date_of_adding") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bluck ID" SortExpression="bluck_ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bluck_ID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="DropDownList7" runat="server" Height="26px" SelectedValue='<%# Bind("bluck_ID") %>' Width="170px">
                                        <asp:ListItem>Select Bluck ID</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                    </asp:DropDownList>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("bluck_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Level ID" SortExpression="level_id">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("level_id") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:DropDownList ID="DropDownList8" runat="server" Height="23px" SelectedValue='<%# Bind("level_id") %>' Width="170px">
                                        <asp:ListItem Value="0">Select Level</asp:ListItem>
                                        <asp:ListItem Value="1">First</asp:ListItem>
                                        <asp:ListItem Value="2">Second</asp:ListItem>
                                        <asp:ListItem Value="3">Third</asp:ListItem>
                                        <asp:ListItem Value="4">Fourth</asp:ListItem>
                                    </asp:DropDownList>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("level_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" DeleteCommand="DELETE FROM [marks] WHERE [Marks_ID_SEQ] = @original_Marks_ID_SEQ AND [student_ID] = @original_student_ID AND [subject_ID] = @original_subject_ID AND (([marks_portfolio] = @original_marks_portfolio) OR ([marks_portfolio] IS NULL AND @original_marks_portfolio IS NULL)) AND (([marks_exam] = @original_marks_exam) OR ([marks_exam] IS NULL AND @original_marks_exam IS NULL)) AND (([date_of_adding] = @original_date_of_adding) OR ([date_of_adding] IS NULL AND @original_date_of_adding IS NULL)) AND (([bluck_ID] = @original_bluck_ID) OR ([bluck_ID] IS NULL AND @original_bluck_ID IS NULL)) AND (([level_id] = @original_level_id) OR ([level_id] IS NULL AND @original_level_id IS NULL))" InsertCommand="INSERT INTO [marks] ([student_ID], [subject_ID], [marks_portfolio], [marks_exam], [date_of_adding], [bluck_ID], [level_id]) VALUES (@student_ID, @subject_ID, @marks_portfolio, @marks_exam, @date_of_adding, @bluck_ID, @level_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [marks]" UpdateCommand="UPDATE [marks] SET [student_ID] = @student_ID, [subject_ID] = @subject_ID, [marks_portfolio] = @marks_portfolio, [marks_exam] = @marks_exam, [date_of_adding] = @date_of_adding, [bluck_ID] = @bluck_ID, [level_id] = @level_id WHERE [Marks_ID_SEQ] = @original_Marks_ID_SEQ AND [student_ID] = @original_student_ID AND [subject_ID] = @original_subject_ID AND (([marks_portfolio] = @original_marks_portfolio) OR ([marks_portfolio] IS NULL AND @original_marks_portfolio IS NULL)) AND (([marks_exam] = @original_marks_exam) OR ([marks_exam] IS NULL AND @original_marks_exam IS NULL)) AND (([date_of_adding] = @original_date_of_adding) OR ([date_of_adding] IS NULL AND @original_date_of_adding IS NULL)) AND (([bluck_ID] = @original_bluck_ID) OR ([bluck_ID] IS NULL AND @original_bluck_ID IS NULL)) AND (([level_id] = @original_level_id) OR ([level_id] IS NULL AND @original_level_id IS NULL))" OnInserted="SqlDataSource1_Inserted">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Marks_ID_SEQ" Type="Int32" />
                            <asp:Parameter Name="original_student_ID" Type="String" />
                            <asp:Parameter Name="original_subject_ID" Type="String" />
                            <asp:Parameter Name="original_marks_portfolio" Type="Decimal" />
                            <asp:Parameter Name="original_marks_exam" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="original_date_of_adding" />
                            <asp:Parameter Name="original_bluck_ID" Type="String" />
                            <asp:Parameter Name="original_level_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="student_ID" Type="String" />
                            <asp:Parameter Name="subject_ID" Type="String" />
                            <asp:Parameter Name="marks_portfolio" Type="Decimal" />
                            <asp:Parameter Name="marks_exam" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="date_of_adding" />
                            <asp:Parameter Name="bluck_ID" Type="String" />
                            <asp:Parameter Name="level_id" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="student_ID" Type="String" />
                            <asp:Parameter Name="subject_ID" Type="String" />
                            <asp:Parameter Name="marks_portfolio" Type="Decimal" />
                            <asp:Parameter Name="marks_exam" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="date_of_adding" />
                            <asp:Parameter Name="bluck_ID" Type="String" />
                            <asp:Parameter Name="level_id" Type="String" />
                            <asp:Parameter Name="original_Marks_ID_SEQ" Type="Int32" />
                            <asp:Parameter Name="original_student_ID" Type="String" />
                            <asp:Parameter Name="original_subject_ID" Type="String" />
                            <asp:Parameter Name="original_marks_portfolio" Type="Decimal" />
                            <asp:Parameter Name="original_marks_exam" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="original_date_of_adding" />
                            <asp:Parameter Name="original_bluck_ID" Type="String" />
                            <asp:Parameter Name="original_level_id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <table class="auto-style9">
                        <tr>
                            <td style="text-align: center;"><strong>
                                <asp:Label ID="LabelMasge" runat="server" style="color: red"></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Marks_ID_SEQ" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="818px">
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT * FROM [marks]"></asp:SqlDataSource>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
  
</table>
</asp:Content>

