<%@ Page Title="" Language="C#" MasterPageFile="~/Register/MasterRegister.master" AutoEventWireup="true" CodeFile="studentMove.aspx.cs" Inherits="Register_studentMove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366">
        <tr>
            <td colspan="2" style="font-size: xx-large; text-align: center; color: #003366">

                <strong>Students Moving To Next Level</strong></td>
        </tr>
        <tr>
            <td colspan="2">

                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">

                <table class="auto-style9" style="background-color: #F7F6F3">
                    <tr>
                        <td style="font-size: medium; width: 126px"><strong>Select the Level :</strong></td>
                        <td style="width: 98px">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" style="margin-right: 0px; margin-bottom: 0px; background-color: #C0C0C0;" Width="134px">
                <asp:ListItem Value="0">Select level</asp:ListItem>
                <asp:ListItem Value="1">First</asp:ListItem>
                <asp:ListItem Value="2">Second</asp:ListItem>
                <asp:ListItem Value="3">Third</asp:ListItem>
                <asp:ListItem Value="4">Fourth</asp:ListItem>
            </asp:DropDownList>
                        </td>
                        <td style="width: 30px">&nbsp;</td>
                        <td style="width: 134px"><strong>Select Department:</strong></td>
                        <td style="width: 134px">
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="departmentSqlDataSource" DataTextField="dept_id" DataValueField="dept_id" Height="27px" Width="134px" style="background-color: #C0C0C0">
            <asp:ListItem>"Select Department"</asp:ListItem>
            </asp:DropDownList>
                        </td>
                        <td style="text-align: left">
                            <strong>
            <asp:Button ID="Button1" runat="server" Text="Search" Width="83px" OnClick="Button1_Click1" style="font-weight: bold; color: #FFFFFF;" CssClass="newStyle1" Height="30px" />
                            </strong>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    <tr>
        <td colspan="2" style="height: 37px">
            <asp:SqlDataSource ID="departmentSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [dept_id] FROM [departments]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table class="auto-style9">
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 451px">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="dept_id,subject_ID,block_id,level_id" DataSourceID="subjectSqlDataSource" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="dept_id" HeaderText="Department ID" ReadOnly="True" SortExpression="dept_id" />
                                        <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" ReadOnly="True" SortExpression="subject_ID" />
                                        <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                        <asp:BoundField DataField="level_id" HeaderText="Level ID" ReadOnly="True" SortExpression="level_id" />
                                        <asp:BoundField DataField="block_id" HeaderText="Block ID" ReadOnly="True" SortExpression="block_id" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <EmptyDataTemplate>
                                        <strong>
                                        <asp:Label ID="Label1" runat="server" ForeColor="#003366" Text="No Data To Display "></asp:Label>
                                        </strong>
                                    </EmptyDataTemplate>
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
                                <asp:SqlDataSource ID="subjectSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [dept_id], [subject_ID], [subject_name], [block_id], [level_id] FROM [subject_list_View] WHERE (([level_id] = @level_id) AND ([dept_id] = @dept_id))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="level_id" PropertyName="SelectedValue" Type="String" />
                                        <asp:ControlParameter ControlID="DropDownList2" Name="dept_id" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="width: 451px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table class="auto-style9" style="background-color: #F7F6F3">
                                    <tr>
                                        <td style="width: 126px"><strong>Enter Student ID:</strong></td>
                                        <td>&nbsp;</td>
                                        <td style="text-align: left; width: 164px;">
                                            <asp:TextBox ID="TextBox1" runat="server" Width="156px" style="background-color: #C0C0C0"></asp:TextBox>
                                        </td>
                                        <td style="text-align: left">
                                            <strong>
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: bold; color: #FFFFFF;" Text="Enroll Student" CssClass="newStyle1" Width="151px" />
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="background-color: #FFFFFF; text-align: center;" colspan="4">
                                            <strong>
                                            <asp:Label ID="MessageLable" runat="server" style="color: red"></asp:Label>
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
   
</table>

</asp:Content>

