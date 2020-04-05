<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
        <%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">        
public void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Corona.mdf;Integrated Security=True";

        // Create SQL Insert Statement
        String str = "INSERT INTO Aly " +
           " VALUES('" + TextBox1.Text + "', '"
            + TextBox2.Text + "', '" 
            + Rbl1.SelectedValue + "', '"
            + TextBox3.Text + "', '"
            + TextBox4.Text + "', '"
            + TextBox5.Text +
    "')";

        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(str, conn);
        try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();

           

            Label9.Text = "Welcome " + TextBox1.Text + " Your Account Has Been Successfully Created!!";
        }


        catch (SqlException err)
        {
            if (err.Number == 2627)
                Label9.Text = "Username already exists, Please Choose Another!!";
            else
                Label9.Text = "Sorry, Database Error, You may Try later!!";
        }

        catch
        {
            Label9.Text = "Sorry, System Error, You may Try later!!";
        }


    }
</script>
    
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 347px;
        }
        .auto-style3 {
            width: 300px;
        }
        .auto-style4 {
            width: 205px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Gigi" Font-Size="X-Large" Text="Please enter your data "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial Black" Font-Size="Large" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="261px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial Black" Font-Size="Large" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="261px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial Black" Font-Size="Large" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="Rbl1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="M">M</asp:ListItem>
                        <asp:ListItem Value="F">F</asp:ListItem>
                    </asp:RadioButtonList>
                     
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial Black" Font-Size="Large" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="261px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial Black" Font-Size="Large" Text="UserName:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="261px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial Black" Font-Size="Large" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="261px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
