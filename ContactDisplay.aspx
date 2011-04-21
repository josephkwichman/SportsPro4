<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactDisplay.aspx.cs" Inherits="ContactDisplay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Contact Display</title>
    <style type="text/css">
        .style1
        {
            height: 91px;
        }
    </style>
    
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
        <div><table width="400">
        <tr><td>
            <asp:Label ID="Label1" runat="server" Text="Contact List: " Font-Bold="True"></asp:Label>
        </td></tr>
        <tr>
        <td>
            <asp:ListBox ID="CustomerListBox" runat="server" Height="150px" Width="600px"></asp:ListBox>
        </td>   
        <td>
            <asp:Button ID="Button2" runat="server" Text="Remove Contact" Width="148px" 
                Font-Bold="True" onclick="Button2_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Empty List" Width="145px" 
                Font-Bold="True" onclick="Button3_Click" />
        </td> 
        
        </tr>
       
        
        <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Select Additional Customers" 
                PostBackUrl="~/CustomerDisplay.aspx" Font-Bold="True" 
                onclick="Button1_Click" />
        </td>
        <td>
          
        </td>
        </tr>
        
        </table>
        </div>

    </form>
</body>
</html>

