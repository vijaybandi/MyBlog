﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="atcview.aspx.cs" Inherits="atcview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文章浏览</title>

    <script type="text/javascript">

        function btnClose_onclick() {
            window.close();
        }
        function btnRemark_onclick() {
            var id = "<%=id %>";
            window.open("newremark.aspx?atcid=" + id, "newwindow", "height=250,width=500");
        }

        function btnViewRemark_onclick() {
            var id = "<%=id %>";
            window.open("viewRemark.aspx?atcid=" + id);
        }

    </script>

    <style type="text/css">
        .banner
        {
            width: 1000px;
            margin-left: auto;
            margin-right: auto;
        }
        .main
        {
            margin-top: 3px;
            width: 1000px;
            margin-left: auto;
            margin-right: auto;
        }
        .left
        {
            padding-top: 20px;
            background-color: Gray;
            float: left;
            text-align: center;
            border-color: Red;
            border-width: 2px;
            width: 200px;
            height: 450px;
            font-family: "幼圆";
            font-size: medium;
        }
        .right
        {
            margin-left: 10px;
            padding-top: 20px;
            border-color: Red;
            border-width: 2px;
            color: White;
            background-color: InfoText;
            width: 790px;
            height: 450px;
        }
        .copyright
        {
            float: none;
            margin-top: 30px;
            width: 1000px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            font-family: "新宋体";
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="banner">
        <img src="images/banner.jpg" />
    </div>
    <div class="main">
        <table border="0" cellspacing="0" cellpadding="0" width="100%">
            <tr>
                <td style="text-align: center; margin-top: 3px;">
                    <hr style="color: Blue" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <asp:Label ID="lblTitle" runat="server" Text="文章标题" Font-Bold="True" ForeColor="Blue"></asp:Label>
                    <br />
                    <hr />
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <asp:Label ID="lblInfo" runat="server" Font-Bold="False" Font-Size="14px" 
                        ForeColor="#009933"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMain" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <br />
                    <input id="btnClose" style="height: 20px; width: 80px;" type="button" value="关闭窗口"
                        onclick="return btnClose_onclick()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="btnViewRemark" type="button" value="查看评论" style="height: 20px; width: 80px"
                        onclick="return btnViewRemark_onclick()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="btnRemark" type="button" value="发表评论" style="height: 20px; width: 80px"
                        onclick="return btnRemark_onclick()" />
                </td>
            </tr>
        </table>
    </div>
    <div class="copyright">
        <hr />
        版权所有(C)VXer E-Mail: vxer@qq.com<br />
        未经作者许可不得以任何方式任何用途转载本站内容
    </div>
    </form>
</body>
</html>
