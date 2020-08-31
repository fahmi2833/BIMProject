<%@ Page Title="" Language="C#" MasterPageFile="~/Chair man/MasterChairMan.master" AutoEventWireup="true" CodeFile="StudentMoveBluck.aspx.cs" Inherits="Chair_man_StudentMoveBluck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366">
        <tr>
            <td colspan="3" style="text-align: center; font-size: xx-large; color: #003366; height: 47px;">

                <strong>Students Moving To Next Bluck</strong></td>
        </tr>
        
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDept" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT [dept_id] FROM [departments]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <table class="auto-style9" style="background-color: #F7F6F3">
                    <tr>
                        <td style="width: 154px"><strong>Enter Department:</strong></td>
                        <td style="width: 110px">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDept" DataTextField="dept_id" DataValueField="dept_id" Height="20px" Width="109px" style="background-color: #C0C0C0">
                           <asp:ListItem>"Select Department"</asp:ListItem>
                                 </asp:DropDownList>
                        </td>
                        <td style="width: 118px"><strong>Enter Level</strong>:</td>
                        <td style="width: 103px">
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="109px" style="background-color: #C0C0C0">
                                <asp:ListItem Value="0">Select Level</asp:ListItem>
                                <asp:ListItem Value="1">First</asp:ListItem>
                                <asp:ListItem Value="2">Second</asp:ListItem>
                                <asp:ListItem Value="3">Third</asp:ListItem>
                                <asp:ListItem Value="4">Fourth</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 144px">
                            &nbsp;<strong>Enter Bluck:</strong></td>
                        <td style="width: 110px">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="109px" style="background-color: #C0C0C0">
                                <asp:ListItem>Select Bluck</asp:ListItem>
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
                        </td>
                        <td><strong>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: bold; color: #FFFFFF;" Text="Search" CssClass="newStyle1" Height="27px" Width="82px" />
                            </strong></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="auto-style9">
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 198px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: justify">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="subject_ID,level_id,block_id,dept_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" ReadOnly="True" SortExpression="subject_ID" />
                                            <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                            <asp:BoundField DataField="level_id" HeaderText="Level ID" ReadOnly="True" SortExpression="level_id" />
                                            <asp:BoundField DataField="block_id" HeaderText="Bluck ID" ReadOnly="True" SortExpression="block_id" />
                                            <asp:BoundField DataField="dept_id" HeaderText="Department ID" ReadOnly="True" SortExpression="dept_id" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT * FROM [subject_list_View] WHERE (([dept_id] = @dept_id) AND ([block_id] = @block_id) AND ([level_id] = @level_id))">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="dept_id" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownList2" Name="block_id" PropertyName="SelectedValue" Type="Int32" />
                                            <asp:ControlParameter ControlID="DropDownList3" Name="level_id" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 198px">
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <table style="width: 100%; background-color: #F7F6F3">
                                        <tr>
                                            <td style="width: 143px"><strong>Enter Student ID:</strong></td>
                                            <td style="width: 196px">
                                                <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="188px" style="background-color: #C0C0C0"></asp:TextBox>
                                            </td>
                                            <td style="text-align: left">
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: bold; color: #FFFFFF;" Text="Enroll Student" CssClass="newStyle1" Width="141px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>&nbsp;<strong><asp:Label ID="MessageLable" runat="server" style="color: #FF0000"></asp:Label>
                                </strong></td>
        </tr>
        </table>
</asp:Content>

