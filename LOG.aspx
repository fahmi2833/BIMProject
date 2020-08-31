<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LOG.aspx.cs" Inherits="LOG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13
        {
            width: 100%;
        }
        .auto-style15
        {
            width: 87px;
            text-align: right;
        }
        .auto-style16
        {
            width: 148px;
        }
        .auto-style18
        {
            text-align: center;
        }
        .auto-style20
        {
            text-align: center;
            background-color: #003366;
        }
        .auto-style21
        {
            width: 87px;
            text-align: right;
            color: #003366;
        }
        .auto-style22
        {
            color: #FFFFFF;
        }
        .newStyle16
        {
            border: thin inset #003366;
        }
        .auto-style23
        {
            width: 81px;
        }
        .auto-style24
        {
            width: 87px;
            text-align: right;
            color: #003366;
            height: 32px;
        }
        .auto-style25
        {
            width: 148px;
            height: 32px;
        }
        .auto-style26
        {
            height: 32px;
        }
        .auto-style27
        {
            font-weight: bold;
        }
        .auto-style28
        {
            text-align: left;
            color: #003366;
        }
    .auto-style29
    {
        color: #FF0000;
    }
        .auto-style19
        {
            width: 466px;
            height: 135px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
        <tr>
            <td class="auto-style18" colspan="3">
                <img alt="" class="auto-style19" src="template/LOGIN/assets/img/15731487-the-word-login-with-gear-wheel-on-white-background-3d-illustration.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <table align="center" class="newStyle16">
                    <tr>
                        <td class="auto-style20" colspan="3"><span class="auto-style22">Enter your username and password</span> </td>
                    </tr>
                    <tr>
                        <td class="auto-style28" colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21"><strong>User Name:</strong></td>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBoxusername" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxusername" ErrorMessage="Plase enter your user name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24"><strong>Password:</strong></td>
                        <td class="auto-style25">
                            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                        </td>
                        <td class="auto-style26">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Plase enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18" colspan="2"><strong>
                            <asp:Label ID="lableMasge" runat="server" CssClass="auto-style29"></asp:Label>
                            </strong></td>
                        <td class="auto-style18">
                            <strong>
                            <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="Login" Width="69px" CssClass="auto-style27" />
                            </strong>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

