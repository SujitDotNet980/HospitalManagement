<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="HospitalManagement.Design" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital Management</title>
    <style type="text/css">
        .auto-style1 {
            width: 1512px;
            height: 728px;
        }
        .auto-style2 {
            margin-left: 80px;
        }
        .auto-style3 {
            height: 84px;
            width: 918px;
            margin-left: 0px;
        }
        .auto-style4 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div align="center" style="background-image: url('Image/medicine-blue-background-flat-lay.jpg')" class="auto-style1">
            <div class="auto-style2">
                <h1 style="font-size: 56px; font-weight: bold; font-style: italic; font-variant: small-caps; text-transform: capitalize; color: #000080" class="auto-style3">
                    &nbsp;</h1>
                <h1 align="center" style="font-size: 56px; font-weight: bold; font-style: italic; font-variant: small-caps; text-transform: capitalize; color: #000080" class="auto-style3">
                    <span class="auto-style4">E-&nbsp;Hosptal management</span>
                </h1>
                <table>
                    
                    <tr>
                        <td style="font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000;">
                            Patient Name
                        </td>
                  
                    
                        <td>
                            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                        <tr>
                            <td style="font-family: bold; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #000000">
                                Age
                            </td>
                            <td>
                                <asp:TextBox ID="Age" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize">
      Gender
                            </td>
                            <td>
                                <asp:RadioButtonList ID="Gender" runat="server" Width="117px">
                                   
                                    <asp:ListItem Value="Male">Male</asp:ListItem>
                                    <asp:ListItem Value="FeMale">FeMale</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                        <td style="font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize">
                            Disease
                        
                        </td>
                        
                        <td>
                            <asp:TextBox ID="Dises" runat="server"></asp:TextBox>
                        </td>
                            </tr>
                        <tr>
                        <td style="font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize">
                            Department
                        </td>
                        <td>
                            <asp:TextBox ID="Dept" runat="server"></asp:TextBox>
                        </td>
                            </tr>
                        <tr>
                        <td style="font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize">
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
                        <tr>
                            <td style="font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize">
      Attendend Name
                            </td>
                            <td>
                                <asp:TextBox ID="Attendent" runat="server"></asp:TextBox>
                            </td>
                        </tr>    
                </table>
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="Save" runat="server" Text="save" OnClick="Save_Click1" />
                            <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                            <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                            <asp:Button ID="View" runat="server" Text="View" OnClick="View_Click" />

                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridView1" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="Black" Width="771px"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
