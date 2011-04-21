<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerSurvey.aspx.cs" Inherits="CustomerSurvey" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 165px;
        }
        .style2
        {
            width: 165px;
            height: 21px;
        }
        .style3
        {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" defaultfocus="txtbxCustID">
    <div>
        <h1 style="color: #0099CC; font-size: X-Large; font-weight: bold; font-style: italic; font-family: Mistral;">SportsPro</h1>
    </div>
    <div style="color: #FF0000; font-size: X-Large; font-family: Mistral; height: 70px;">Sports management software for the 
        sports enthusiast<br />
        <br /><br /> 
    </div>
    <asp:Label ID="Label1" runat="server" Text="Enter Customer ID:"></asp:Label>
    <asp:TextBox ID="txtBxCustID" runat="server"></asp:TextBox>
    <asp:Button ID="btnGetIncidents" runat="server" Text="Get Incidents" 
        onclick="button1_click" ValidationGroup="poop" />
    <asp:RequiredFieldValidator ID="rvCustomerId" runat="server" 
        ControlToValidate="txtBxCustID" ErrorMessage="Enter your ID number" 
        Display="Dynamic" ForeColor="Red" SetFocusOnError="True" 
        ValidationGroup="poop">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvCustomerID" runat="server" 
        ControlToValidate="txtBxCustID" ErrorMessage="YOU MUST ENTER A NUMBER" 
        Operator="DataTypeCheck" Type="Integer" Display="Dynamic" ForeColor="Red" 
        ValidationGroup="poop">*</asp:CompareValidator>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
        ValidationGroup="poop" />
    <asp:Label ID="Label7" runat="server" Enabled="False" Visible="False"></asp:Label>
    <br />
    <asp:ListBox ID="lbIncidents" runat="server" Enabled="False" Height="95px" 
        Width="362px" DataTextField="CustomerID" 
        DataValueField="CustomerID"></asp:ListBox>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/TechSupport.mdb" 
        SelectCommand="SELECT * FROM [Incidents]">
    </asp:AccessDataSource>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Enabled="False" 
        Text="Please rate this incident by the following categories:"></asp:Label>
    <table style="width: 72%;">
        <tr>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Response time:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Enabled="False" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                    <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                    <asp:ListItem Value="3">Satisfied</asp:ListItem>
                    <asp:ListItem Value="4" Selected="True">Completely Satisfied</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Technician efficiency:"></asp:Label>
            </td>
            <td class="style3">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Enabled="False" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                    <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                    <asp:ListItem Value="3">Satisfied</asp:ListItem>
                    <asp:ListItem Value="4" Selected="True">Completely Satisfied</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" Text="Problem Resolution:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" Enabled="False" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                    <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                    <asp:ListItem Value="3">Satisfied</asp:ListItem>
                    <asp:ListItem Value="4" Selected="True">Completely Satisfied</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    <asp:Label ID="Label6" runat="server" Text="Additional comments:"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtBxComments" runat="server" Enabled="False" Height="161px" 
        MaxLength="500" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" Enabled="False" 
        Text="Please contact me to discuss this incident." />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButtonList ID="RadioButtonList4" runat="server" Enabled="False">
        <asp:ListItem>Contact by email</asp:ListItem>
        <asp:ListItem>Contact by phone</asp:ListItem>
    </asp:RadioButtonList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:RequiredFieldValidator ID="rvIncidentLB" runat="server" 
        ControlToValidate="lbIncidents" Display="None" EnableClientScript="False" 
        ErrorMessage="No customer with that Id Number Exists." ForeColor="Red"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
