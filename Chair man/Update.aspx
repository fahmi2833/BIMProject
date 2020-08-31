<%@ Page Title="" Language="C#" MasterPageFile="~/Chair man/MasterChairMan.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Chair_man_UpdateScore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9" style="border: thin inset #003366">
        <tr>
            <td style="text-align: center; font-size: xx-large; color: #003366">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Marks_ID_SEQ" DataSourceID="SqlDataSource1" DefaultMode="Edit" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="439px" OnItemInserted="DetailsView1_ItemInserted" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataTemplate>
                        No Data Available
                    </EmptyDataTemplate>
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Marks_ID_SEQ" HeaderText="Marks_ID_SEQ" InsertVisible="False" ReadOnly="True" SortExpression="Marks_ID_SEQ" />
                        <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" ReadOnly="True" />
                        <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Marks Portfolio" SortExpression="marks_portfolio">
                            <AlternatingItemTemplate>
                                Databound
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                Student ID
                            </EditItemTemplate>
                            <HeaderTemplate>
                                Subject ID
                            </HeaderTemplate>
                            <InsertItemTemplate>
                                Databound
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Marks_ID_SEQ
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                        <asp:TemplateField HeaderText="Date Of Adding" SortExpression="date_of_adding">
                            <EditItemTemplate>
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="48px">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                    <DayStyle BackColor="#CCCCCC" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                </asp:Calendar>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("date_of_adding") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("date_of_adding") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bluck ID" SortExpression="bluck_ID">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" SelectedValue='<%# Bind("bluck_ID") %>' Width="174px">
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
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("bluck_ID") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("bluck_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Level ID" SortExpression="level_id">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="174px">
                                    <asp:ListItem>Select Level</asp:ListItem>
                                    <asp:ListItem>First</asp:ListItem>
                                    <asp:ListItem>Second</asp:ListItem>
                                    <asp:ListItem>Third</asp:ListItem>
                                    <asp:ListItem>Fourth</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("level_id") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <span id="idControl">DetailsView1</span> - Field[7] - Level ID
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" DeleteCommand="DELETE FROM [marks] WHERE [Marks_ID_SEQ] = @Marks_ID_SEQ" InsertCommand="INSERT INTO [marks] ([student_ID], [subject_ID], [marks_portfolio], [marks_exam], [date_of_adding], [bluck_ID], [level_id]) VALUES (@student_ID, @subject_ID, @marks_portfolio, @marks_exam, @date_of_adding, @bluck_ID, @level_id)"
                     SelectCommand="SELECT * FROM [marks] where [Marks_ID_SEQ]= @Marks_ID_SEQ2" UpdateCommand="UPDATE [marks] SET [student_ID] = @student_ID, [subject_ID] = @subject_ID, [marks_portfolio] = @marks_portfolio, [marks_exam] = @marks_exam, [date_of_adding] = @date_of_adding, [bluck_ID] = @bluck_ID, [level_id] = @level_id WHERE [Marks_ID_SEQ] = @Marks_ID_SEQ" OnInserted="SqlDataSource1_Inserted" OnUpdated="SqlDataSource1_Updated">
                   <SelectParameters>
                       <asp:QueryStringParameter Name="Marks_ID_SEQ2" QueryStringField="Marks_ID_SEQ" Type="Int32" />
                      
                   </SelectParameters>
                     <DeleteParameters>
                        <asp:Parameter Name="Marks_ID_SEQ" Type="Int32" />
                    </DeleteParameters>
                 
                    <UpdateParameters>
                        <asp:Parameter Name="student_ID" Type="String" />
                        <asp:Parameter Name="subject_ID" Type="String" />
                        <asp:Parameter Name="marks_portfolio" Type="Decimal" />
                        <asp:Parameter Name="marks_exam" Type="Decimal" />
                        <asp:Parameter DbType="Date" Name="date_of_adding" />
                        <asp:Parameter Name="bluck_ID" Type="String" />
                        <asp:Parameter Name="level_id" Type="String" />
                        <asp:Parameter Name="Marks_ID_SEQ" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <strong>
                <asp:Label ID="LabelMessage" runat="server" style="color: #FF0000"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

