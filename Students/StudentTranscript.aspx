<%@ Page Title="" Language="C#" MasterPageFile="~/Students/MasterStudent.master" AutoEventWireup="true" CodeFile="StudentTranscript.aspx.cs" Inherits="Register_StudentMovingLevel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 
        <table class="auto-style9" style="border-style: solid solid none solid; border-width: thin; border-color: #003366; padding-top:1px;">

            <tr>
                <td  colspan="6" style="font-size: xx-large; color: #003366; text-align: center"><strong>Students Transcript</strong></td>
            </tr>

            <tr>
                <td  colspan="6">&nbsp;</td>
            </tr>

            <tr>
                <td style="width: 20%; height: 32px; background-color: #F7F6F3;"><strong>Enter Student ID:</strong></td>
                <td style="width: 158px; height: 32px; background-color: #F7F6F3;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px" style="background-color: #C0C0C0"></asp:TextBox>
                </td>
                <td style="width: 6%; height: 32px; background-color: #F7F6F3;"></td>
                <td style="width: 6%; height: 32px; background-color: #F7F6F3;">
                    <span style="color: #003366"><strong>Level:</strong></span></td>
                <td style="width: 12%; height: 32px; background-color: #F7F6F3;">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="20px" Width="134px" style="background-color: #C0C0C0">
                        <asp:ListItem Value="0">&quot;Select Level &quot;</asp:ListItem>
                        <asp:ListItem Value="1">First</asp:ListItem>
                        <asp:ListItem Value="2">Second</asp:ListItem>
                        <asp:ListItem Value="3">Thirth</asp:ListItem>
                        <asp:ListItem Value="4">Fourth</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 75%; height: 32px; background-color: #F7F6F3;">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" style="font-weight: bold" CssClass="newStyle17" Height="30px" Width="72px" />
                    </strong>
                </td>
            </tr>
            <tr><td>

                </td>

            </tr>

           

            <tr>
                <td  colspan="6">  <p>
        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
            <br />
            <asp:View ID="View1" runat="server">
                <div style="text-align: center">
                    <br />
                </div>
                <table style="width: 100%; border-color: #FFFFFF">
    
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;"><span style="color: #003366"><strong>LEVEL 1</strong></span></td>
                        <td style="width: 28px">&nbsp;</td>
                        <td style="text-align: center; color: #003366">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;">&nbsp;</td>
                        <td style="width: 28px">&nbsp;</td>
                        <td style="text-align: center; color: #003366">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;"><strong>BLUCK 1</strong></td>
                        <td style="width: 28px">&nbsp;</td>
                        <td style="text-align: center; color: #003366">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL1B1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="657px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label3" runat="server" ForeColor="#000099" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL1B1" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and Level_id=1 and bluck_id=1)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 28px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;"><strong>BLUCK 2</strong></td>
                        <td style="width: 28px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;">&nbsp;</td>
                        <td style="width: 28px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;">
                            <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL1B5" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="657px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label18" runat="server" ForeColor="#000099" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL1B5" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT [subject_name], [marks_portfolio], [marks_exam], [bluck_ID], [level_id], [student_ID], [subject_ID] FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID AND level_id=1 AND bluck_ID=2)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 28px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;">&nbsp;</td>
                        <td style="width: 28px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;"><strong>&nbsp;BLUCK 3</strong></td>
                        <td style="width: 28px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL1B3" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="654px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label4" runat="server" ForeColor="#000099" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL1B3" runat="server" ConnectionString="<%$ ConnectionStrings:Student_handConnectionString %>" SelectCommand="SELECT * FROM [studentMarkView1] WHERE ([student_ID] = @student_ID and level_id=1 and bluck_id=3)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px; color: #003366; text-align: center;"><strong>&nbsp;BLUCK 4</strong></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 533px">
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL1B4" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="657px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label5" runat="server" ForeColor="#0000CC" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL1B4" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and Level_id=1 and bluck_ID=4)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </asp:View>
            <br />
            <asp:View ID="View2" runat="server">
                <table style="width:100%;">
                    
                    <tr>
                        <td style="width: 613px; color: #003366; text-align: center"><strong>LEVEL 2</strong></td>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px; color: #003366; text-align: center">&nbsp;</td>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px; color: #003366; text-align: center"><strong>&nbsp;BLUCK 1</strong></td>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px">
                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL2B1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="668px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label6" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL2B1" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" 
                                SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=2 and bluck_id=1)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px">&nbsp;</td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px; text-align: center;"><strong>&nbsp;<span style="color: #003366">BLUCK 2</span></strong></td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px">
                            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL2B2" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="665px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label7" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL2B2" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=2 and bluck_id=2)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px">&nbsp;</td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px; text-align: center; color: #003366"><strong>&nbsp;BLUCK 3</strong></td>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="text-align: center; color: #003366">&nbsp;</td>
                    </tr>
                  
                    <tr>
                        <td style="width: 613px">
                            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL2B3" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="665px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label8" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL2B3" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=2 and bluck_id=3)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px; color: #003366; text-align: center;">&nbsp;</td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px; text-align: center; color: #003366;"><strong>&nbsp;BLUCK 4</strong></td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 613px">
                            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL2B4" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="659px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label9" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL2B4" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=2 and bluck_id=4)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 8px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table class="auto-style9">
                  
                    <tr>
                        <td style="width: 607px; text-align: center; color: #003366"><strong>LEVEL 3</strong></td>
                        <td style="width: 9px">&nbsp;</td>
                        <td style="text-align: center; color: #003366">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px; text-align: center; color: #003366">&nbsp;</td>
                        <td style="width: 9px">&nbsp;</td>
                        <td style="text-align: center; color: #003366">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px; text-align: center; color: #003366"><strong>&nbsp;BLUCK 1</strong></td>
                        <td style="width: 9px">&nbsp;</td>
                        <td style="text-align: center; color: #003366">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px">
                            <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL3B1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="669px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label10" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL3B1" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" 
                                SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=3 and bluck_id=1)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px; text-align: center;">&nbsp;</td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px; text-align: center;"><strong>&nbsp;<span style="color: #003366">BLUCK 2</span></strong></td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px">
                            <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL3B5" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="667px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label19" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL3B5" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID  and level_id=3 and bluck_id=2)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px">&nbsp;</td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px; text-align: center; color: #003366"><strong>&nbsp;BLUCK 3</strong></td>
                        <td style="width: 9px">&nbsp;</td>
                        <td style="text-align: center; color: #003366">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px">
                            <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL3B3" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="664px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label12" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL3B3" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" 
                                SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=3 and bluck_id=3)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px">&nbsp;</td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px; text-align: center; color: #003366;"><strong>&nbsp;BLUCK 4</strong></td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 607px">
                            <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL3B4" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="663px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText=" Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label13" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL3B4" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID  and level_id=3 and bluck_id=4)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 9px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <table class="auto-style9">
                 
                    <tr>
                        <td style="width: 587px; text-align: center; color: #003366"><strong>LEVEL 4</strong></td>
                        <td style="width: 10px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px; text-align: center; color: #003366">&nbsp;</td>
                        <td style="width: 10px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px; text-align: center; color: #003366"><strong>&nbsp;BLUCK 1</strong></td>
                        <td style="width: 10px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px">
                            <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL4B1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="671px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label17" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL4B1" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" 
                                SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=4 and bluck_id=1)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px">&nbsp;</td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px; text-align: center;"><strong>&nbsp;<span style="color: #003366">BLUCK 2</span></strong></td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px">
                            <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL4B5" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="670px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText=" Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label20" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL4B5" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=4 and bluck_id=2)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px">&nbsp;</td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px; color: #003366; text-align: center"><strong>BLUCK 3</strong></td>
                        <td style="width: 10px">&nbsp;</td>
                        <td style="color: #003366; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px">
                            <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL4B3" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="672px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label16" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL4B3" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>"
                                 SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=4 and bluck_id=3)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px">&nbsp;</td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px; text-align: center;"><strong>&nbsp;<span style="color: #003366">BLUCK 4</span></strong></td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 587px">
                            <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceL4B4" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="669px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="student_ID" HeaderText="Student ID" SortExpression="student_ID" />
                                    <asp:BoundField DataField="subject_ID" HeaderText="Subject ID" SortExpression="subject_ID" />
                                    <asp:BoundField DataField="subject_name" HeaderText="Subject Name" SortExpression="subject_name" />
                                    <asp:BoundField DataField="marks_portfolio" HeaderText="Marks Portfolio" SortExpression="marks_portfolio" />
                                    <asp:BoundField DataField="marks_exam" HeaderText="Marks Exam" SortExpression="marks_exam" />
                                    <asp:BoundField DataField="bluck_ID" HeaderText="Bluck ID" SortExpression="bluck_ID" />
                                    <asp:BoundField DataField="level_id" HeaderText="Level ID" SortExpression="level_id" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <EmptyDataTemplate>
                                    <strong>
                                    <asp:Label ID="Label15" runat="server" ForeColor="#003399" Text="No Data To Display"></asp:Label>
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
                            <asp:SqlDataSource ID="SqlDataSourceL4B4" runat="server" ConnectionString="<%$ ConnectionStrings:student_handConnectionString %>" SelectCommand="SELECT * FROM [StudentMarkView1] WHERE ([student_ID] = @student_ID and level_id=4 and bluck_id=4)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="student_ID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 10px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <br />
        </asp:MultiView>&nbsp;</td>
            </tr>
        </table>
   
  
       
  
</asp:Content>

