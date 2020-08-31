<%@ Page Title="" Language="C#" MasterPageFile="~/IT_Admisitrator/MasterITAdmisitrator.master" AutoEventWireup="true" CodeFile="ITAdmin.aspx.cs" Inherits="IT_Admisitrator_ITAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>
                <table align="center" class="auto-style9" style="width: 53%; border: 2px solid #003366">
                    <tr>
                        <td class="newStyle16" colspan="3" style="text-align: center; font-size: x-large"><strong>Sign Up for Your New Account</strong></td>
                    </tr>
                    <tr>
                        <td style="width: 141px">&nbsp;</td>
                        <td style="width: 188px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-size: medium; color: #003366; width: 141px; height: 32px"><strong>User Name:</strong></td>
                        <td style="width: 188px; height: 32px">
                            <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td style="height: 32px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-size: medium; color: #003366; width: 141px"><strong>Password:&nbsp;</strong></td>
                        <td style="width: 188px">
                            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="Required" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-size: medium; color: #003366; width: 141px"><strong>Confirm Password:</strong></td>
                        <td style="width: 188px">
                            <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxRPass" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-size: medium; color: #003366; width: 141px"><strong>E-mail:</strong></td>
                        <td style="width: 188px">
                            <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid Email Id " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-size: medium; color: #003366; width: 141px; height: 31px;"><strong>Security Question: </strong></td>
                        <td style="width: 188px; height: 31px;">
                            <asp:TextBox ID="TextBoxSQ" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td style="height: 31px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxSQ" ErrorMessage="Security Question is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; font-size: medium; color: #003366; width: 141px"><strong>Security Answer:</strong></td>
                        <td style="width: 188px">
                            <asp:TextBox ID="TextBoxSAnswer" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxSAnswer" ErrorMessage="Security Answer is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 141px">&nbsp;</td>
                        <td style="width: 188px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 141px">&nbsp;</td>
                        <td style="width: 188px; text-align: center">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create User" />
                        </td>
                        <td>
                            <input id="Reset1" style="width: 76px" type="reset" value="reset" /></td>
                    </tr>
                    <tr>
                        <td style="width: 141px">&nbsp;</td>
                        <td style="width: 188px; text-align: center">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center;" colspan="3"><strong>
                            <asp:Label ID="LabelMasge" runat="server" style="color: #FF0000"></asp:Label>
                            </strong></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

