<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="SurveyComplete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <h1 style="color: #0099CC; font-size: X-Large; font-weight: bold; font-style: italic; font-family: Mistral;">SportsPro</h1>
    </div>
    <div style="color: #FF0000; font-size: X-Large; font-family: Mistral; height: 70px;">Sports management software for the 
        sports enthusiast<br />
        <br /><br /> 
    </div>
     <p>
         Thank you for your feedback!</p>
     <asp:Label ID="lblReturnCntct" runat="server" 
         Text="A customer service representative will contact you within 24 hours."></asp:Label>
     <br />
     <asp:Button ID="btnReturn" runat="server" onclick="btnReturn_Click" 
         Text="Return to Survey" />
    </form>
</body>
</html>
