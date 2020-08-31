<%@ Page Title="" Language="C#" MasterPageFile="~/Chair man/MasterChairMan.master" AutoEventWireup="true" CodeFile="TeacherForm.aspx.cs" Inherits="Chair_man_TeacherForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="caption-side: top">  <table style="border-style: solid solid none solid; border-width: thin; border-color: #003366; margin-right: 49px;" class="auto-style9">
        <tr>
            <td style="font-size: xx-large; color: #003366; text-align: center; height: 59px;"><strong>The Teacher Form</strong></td>
        </tr>
        <tr>
            <td>

                <asp:SqlDataSource ID="TeacherForm" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" DeleteCommand="DELETE FROM [teachers] WHERE [teacher_ID] = @original_teacher_ID" InsertCommand="INSERT INTO [teachers] ([teacher_ID], [teacher_name], [techer_address], [specializtion], [qualification], [dept_id]) VALUES (@teacher_ID, @teacher_name, @techer_address, @specializtion, @qualification, @dept_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [teachers]" UpdateCommand="UPDATE [teachers] SET [teacher_name] = @teacher_name, [techer_address] = @techer_address, [specializtion] = @specializtion, [qualification] = @qualification, [dept_id] = @dept_id WHERE [teacher_ID] = @original_teacher_ID" OnInserted="TeacherForm_Inserted" OnInserting="TeacherForm_Inserting">
                    <DeleteParameters>
                        <asp:Parameter Name="original_teacher_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="teacher_ID" Type="String" />
                        <asp:Parameter Name="teacher_name" Type="String" />
                        <asp:Parameter Name="techer_address" Type="String" />
                        <asp:Parameter Name="specializtion" Type="String" />
                        <asp:Parameter Name="qualification" Type="String" />
                        <asp:Parameter Name="dept_id" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="teacher_name" Type="String" />
                        <asp:Parameter Name="techer_address" Type="String" />
                        <asp:Parameter Name="specializtion" Type="String" />
                        <asp:Parameter Name="qualification" Type="String" />
                        <asp:Parameter Name="dept_id" Type="String" />
                        <asp:Parameter Name="original_teacher_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    
     
        <tr>
            <td>
                <table style="width: 100%; background-color: #E9ECF1">
                    <tr>
                        <td style="text-align: center; width: 343px">
                <strong>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: bold; font-size: medium; color: #FFFFFF;" Text="Add New Teacher" CssClass="newStyle1" Height="32px" />
                </strong>
                        </td>
                        <td style="text-align: center">
                <strong>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: bold; font-size: medium; color: #FFFFFF;" Text="Teacher List" Width="203px" CssClass="newStyle1" Height="32px" />
                </strong>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="teacher_ID" DataSourceID="TeacherForm" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="16px" Width="301px" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                            <EditRowStyle BackColor="#999999" />
                            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="teacher_ID" HeaderText="Teacher ID" ReadOnly="True" SortExpression="teacher_ID" />
                                <asp:BoundField DataField="teacher_name" HeaderText="Teacher Name" SortExpression="teacher_name" />
                                <asp:BoundField DataField="techer_address" HeaderText="Techer Address" SortExpression="techer_address" />
                                <asp:TemplateField HeaderText="Specializtion" SortExpression="specializtion">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("specializtion") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" SelectedValue='<%# Bind("specializtion") %>' Width="170px">
                                            <asp:ListItem>Select Specializtion</asp:ListItem>
                                            <asp:ListItem>IT</asp:ListItem>
                                            <asp:ListItem>Math</asp:ListItem>
                                            <asp:ListItem>Network</asp:ListItem>
                                            <asp:ListItem>Engeener</asp:ListItem>
                                        </asp:DropDownList>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("specializtion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Qualification" SortExpression="qualification">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" SelectedValue='<%# Bind("qualification") %>' Width="170px">
                                            <asp:ListItem>Select Qualification</asp:ListItem>
                                            <asp:ListItem>MS</asp:ListItem>
                                            <asp:ListItem>MSS</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Department ID" SortExpression="dept_id">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("dept_id") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="DEPT" DataTextField="dept_name" DataValueField="dept_id" Height="32px" Width="170px" AppendDataBoundItems="True">
                                       <asp:ListItem>"Select Departement"</asp:ListItem>
                                             </asp:DropDownList>
                                        <asp:SqlDataSource ID="DEPT" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [dept_id], [dept_name] FROM [departments]"></asp:SqlDataSource>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("dept_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
                            </Fields>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        </asp:DetailsView>
                        <br />
                        <table class="auto-style9">
                            <tr>
                                <td style="text-align: center"><strong>
                                    <asp:Label ID="LabelMasge" runat="server" style="color: red"></asp:Label>
                                    </strong></td>
                            </tr>
                        </table>
                        <br />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="teacher_ID" DataSourceID="TeacherForm" ForeColor="#333333" GridLines="None" Width="664px" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="teacher_ID" HeaderText="Teacher ID" ReadOnly="True" SortExpression="teacher_ID" />
                                <asp:BoundField DataField="teacher_name" HeaderText="Teacher Name" SortExpression="teacher_name" />
                                <asp:BoundField DataField="techer_address" HeaderText="Techer Address" SortExpression="techer_address" />
                                <asp:BoundField DataField="specializtion" HeaderText="Specializtion" SortExpression="specializtion" />
                                <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
                                <asp:BoundField DataField="dept_id" HeaderText="Departmet ID" SortExpression="dept_id" />
                                <asp:CommandField ShowDeleteButton="True" />
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
                    </asp:View>
                </asp:MultiView>  <br />
                <br />
            </td>
        </tr>
    </table>
      </div>
</asp:Content>

