<%@ Page Title="" Language="C#" MasterPageFile="~/Register/MasterRegister.master" AutoEventWireup="true" CodeFile="studListQuary.aspx.cs" Inherits="Register_studListQuary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="border-style: solid solid none solid; border-width: thin; border-color: #003366; width: 100%; ">
        <tr>
            <td style="font-size: x-large; color: #003366; text-align: center"><strong><span style="font-size: xx-large">STUDENT LIST QUARY</span><br />
                <br />
                </strong>
                <table class="auto-style1" style="background-color: #F7F6F3; width: 579px;" align="center">
                    <tr>
                        <td style="font-size: medium; width: 218px; height: 32px;"><strong>Select Department ID:</strong></td>
                        <td style="width: 100px; height: 32px;">
                           
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SLQ" DataTextField="dept_id" DataValueField="dept_id" Height="23px" Width="139px" style="background-color: #C0C0C0">
                          <asp:ListItem>"Select Department"</asp:ListItem>
                                  </asp:DropDownList>
                        </td>
                        <td style="font-size: medium; width: 124px; height: 32px;"><strong>Select Level:</strong></td>
                        <td style="width: 87px; height: 32px;">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="139px" style="margin-bottom: 0px; background-color: #C0C0C0">
                                <asp:ListItem Value="0">Select Level</asp:ListItem>
                                <asp:ListItem Value="1">First</asp:ListItem>
                                <asp:ListItem Value="2">Second</asp:ListItem>
                                <asp:ListItem Value="3">Third</asp:ListItem>
                                <asp:ListItem Value="4">Fourth</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="text-align: left; height: 32px;">
                            <strong>
                            <asp:Button ID="Button1" runat="server" Text="Search" CssClass="newStyle1" style="color: #FFFFFF; font-weight: bold" />
                            </strong>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="height: 37px">
                <asp:SqlDataSource ID="SLQ" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT [dept_id], [dept_name] FROM [departments]"></asp:SqlDataSource>
            </td>
        </tr>
       
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style9">
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 619px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="student_ID" DataSourceID="studlistquary" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="626px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="student_ID" HeaderText="Student ID" ReadOnly="True" SortExpression="student_ID" />
                        <asp:BoundField DataField="student_name" HeaderText="Student Name" SortExpression="student_name" />
                        <asp:BoundField DataField="dept_id" HeaderText="Dept ID" SortExpression="dept_id" />
                        <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                        <asp:BoundField DataField="secondary_rate" HeaderText="Secondary Rate" SortExpression="secondary_rate" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
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
                <asp:SqlDataSource ID="studlistquary" runat="server" ConnectionString="<%$ ConnectionStrings:student_handsConnectionString %>" SelectCommand="SELECT [student_ID], [student_name], [dept_id], [level_id], [secondary_rate], [status], [note] FROM [students] WHERE (([dept_id] = @dept_id) AND ([level_id] = @level_id))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="dept_id" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="level_id" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

