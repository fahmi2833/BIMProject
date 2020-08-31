<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Curriculum.aspx.cs" Inherits="Curriculum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: x-large;
            color: #003366;
            width: 828px;
            text-align: center;
        }
        .auto-style12 {
            font-size: 40pt;
            color: #003366;
            text-align: center;
        }
        .auto-style19 {
            width: 157px;
            text-align: center;
        }
        .auto-style24 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: center;
        }
        .auto-style25 {
            text-align: center;
        }
        .auto-style26 {
            width: 157px;
            font-size: large;
            color: #003366;
            text-align: left;
        }
        .auto-style27 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 166px;
            text-align: left;
        }
        .auto-style28 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 94px;
            text-align: left;
        }
        .auto-style29 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 156px;
            text-align: left;
        }
        .auto-style30 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 135px;
            text-align: left;
        }
        .auto-style31 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 88px;
            text-align: left;
        }
        .auto-style32
        {
            width: 58px;
            height: 58px;
        }
        .auto-style34
        {
            text-align: left;
        }
        .auto-style35
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: left;
        }
        .auto-style36
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: left;
            height: 41px;
            background-color: #FFFFFF;
        }
        .auto-style37
        {
            font-size: 40pt;
            color: #003366;
            text-align: center;
            height: 64px;
        }
        .auto-style38
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: center;
            width: 388px;
        }
        .auto-style39
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: left;
            height: 41px;
            width: 388px;
        }
        .auto-style40
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: left;
            width: 388px;
        }
        .auto-style42
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: x-large;
            color: #003366;
            width: 388px;
            text-align: center;
        }
        .auto-style43
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 388px;
            text-align: left;
        }
        .auto-style44
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 388px;
            text-align: left;
            height: 35px;
        }
        .auto-style45
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 88px;
            text-align: left;
            height: 35px;
        }
        .auto-style46
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 135px;
            text-align: left;
            height: 35px;
        }
        .auto-style47
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 156px;
            text-align: left;
            height: 35px;
        }
        .auto-style48
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 94px;
            text-align: left;
            height: 35px;
        }
        .auto-style49
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: large;
            color: #003366;
            width: 166px;
            text-align: left;
            height: 35px;
        }
        .auto-style50
        {
            width: 157px;
            font-size: large;
            color: #003366;
            text-align: left;
            height: 35px;
        }
        .auto-style51
        {
            text-align: left;
            height: 35px;
        }
        .auto-style54
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: left;
            background-color: #FFFFFF;
        }
        .auto-style55
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: center;
            height: 41px;
            background-color: #F3F3F3;
            width: 749px;
        }
        .auto-style56
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: center;
            height: 41px;
            background-color: #E4E4E3;
            width: 749px;
        }
        .auto-style57
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: center;
            background-color: #F3F3F3;
            width: 749px;
        }
        .auto-style58
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: center;
            width: 749px;
        }
        .auto-style60
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: center;
            background-color: #E4E4E3;
            width: 749px;
        }
        .auto-style61
        {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: xx-large;
            color: #003366;
            text-align: center;
            background-color: #F3F3F3;
        }
        .auto-style62
        {
            width: 650px;
            height: 11px;
            background-color: #003366;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width:100%;">
            <tr>
                <td colspan="11" class="auto-style37"><strong>Curriculum<br />
                    <hr class="auto-style62" /></strong></td>
            </tr>
            <tr>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style24" colspan="10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style56" colspan="5"><strong>Foundation Year</strong></td>
                <td class="auto-style36" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35" colspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style58" colspan="5">
                    <a href="PORTFOLIO/Foundation%20Year.rar"><img alt="" class="auto-style32" src="Imag/تنزيل%20(1).jpg" /></a></td>
                <td class="auto-style24" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44"></td>
                <td class="auto-style45"></td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style46"></td>
                <td class="auto-style47"></td>
                <td class="auto-style47" colspan="2"></td>
                <td class="auto-style48"></td>
                <td class="auto-style49"></td>
                <td class="auto-style50"></td>
                <td class="auto-style51"></td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style60" colspan="5"><strong>Bachelor Programme BIM</strong></td>
                <td class="auto-style54" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style54" colspan="10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style57" colspan="5"><strong>Year 1</strong></td>
                <td class="auto-style54" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35" colspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style58" colspan="5">
                    <a href="PORTFOLIO/Bachelor%20Programme%20BIM_2/Bachelor%20Programme%20BIM/Year%201.rar"><img alt="" class="auto-style32" src="Imag/تنزيل%20(1).jpg" /></a></td>
                <td class="auto-style35" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style55" colspan="5"><strong>Year 2</strong></td>
                <td class="auto-style36" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35" colspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style58" colspan="5">
                    <a href="PORTFOLIO/Bachelor%20Programme%20BIM_2/Bachelor%20Programme%20BIM/Year%202.rar"><img alt="" class="auto-style32" src="Imag/تنزيل%20(1).jpg" /></td>
                <td class="auto-style35" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style57" colspan="5"><strong>Year 3</strong></td>
                <td class="auto-style54" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35" colspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style58" colspan="5">
                    <a href="PORTFOLIO/Bachelor%20Programme%20BIM_2/Bachelor%20Programme%20BIM/Year%203.rar"><img alt="" class="auto-style32" src="Imag/تنزيل%20(1).jpg" /> </a></td>
                <td class="auto-style24" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style60" colspan="5"><strong>Bachelor Programme CNET</strong></td>
                <td class="auto-style54" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style54" colspan="10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style61" colspan="5"><strong>Year 1</strong></td>
                <td class="auto-style54" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35" colspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style24" colspan="5">
                    <a href="PORTFOLIO/Bachelor%20Programme%20CNET_2/Bachelor%20Programme%20CNET/Year%201.rar"><img alt="" class="auto-style32" src="Imag/تنزيل%20(1).jpg" /></a></a></td>
                <td class="auto-style35" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style61" colspan="5"><strong>Year 2</strong></td>
                <td class="auto-style54" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35" colspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style24" colspan="5">
                    <a href="PORTFOLIO/Bachelor%20Programme%20CNET_2/Bachelor%20Programme%20CNET/Year%202.rar"><img alt="" class="auto-style32" src="Imag/تنزيل%20(1).jpg" /></a></a></td>
                <td class="auto-style35" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style61" colspan="5"><strong>Year 3</strong></td>
                <td class="auto-style54" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style35" colspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
                    &nbsp;</td>
                <td class="auto-style24" colspan="5">
                    <a href="PORTFOLIO/Bachelor%20Programme%20CNET_2/Bachelor%20Programme%20CNET/Year%203.rar"><img alt="" class="auto-style32" src="Imag/تنزيل%20(1).jpg" /></a></td>
                <td class="auto-style35" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style9" colspan="8">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

