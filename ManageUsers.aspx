<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="JQueryDemo.ManageUsers" %>

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
       <div style="width: 50%; float:left">


        <div id="dvRegForm" class="auto-style1">
            <table id="SignupTable" width="100%">
                <tr>
                    <td></td>
                    <td style="text-align:right;">
                        <img src="twitter logo.png" width="70px" />
                    </td>
                    <td style="text-align:right;">
                    <asp:Button ID="signUpbtn" runat="server" class="btn btn-primary active" Text="Sign Up" OnClick="signUpbtn_Click" />
                        </td>
                </tr>
                <tr >
                    <td colspan="3"><h3>Create your account</h3></td>
                </tr>

                <tr>
                   <td colspan="3" > 
                    <div class="form-g">
                        <label for="usr">Name:</label>
                            <asp:TextBox CssClass="form-control" ID="txtName" placeholder="Name" runat="server"></asp:TextBox>
                        </div>
                        </td>
                </tr>
                <tr>
                   <td colspan="3">
                       <div class="form-g">
                           <br />
                            <label for="phn">Phone:</label>
                            <asp:TextBox ID="txtPhone" CssClass="form-control" placeholder="Phone Number" runat="server" TextMode="Number"></asp:TextBox>
                    </div>       
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <br />
                        <a href="#">use email insted</a>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="3">
                        <br />
                        <h5 style="font-weight:bolder">Date of Birth</h5>  
                        <p>This will not be shown publicly. Confirm your own age, even if this account is for a business, a pet, or something else.</p>
                    </td>
                </tr>
                <tr>
             <td >
                 &nbsp;Month&nbsp;
                <asp:DropDownList ID="drpMonth" runat="server" CssClass="txtBoxClass form-control">
                </asp:DropDownList>
             </td>
             <td>
               
                 Day &nbsp; <asp:DropDownList ID="drpDay" runat="server" CssClass="txtBoxClass form-control">
                </asp:DropDownList> 

            </td>


             <td >
                &nbsp;Year&nbsp;
                <asp:DropDownList ID="drpYear" runat="server" CssClass="txtBoxClass form-control">
                </asp:DropDownList>
            </td>
                </tr>
            </table>
        </div>

        </div>










        <div style="width: 50%; float:left">

             <div id="dvLoginForm" class="auto-style1">
            <table id="loginTable" width="100%">
                <tr>
                    <td colspan="2" class="auto-style3"><img src="twitter logo.png" width="20%"/></td>
                    
                </tr>
                <tr>
                    <td colspan="2"><h1 style="font-weight:bold;">Log in to twitter</h1></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                    <div class="form-g">
                        <label for="usr">username</label>
                            <asp:TextBox CssClass="form-control" ID="txtNameLogin" placeholder="Name" runat="server"></asp:TextBox>
                        </div>
                        </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <br />
                    <div class="form-g">
                        <span class="auto-style2">Phone</span>
                            <asp:TextBox CssClass="form-control" ID="txtNumberLogin" placeholder="Name" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <br />
                        <asp:Button ID="loginBtn" class="btn btn-primary btn-block active" runat="server" Text="Login" OnClick="loginBtn_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <asp:Button ID="deleteAccount" class="btn btn-primary btn-block active" runat="server" Text="Delete Account" OnClick="deleteAccount_Click" />
                    </td>
                </tr>

                 

                <tr>
                    <br />
                    <td colspan="2">
                    <br />
                        <h5 style="color:red;" id="btnToggle">Click here to change password</h5>
                    <div id="dvFirst" style=" width:100%; height:200px; display:none;">
                       
                            <table>
                                <tr>
                                    <td>
                                        <h6>Enter Name</h6>
                                        <asp:TextBox CssClass="auto-style4" ID="txtchangename" placeholder="Name" runat="server" Width="415px"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <h6>Enter Previous Pass</h6>
                                        <asp:TextBox CssClass="auto-style4" ID="txtchangePass" placeholder="old Password" runat="server" Width="414px"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <h6>Enter New Password</h6>
                                        <asp:TextBox CssClass="auto-style4"  placeholder="New Password" ID="txtNewpass" runat="server" Width="414px"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Button ID="btnchangepass"  class="btn btn-primary btn-block active" runat="server"  Text="Change Passowrd" OnClick="btnchangepass_Click" />
                                    </td>
                                </tr>
                                

                            </table>
                       
                    </div>
                        </td>
                </tr>
                
            </table>
        </div>

       </div>

   

    </div>


    </form>
    
</body>
</html>
