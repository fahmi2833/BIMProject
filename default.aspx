<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="HOME" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9
    {
        width: 100%;
        background-image: url('Imag/image-47131745-hi-tech-backgrounds.jpg');
    }
    .auto-style10
    {
        color: #FFFFFF;
        text-align: center;
    }
        .auto-style13
        {
            font-size: 40pt;
        }
        .auto-style14
        {
            font-size: 50pt;
        }
        .auto-style15
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9" style="width: 100%">
    <tr>
        <td>
            <span class="auto-style13"><strong>WELCOME TO</strong></span></td>
    </tr>
    <tr>
        <td>
            <h1 class="auto-style14">STUDENTS HANDS</h1>
        </td>
    </tr>
    <tr>
        <td>
            <h2 class="auto-style13">
                SYSTEM</h2>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register/studentMove.aspx">HyperLink</asp:HyperLink>
                </p>
            <p>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Chair man/scoreUpdate.aspx">HyperLink</asp:HyperLink>
                </p>
            <p class="auto-style15">
                <asp:Label ID="Welcome" runat="server"></asp:Label>
&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="16px" OnClick="Button1_Click" Text="Button" Width="16px" />
            </p>
        </td>
    </tr>
</table>
</asp:Content>

