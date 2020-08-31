<%@ Page Title="" Language="C#" MasterPageFile="~/Chair man/MasterChairMan.master" AutoEventWireup="true" CodeFile="SubjectToTeacher.aspx.cs" Inherits="Chair_man_SubjectToTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1"  width: 750px;" style="border-style: solid solid none solid; border-width: thin; border-color: #003366; width: 100%; height: 100px;">
        <tr>
            <td style="font-size: x-large; color: #003366; text-align: center" colspan="2"><strong><span style="font-size: xx-large">Assing Subjects To Teachers</span><br />
                <br />
                </strong></td>
        </tr>
        <tr>
            <td style="text-align: center; background-color: #E9ECF1; width: 448px; height: 27px;">
                <strong>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: bold; font-size: medium; color: #FFFFFF;" Text="Add New Teacher into Subject" Width="262px" CssClass="newStyle1" Height="36px" />
                </strong>
                <br />
            </td>
            <td style="text-align: center; background-color: #E9ECF1; width: 510px; height: 27px;" class="auto-style10">
                <strong>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: bold; font-size: medium; color: #FFFFFF;" Text=" The Teacher  Subject List" Width="262px" CssClass="newStyle1" Height="36px" />
                </strong>
            </td>
        </tr>
    
        <tr>
            <td colspan="2">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="auto-style9">
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 285px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 285px"><strong>
                                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="subject_ID,teacher_ID,level_id,block_id" DataSourceID="Sub_Tea_sqlSour" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="65px" Width="286px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                        <EditRowStyle BackColor="#999999" />
                                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                        <Fields>
                                            <asp:TemplateField HeaderText="Subject ID" SortExpression="subject_ID">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("subject_ID") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="subj" DataTextField="subject_name" DataValueField="subject_ID" Height="16px" SelectedValue='<%# Bind("subject_ID") %>' Width="130px">
                                                        <asp:ListItem>&quot;Select the subject&quot;</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="subj" runat="server" ConnectionString="<%$ ConnectionStrings:student_handsConnectionString %>" SelectCommand="SELECT [subject_ID], [subject_name] FROM [subjects]"></asp:SqlDataSource>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("subject_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Teacher ID" SortExpression="teacher_ID">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("teacher_ID") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceteacherid" DataTextField="teacher_name" DataValueField="teacher_ID" Height="16px" Width="131px" AppendDataBoundItems="True">
                                                        <asp:ListItem>&quot;Select Teacher&quot;</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceteacherid" runat="server" ConnectionString="<%$ ConnectionStrings:student_handsConnectionString %>" SelectCommand="SELECT [teacher_ID], [teacher_name] FROM [teachers]"></asp:SqlDataSource>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("teacher_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Level ID" SortExpression="level_id">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("level_id") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("level_id") %>' Width="131px">
                                                        <asp:ListItem Value="0">Select Level</asp:ListItem>
                                                        <asp:ListItem Value="1">First</asp:ListItem>
                                                        <asp:ListItem Value="2">Second</asp:ListItem>
                                                        <asp:ListItem Value="3">Third</asp:ListItem>
                                                        <asp:ListItem Value="4">Fourth</asp:ListItem>
                                                    </asp:DropDownList>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("level_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Block ID" SortExpression="block_id">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("block_id") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Bind("block_id") %>' Width="131px">
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
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("block_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                                        </Fields>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    </asp:DetailsView>
                                    </strong>
                                    <asp:SqlDataSource ID="Sub_Tea_sqlSour" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" DeleteCommand="DELETE FROM [sub_teachers] WHERE [subject_ID] = @original_subject_ID AND [teacher_ID] = @original_teacher_ID AND [level_id] = @original_level_id AND [block_id] = @original_block_id" InsertCommand="INSERT INTO [sub_teachers] ([subject_ID], [teacher_ID], [level_id], [block_id]) VALUES (@subject_ID, @teacher_ID, @level_id, @block_id)" OldValuesParameterFormatString="original_{0}" OnInserted="Sub_Tea_sqlSour_Inserted" SelectCommand="SELECT [subject_ID], [teacher_ID], [level_id], [block_id] FROM [sub_teachers]">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_subject_ID" Type="String" />
                                            <asp:Parameter Name="original_teacher_ID" Type="String" />
                                            <asp:Parameter Name="original_level_id" Type="String" />
                                            <asp:Parameter Name="original_block_id" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="subject_ID" Type="String" />
                                            <asp:Parameter Name="teacher_ID" Type="String" />
                                            <asp:Parameter Name="level_id" Type="String" />
                                            <asp:Parameter Name="block_id" Type="String" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 285px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: center"><strong>
                                    <asp:Label ID="MessageLable" runat="server" style="color: red"></asp:Label>
                                    </strong></td>
                            </tr>
                        </table>
                        <br />
                    </asp:View>
                    
                    <asp:View ID="View2" runat="server">
                            <br />
                        <table class="auto-style9" style="background-color: #F7F6F3; ">
                            <tr>
                                <td style="width: 173px; height: 28px;"><strong>Enter Teacher ID :</strong></td>
                                <td class="auto-style2" style="width: 185px; height: 28px;">
                                    <asp:TextBox ID="TextBox5" runat="server" Width="177px" style="background-color: #E2DED6"></asp:TextBox>
                                </td>
                                <td class="auto-style10" style="width: 613px; height: 28px">
                                    <strong>
                                    <asp:Button ID="Button3" runat="server" CssClass="newStyle1" Height="30px" style="font-weight: bold; color: #FFFFFF" Text="Search" Width="76px" />
                                    </strong>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table class="auto-style9">
                            <tr>
                                <td>&nbsp;</td>
                                <td style="width: 584px">
                                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                            <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                            <asp:BoundField DataField="teacher_ID" HeaderText="Teacher ID" SortExpression="teacher_ID" />
                                            <asp:BoundField DataField="teacher_name" HeaderText="Teacher Name" SortExpression="teacher_name" />
                                            <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                            <asp:BoundField DataField="block_id" HeaderText="Bkuck ID" SortExpression="block_id" />
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
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT * FROM [teacher_sub_view] WHERE ([teacher_ID] = @teacher_ID)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox5" Name="teacher_ID" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>


