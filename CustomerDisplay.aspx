<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerDisplay.aspx.cs" Inherits="CustomerDisplay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Sports Pro</title>  
    
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
    <div style="color: #FF0000; font-family: Mistral; height: 50px; font-size: X-Large;">Sports management software for the 
        sports enthusiast</div>
        <div><table style="width: 269px">
        <tr>
        <td class="style1">
            <asp:Label ID="Label1" runat="server" Text="Select a customer:  " Width="120px"></asp:Label>
        </td>
        <td class="style1"></td><td class="style1"></td>
        <td class="style1">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="AccessDataSource1" DataTextField="Name"
            DataValueField="CustomerID" Width="250">
            </asp:DropDownList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/TechSupport.mdb" 
            SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customers] ORDER BY [Name]" >
            </asp:AccessDataSource>
        </td>        
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Address:  "></asp:Label>
            </td>
            <td>
            </td>
            <td></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
        
        </tr>
        <tr>
        <td>
        </td>
        <td>
        </td>
        <td>
        </td>
        <td>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Phone: "></asp:Label>
        </td>
        <td>
        </td>
        <td></td>
        <td>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Email: "></asp:Label>
        </td>
        <td>
        </td><td></td>
        <td>
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
        </td>
        </tr>
        <tr><td></td>
        </tr>
        <tr><td>
         <asp:Button ID="Button1" runat="server" Text="Add to Contact List" 
        Width="191px" Font-Bold="True" onclick="Button1_Click" />
        </td>
        <td></td><td></td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Display Contact List" 
                Font-Bold="True" PostBackUrl="~/ContactDisplay.aspx" 
                onclick="Button2_Click" />
        </td>
        </tr>
        <tr><td>
            <asp:Label ID="Label9" runat="server" 
                Text="This Customer is already in Contact List. Please Select another Customer. " 
                Font-Bold="True" ForeColor="Red"></asp:Label>
        
        </td>
        
        </tr>
        
        </table>
        </div>
   
    </form>
</body>
</html>
