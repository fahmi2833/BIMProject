<%@ Page Title="" Language="C#" MasterPageFile="~/Register/MasterRegister.master" AutoEventWireup="true" CodeFile="StudentForm.aspx.cs" Inherits="Register_StudFor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="border-style: solid solid none solid; border-width: thin; border-color: #003366; width: 100%; ">
        <tr>
            <td style="text-align: center; font-size: x-large; color: #003366" colspan="2"><strong><span style="font-size: xx-large">The Students Form</span><br />
                </strong></td>
        </tr>
        <tr>
            <td style="text-align: center; background-color: #E9ECF1;"><strong>
                <asp:Button ID="Button2" runat="server" style="font-weight: bold; color: #FFFFFF;" Text="Add New Studnet" OnClick="Button2_Click" CssClass="newStyle1" Height="33px" Width="169px" />
                </strong></td>
            <td style="text-align: center; background-color: #E9ECF1;"><strong>
                <asp:Button ID="Button3" runat="server" style="font-weight: bold; color: #FFFFFF;" Text="Student Form List" OnClick="Button3_Click" CssClass="newStyle1" Height="33px" Width="169px" />
                </strong></td>
        </tr>
     
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="auto-style9">
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 451px">
                                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="student_ID" DataSourceID="studForm" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="18px" Width="449px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                        <EditRowStyle BackColor="#999999" />
                                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                        <Fields>
                                            <asp:BoundField DataField="student_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="student_ID" />
                                            <asp:BoundField DataField="student_name" HeaderText="Student Name" SortExpression="student_name" />
                                            <asp:BoundField DataField="student_address" HeaderText="Student Address" SortExpression="student_address" />
                                            <asp:BoundField DataField="student_phone" HeaderText="Student Phone" SortExpression="student_phone" />
                                            <asp:BoundField DataField="birth_place" HeaderText="Birth Place" SortExpression="birth_place" />
                                            <asp:TemplateField HeaderText="Birth Date" SortExpression="birth_date">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("birth_date") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="160px" NextPrevFormat="ShortMonth" SelectedDate='<%# Bind("birth_date") %>' Width="98px">
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
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("birth_date") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Department ID" SortExpression="dept_id">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dept_id") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="dept_name" DataValueField="dept_id" Height="22px" SelectedValue='<%# Bind("dept_id") %>' Width="170px">
                                                        <asp:ListItem>&quot;Select Department&quot;</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student_handsConnectionString %>" SelectCommand="SELECT [dept_id], [dept_name] FROM [departments]"></asp:SqlDataSource>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("dept_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Level ID" SortExpression="level_id">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("level_id") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" SelectedValue='<%# Bind("level_id") %>' Width="170px">
                                                        <asp:ListItem>Select Level</asp:ListItem>
                                                        <asp:ListItem Value="1">First</asp:ListItem>
                                                        <asp:ListItem Value="2">Second</asp:ListItem>
                                                        <asp:ListItem Value="3">Third</asp:ListItem>
                                                        <asp:ListItem Value="4">Fourth</asp:ListItem>
                                                    </asp:DropDownList>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("level_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="secondary_rate" HeaderText="Secondary Rate" SortExpression="secondary_rate" />
                                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                                            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
                                            <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                                        </Fields>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    </asp:DetailsView>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 451px">
                                    <asp:SqlDataSource ID="studForm" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" DeleteCommand="DELETE FROM [students] WHERE [student_ID] = @original_student_ID" InsertCommand="INSERT INTO [students] ([student_ID], [student_name], [student_address], [student_phone], [birth_place], [birth_date], [dept_id], [level_id], [secondary_rate], [status], [note]) VALUES (@student_ID, @student_name, @student_address, @student_phone, @birth_place, @birth_date, @dept_id, @level_id, @secondary_rate, @status, @note)" OldValuesParameterFormatString="original_{0}" OnInserted="studForm_Inserted" SelectCommand="SELECT * FROM [students]" UpdateCommand="UPDATE [students] SET [student_name] = @student_name, [student_address] = @student_address, [student_phone] = @student_phone, [birth_place] = @birth_place, [birth_date] = @birth_date, [dept_id] = @dept_id, [level_id] = @level_id, [secondary_rate] = @secondary_rate, [status] = @status, [note] = @note WHERE [student_ID] = @original_student_ID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_student_ID" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="student_ID" Type="String" />
                                            <asp:Parameter Name="student_name" Type="String" />
                                            <asp:Parameter Name="student_address" Type="String" />
                                            <asp:Parameter Name="student_phone" Type="Int32" />
                                            <asp:Parameter Name="birth_place" Type="String" />
                                            <asp:Parameter DbType="Date" Name="birth_date" />
                                            <asp:Parameter Name="dept_id" Type="String" />
                                            <asp:Parameter Name="level_id" Type="String" />
                                            <asp:Parameter Name="secondary_rate" Type="Decimal" />
                                            <asp:Parameter Name="status" Type="String" />
                                            <asp:Parameter Name="note" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="student_name" Type="String" />
                                            <asp:Parameter Name="student_address" Type="String" />
                                            <asp:Parameter Name="student_phone" Type="Int32" />
                                            <asp:Parameter Name="birth_place" Type="String" />
                                            <asp:Parameter DbType="Date" Name="birth_date" />
                                            <asp:Parameter Name="dept_id" Type="String" />
                                            <asp:Parameter Name="level_id" Type="String" />
                                            <asp:Parameter Name="secondary_rate" Type="Decimal" />
                                            <asp:Parameter Name="status" Type="String" />
                                            <asp:Parameter Name="note" Type="String" />
                                            <asp:Parameter Name="original_student_ID" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 451px; text-align: center;"><strong>
                                    <asp:Label ID="LabelMasge" runat="server" style="color: red"></asp:Label>
                                    </strong></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td style="width: 120px">I<strong>nter Student ID</strong>:</td>
                                <td style="width: 128px">
                                    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" style="background-color: #C0C0C0"></asp:TextBox>
                                </td>
                                <td><strong>
                                    <asp:Button ID="Button4" runat="server" style="font-weight: bold; color: #FFFFFF;" Text="Search" CssClass="newStyle1" Height="29px" Width="72px" />
                                    </strong></td>
                            </tr>
                        </table>
                        <table class="auto-style9">
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 533px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 533px">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="student_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="569px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="student_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="student_ID" />
                                            <asp:BoundField DataField="student_name" HeaderText="Student Name" SortExpression="student_name" />
                                            <asp:BoundField DataField="dept_id" HeaderText="Department ID" SortExpression="dept_id" />
                                            <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                                            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
                                            <asp:HyperLinkField DataNavigateUrlFields="student_ID" DataNavigateUrlFormatString="~/Register/StudentUpdate.aspx?student_id={0}" Text="Edit" />
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
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [student_ID], [student_name], [dept_id], [level_id], [status], [note] FROM [students] WHERE ([student_ID] = @student_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox4" Name="student_ID" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </asp:View>
                </asp:MultiView>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

