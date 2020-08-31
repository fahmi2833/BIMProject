<%@ Page Title="" Language="C#" MasterPageFile="~/Chair man/MasterChairMan.master" AutoEventWireup="true" CodeFile="SubjectForm.aspx.cs" Inherits="Chair_man_SubjectForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366">
        <tr>
            <td style="font-size: xx-large; text-align: center; color: #336699"><strong>Subject Form<br />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style9">
                    <tr>
                        <td style="text-align: center; background-color: #E9ECF1; width: 476px;">
                            <strong>
                            <asp:Button ID="Button1" runat="server" Text="Add New Subject" OnClick="Button1_Click" style="font-weight: bold; color: #FFFFFF;" CssClass="newStyle1" Height="31px" Width="165px" />
                            </strong>
                        </td>
                        <td style="text-align: center; background-color: #E9ECF1;">
                            <strong>
                            <asp:Button ID="Button2" runat="server" Text="Subects List" OnClick="Button2_Click" style="font-weight: bold; color: #FFFFFF;" CssClass="newStyle1" Height="31px" Width="165px" />
                            </strong>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="subject_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="385px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                            <EditRowStyle BackColor="#999999" />
                            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" ReadOnly="True" SortExpression="subject_ID" />
                                <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                <asp:TemplateField HeaderText="Bluck ID" SortExpression="bluck_ID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("bluck_ID") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" SelectedValue='<%# Bind("bluck_ID") %>' Width="170px">
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
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("bluck_ID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="hours_subject" HeaderText="Hours Subject" SortExpression="hours_subject" />
                                <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" DeleteCommand="DELETE FROM [subjects] WHERE [subject_ID] = @original_subject_ID AND (([subject_name] = @original_subject_name) OR ([subject_name] IS NULL AND @original_subject_name IS NULL)) AND (([bluck_ID] = @original_bluck_ID) OR ([bluck_ID] IS NULL AND @original_bluck_ID IS NULL)) AND (([hours_subject] = @original_hours_subject) OR ([hours_subject] IS NULL AND @original_hours_subject IS NULL))" InsertCommand="INSERT INTO [subjects] ([subject_ID], [subject_name], [bluck_ID], [hours_subject]) VALUES (@subject_ID, @subject_name, @bluck_ID, @hours_subject)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [subjects]" UpdateCommand="UPDATE [subjects] SET [subject_name] = @subject_name, [bluck_ID] = @bluck_ID, [hours_subject] = @hours_subject WHERE [subject_ID] = @original_subject_ID AND (([subject_name] = @original_subject_name) OR ([subject_name] IS NULL AND @original_subject_name IS NULL)) AND (([bluck_ID] = @original_bluck_ID) OR ([bluck_ID] IS NULL AND @original_bluck_ID IS NULL)) AND (([hours_subject] = @original_hours_subject) OR ([hours_subject] IS NULL AND @original_hours_subject IS NULL))" OnInserted="SqlDataSource1_Inserted">
                            <DeleteParameters>
                                <asp:Parameter Name="original_subject_ID" Type="String" />
                                <asp:Parameter Name="original_subject_name" Type="String" />
                                <asp:Parameter Name="original_bluck_ID" Type="String" />
                                <asp:Parameter Name="original_hours_subject" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="subject_ID" Type="String" />
                                <asp:Parameter Name="subject_name" Type="String" />
                                <asp:Parameter Name="bluck_ID" Type="String" />
                                <asp:Parameter Name="hours_subject" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="subject_name" Type="String" />
                                <asp:Parameter Name="bluck_ID" Type="String" />
                                <asp:Parameter Name="hours_subject" Type="Int32" />
                                <asp:Parameter Name="original_subject_ID" Type="String" />
                                <asp:Parameter Name="original_subject_name" Type="String" />
                                <asp:Parameter Name="original_bluck_ID" Type="String" />
                                <asp:Parameter Name="original_hours_subject" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <table class="auto-style9">
                            <tr>
                                <td style="text-align: center"><strong>
                                    <asp:Label ID="LabelMassge" runat="server" style="color: red"></asp:Label>
                                    </strong></td>
                            </tr>
                        </table>
                        <br />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="subject_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" ReadOnly="True" SortExpression="subject_ID" />
                                <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                <asp:BoundField DataField="bluck_ID" HeaderText=" Bluck ID" SortExpression="bluck_ID" />
                                <asp:BoundField DataField="hours_subject" HeaderText="Hours Subject" SortExpression="hours_subject" />
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
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

