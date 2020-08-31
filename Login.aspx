<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9
        {
            width: 100%;
        }
        .auto-style10
        {
            width: 222px;
        }
        .auto-style11
        {
            text-align: left;
        }
        .auto-style12
        {
            font-size: large;
        }
        .auto-style13
        {
            font-weight: bold;
        }
        .auto-style14
        {
            color: #003366;
        }
        .newStyle16
        {
            background-color: #003366;
            color: #FFFFFF;
        }
        .auto-style16
        {
            height: 268px;
            width: 503px;
        }
        .auto-style17
        {
            width: 500px;
            text-align: center;
            height: 47px;
        }
        .auto-style18
        {
            height: 47px;
        }
        .auto-style20
    {
        width: 500px;
        height: 427px;
    }
    .auto-style21
    {
        height: 303px;
    }
    .auto-style22
    {
        width: 500px;
        height: 303px;
    }
    .auto-style23
    {
        width: 501px;
        height: 119px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style17">
                <img alt="" class="auto-style23" src="Imag/15731487-the-word-login-with-gear-wheel-on-white-background-3d-illustration.jpg" /></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                <asp:Login ID="Login1" runat="server" Height="268px" Width="415px">
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" class="auto-style16">
                                        <tr class="newStyle16">
                                            <td align="center" class="auto-style12" colspan="2">Enter your username and password </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style11" style="background-color: #FFFFFF"><strong>
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="auto-style14">User Name:</asp:Label>
                                                </strong></td>
                                            <td style="background-color: #FFFFFF">
                                                <asp:TextBox ID="UserName" runat="server" Width="274px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style11" style="background-color: #FFFFFF"><strong>
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="auto-style14">Password:</asp:Label>
                                                </strong></td>
                                            <td style="background-color: #FFFFFF">
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="269px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="background-color: #FFFFFF"><strong>
                                                <asp:CheckBox ID="RememberMe" runat="server" CssClass="auto-style14" Text="Remember me next time." />
                                                </strong></td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="background-color: #FFFFFF;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False" Text="Login Forgot Password"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2" style="background-color: #FFFFFF"><strong>
                                                <asp:Button ID="LoginButton" runat="server" BackColor="#C4E1FF" CommandName="Login" CssClass="auto-style13" Text="Log In" ValidationGroup="Login1" Width="91px" />
                                                </strong></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:Login>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

