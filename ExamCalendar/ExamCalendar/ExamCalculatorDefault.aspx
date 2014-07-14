<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamCalculatorDefault.aspx.cs" Inherits="ExamCalendar.ExamCalculatorDefault" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Calculator</title>
    <link href="ExamCalculator.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <h2>Choose a Date to take your next exam in the Math Lab:</h2>
    <table class="center">
    <tr> <td class="calendar">
        <asp:Calendar 
            ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" 
            CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="Black" Height="180px" Width="200px" >
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
        </td>
        <td class="text">
            <asp:Label ID="lblErrorMessage" runat="server" visible="false" Text="" ForeColor="Red"></asp:Label>
            <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click" />
        <br />
        <asp:label ID="lblMessage1" Visible="False" runat="server">You have chosen </asp:label><br />
        <asp:label ID="lblDate" Visible="false" runat="server"></asp:label>
        <br />
        <asp:label ID="lblMessage2" Visible="false" runat="server">Bring a number 2 pencil and a graphing calculator.</asp:label>
            <br />
            <asp:Button ID="btnChange" runat="server" Text="Change Date" OnClick="btnChange_Click" />
        </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
