<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HospitalManagement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h1>
                    Hosptal management
                </h1>
                <table>
                    <tr>
                        <td>
                            Patient Name
                        </td>
                        <td>
                            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            Disease
                        </td>
                        <td>
                            <asp:TextBox ID="Dises" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            Medicine
                        </td>
                        <td>
                            <asp:TextBox ID="Medicine" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            Doctor Name
                        </td>
                        <td>
                            <asp:DropDownList ID="DoctorName" runat="server">
                                <asp:ListItem Text="----Select-----"></asp:ListItem>
                                <asp:ListItem Text="Dr.Ajit kara">Dr.Ajit kara</asp:ListItem>
                                <asp:ListItem Text="Dr.s.k Mishra">Dr.s.k Mishra</asp:ListItem>
                                <asp:ListItem Text="Dr.Imran Hasmi">Dr.Imran Hasmi</asp:ListItem>
                                <asp:ListItem Text="Dr.Krushna Chandra Behera">Dr.Krushna Chandra Behera</asp:ListItem>
                                <asp:ListItem Text="Dr.HareKrishna Sabat">Dr.HareKrishna Sabat</asp:ListItem>
                                <asp:ListItem Text="Dr.Namita Mishra">Dr.Namita Mishra</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
