<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Calculator</title>
    <style type="text/css">
        #Reset1
        {
            width: 56px;
        }
                
            </style>

</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: large; background-color: #FFFFCC;">
    
       
        <h2>Web Calculator</h2>
        <h3>Enter numerical values only</h3>
        <br />
        <asp:TextBox ID="txtValue1" runat="server" Font-Size="Large"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            Display="Dynamic" ErrorMessage="*Enter a value to calculate" 
            ForeColor="Red" ControlToValidate="txtValue1"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="txtValue1" Display="Dynamic" 
            ErrorMessage="*Numeric values only, please" ForeColor="Red" 
            Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
        <br />
        <br />
        <asp:TextBox ID="txtValue2" runat="server" Font-Size="Large"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="*Enter a value to calculate" ForeColor="Red" 
            ControlToValidate="txtValue2" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="txtValue2" Display="Dynamic" 
            ErrorMessage="*Numeric values only, please" ForeColor="Red" 
            Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="+" Font-Size="Large" onclick="btnAdd_Click" />
        &nbsp
        <asp:Button ID="btnSubtract" runat="server" Text="-" Font-Size="Large" 
            onclick="btnSubtract_Click" />
        &nbsp
        <asp:Button ID="btnMultiply" runat="server" Text="*" Font-Size="Large" 
            onclick="btnMultiply_Click" />
        &nbsp
        <asp:Button ID="btnDivide" runat="server" Text="/" Font-Size="Large" 
            onclick="btnDivide_Click" />
        <br />
        <br />
        <hr style="width: 164px; text-align: left" align="left" />
        <br />
        <asp:TextBox ID="txtAnswer" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnClear" runat="server" Text="Clear" Font-Size="Large" 
            onclick="btnClear_Click" />
        <br />
        </div>
    </form>
</body>
</html>
