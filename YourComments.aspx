<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YourComments.aspx.cs" Inherits="JQueryDemo.YourComments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <script src="jquery-3.6.0.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {



            $("#btnToggle").click(function () {
                $("#dvFirst").toggle("slow");

            });

        });
    </script>


    <link href="StyleSheet1.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 65%;
            height: 443px;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            height: 36px;
        }
        .auto-style4 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table border="1" width="100%">
                <tr>
                    <td width="50%">
                        User Name
                    </td>
                    <td width="50%">
                        <asp:TextBox CssClass="form-control" ID="Txtuname" runat="server"></asp:TextBox>
                    </td>

                    <tr>
                    <td width="50%">
                        User Email Address
                    </td>
                    <td width="50%">
                        <asp:TextBox CssClass="form-control" ID="TxtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>

                    <tr>
                    <td width="50%">
                        User Feedback
                    </td>
                    <td width="50%">
                        <asp:TextBox CssClass="form-control" ID="Txtfeedback" runat="server"></asp:TextBox>
                    </td>

                </tr>
                    <tr>
                    <td width="50%">
                    </td>
                    <td width="50%">
                        <asp:Button class="btn btn-primary active" ID="btnFeedback" runat="server" Text="Submit Feedback" OnClick="btnFeedback_Click" />
                    </td>
                </tr>
            </table>
        </div>

        <asp:GridView ID="GridView1" runat="server">

        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        

    </asp:GridView>

    </form>

    
</body>
</html>
