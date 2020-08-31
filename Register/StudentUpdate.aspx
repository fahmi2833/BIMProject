<%@ Page Title="" Language="C#" MasterPageFile="~/Register/MasterRegister.master" AutoEventWireup="true" CodeFile="StudentUpdate.aspx.cs" Inherits="Register_StudentUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="auto-style9" style="border: thin inset #003366">
        <tr>
            <td colspan="3">
                <h1 style="color: #003366; text-align: center">Students Update</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="width: 363px">&nbsp;</td>
            <td class="auto-style14" style="width: 42px">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="student_ID" DataSourceID="studentupdatesql" DefaultMode="Edit" ForeColor="#333333" GridLines="None" Height="50px" Width="291px" HorizontalAlign="Center">
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
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="19px" NextPrevFormat="ShortMonth" SelectedDate='<%# Bind("birth_date") %>' Width="51px">
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
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("birth_date") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("birth_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Department ID" SortExpression="dept_id">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSourceDEPT" DataTextField="dept_name" DataValueField="dept_id" Height="29px" SelectedValue='<%# Bind("dept_id") %>' Width="170px">
                   <asp:ListItem>"Select Department"</asp:ListItem>
                         </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceDEPT" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [dept_id], [dept_name] FROM [departments]"></asp:SqlDataSource>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dept_id") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("dept_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Level ID" SortExpression="level_id">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="57px" Width="170px">
                        <asp:ListItem>Select Level</asp:ListItem>
                        <asp:ListItem>First</asp:ListItem>
                        <asp:ListItem>Second</asp:ListItem>
                        <asp:ListItem>Third</asp:ListItem>
                        <asp:ListItem>Fourth</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("level_id") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("level_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="secondary_rate" HeaderText="Secondary_rate" SortExpression="secondary_rate" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="studentupdatesql" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" DeleteCommand="DELETE FROM [students] WHERE [student_ID] = @original_student_ID" InsertCommand="INSERT INTO [students] ([student_ID], [student_name], [student_address], [student_phone], [birth_place], [birth_date], [dept_id], [level_id], [secondary_rate], [status], [note]) VALUES (@student_ID, @student_name, @student_address, @student_phone, @birth_place, @birth_date, @dept_id, @level_id, @secondary_rate, @status, @note)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [students] WHERE ([student_ID] = @student_ID)" UpdateCommand="UPDATE [students] SET [student_name] = @student_name, [student_address] = @student_address, [student_phone] = @student_phone, [birth_place] = @birth_place, [birth_date] = @birth_date, [dept_id] = @dept_id, [level_id] = @level_id, [secondary_rate] = @secondary_rate, [status] = @status, [note] = @note WHERE [student_ID] = @original_student_ID" OnUpdated="studentupdatesql_Updated">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="student_ID" QueryStringField="student_id" Type="String" />
        </SelectParameters>
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

                <br />

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14" style="width: 363px">&nbsp;</td>
            <td class="auto-style14" style="width: 42px; text-align: center;">
                <strong>
                <asp:Label ID="LabelMasge" runat="server" style="color: #FF0000"></asp:Label>
                </strong>

            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

