
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <%@ Import Namespace="System.Data.SqlClient" %>
    <script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|omk.mdf;Integrated Security=True";
        String str = "INSERT INTO OH " +
            " VALUES('" + UseNametxt1.Text + "', '"
             + UseNametxt0.Text + "')";
        SqlCommand cmdInsert = new SqlCommand(str, conn);
        conn.Open();
        cmdInsert.ExecuteNonQuery();
       

        conn.Close();




        lblmsg.Text = "Welcome " + UseNametxt1.Text + " Your Account Has Been Successfully Created!!";
        
    }
</script>
    
        

<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 300px;
        }
        .auto-style4 {
            width: 747px;
        }
        .auto-style5 {
            width: 158px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="background-color: #9966FF" rowspan="2">
                    <img alt="aly.jpg" src="aly.jpg" style="height: 259px; width: 462px; margin-top: 0px" /><br />
&nbsp;&nbsp;
                    <br />
                </td>
                <td colspan="2" style="text-align: center; font-size: xx-large; background-color: #9900FF">
                    <marquee direction="left" scrollamount="5">
                    <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Welcome To Egypt Air!!"></asp:Label></marquee>
                    <br />
                    <br style="background-color: #9966FF" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label>
                </td>
                <td class="auto-style5">
                    
                    <asp:TextBox ID="UseNametxt1" runat="server"></asp:TextBox>
                    
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UseNametxt1" ErrorMessage="please write"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="UseNametxt0" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign in" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
