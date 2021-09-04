<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadTweets.aspx.cs" Inherits="JQueryDemo.UploadTweets" EnableViewState="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="jquery-3.6.0.min.js"></script>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#btnAddNewRow").click(function () {
                  if ($("#TweetTB").val() == "")
                      $("#missingTweet").show("slow");
                  else {
                      $("#missingTweet").hide("slow");


                      var name = $("#usrlbl").val();
                      var pass = $("#txtUserPass").val();
                      var tweet = $("#TweetTB").val();
                      var tweetdone = $("#tweetDone").val();
                      $("#tbl2").append(
                          "<tr style='border-collapse:separate; border-spacing:5em;'> <td width='7%'><img src='dp.png' class='rounded - circle' alt='Cinque Terre' width='100' style='padding - top: -10px;'></td> <td> " + name + " <br/><span style='opacity:50%'; font-size:small;>@IqbalAnas</span><br/><asp:Label ID='tweetDone' runat='server' Text='Iqbal Anas'></asp:Label></td> <td width='15%'> <span style='color:red;' id='deleteTweet'>Delete</span><br/><br/></td> </tr><tr><td colspan='2'><hr/></td></tr>"
                      );


                  }

              });

          });
      </script>


    <link href="StyleSheet1.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

 
   
    

</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%">
            
        <div id="dvTopUT">

            <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                <table style="width:100%;">
                    <tr>
                        <td>
                            <a class="navbar-brand" href="#">Twitter Clone</a>
                        </td>

                        <td style="float:right; text-align:right;">
                            <ul class="ba">
                             <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        <img src="dp.png" class="rounded-circle" alt="Cinque Terre" width="100" style="padding-top:-10px;">  
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Logout</a>
      </div>
    </li>
                                </ul>

                        </td>

                    </tr>
                </table>
  

</nav>




        </div>


        <div id="dvLeftUT">
            <br>
            <div class="" style="width:25%">

                <a href="#" class="w3-bar-item w3-button"><img src="twitter logo.png" width="70px"/></a>
                <asp:Label ID="usrlbl" runat="server" Text="Iqbal Anas"></asp:Label>
                
                <table  class="table table-borderless" border="0">
                    <tr>
                        <td>
                            
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <a href="#" class="w3-bar-item w3-button ">HOME</a>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <a href="#" class="w3-bar-item w3-button ">Explore</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="w3-bar-item w3-button ">Notification</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <a href="#" class="w3-bar-item w3-button ">Messages</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="w3-bar-item w3-button ">Bookmarks</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="w3-bar-item w3-button ">Lists</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="w3-bar-item w3-button ">Profile</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="w3-bar-item w3-button ">Notification</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="w3-bar-item w3-button "><img src="tweetbtn.PNG"/></a>

                        </td>
                    </tr>

                </table>

  
  
 
  
  
  
  
  
  

</div>
        </div>


   <div id="dvCenterUT">
       <h3>HOME</h3>

            <div class="container">
                <br />
                 <div id="leftSideforimg" style="float:left">
                     <img src="dp.png" class="rounded-circle" alt="Cinque Terre" width="100"> 

                 </div>


                  <div id="WhatsHappening"  style="float:left">
                      <asp:TextBox placeholder="What's happening ?" ID="TweetTB" runat="server" TextMode="MultiLine" Width="400px" Height="100px" CssClass="form-control" style="outline: 0px;"></asp:TextBox>
                       <div style="color:red; display:none" id="missingTweet">Please Write something to tweet</div>
                      
                  </div>

                <div style="float:k"> </div>
                <table width="100%">
                    <tr>
                        <td>
                            <div style="float:left; padding-right:10px;  padding-left:100px;"><a href="#"> <img src="1.PNG" /></a></div>
                            <div style="float:left; padding-right:10px;"><a href="#"><img src="2.PNG" /></a></div>
                            <div style="float:left; padding-right:10px;"><a href="#"><img src="3.PNG" /></a></div>
                            <div style="float:left; padding-right:10px;"><a href="#"><img src="4.PNG" /></a></div>
                            <div style="float:left; padding-right:10px;"><a href="#"><img src="5.PNG" /></a></div>
                        </td>
                        
                        <td style="text-align:right;">
                           <!-- <img id="btnAddNewRow" src="tweetsmallbtn.PNG" /> -->
                          <asp:Button ID="btnAddNewRow" class="btn btn-primary btn-block active" runat="server" Text="Tweet" OnClick="btnAddNewRow_Click1" />


                        </td>
                    </tr>

                </table>


             </div> 

       

       <hr />
    <table width="100%" border="0" id="tbl2" >

        <tr style='border-collapse:separate; border-spacing:5em;'> 
            <td width='7%'>
                <img src='dp.png' class='rounded - circle' alt='Cinque Terre' width='100' style='padding - top: -10px;'>

            </td>
            <td> <asp:Label ID="name1" runat="server" Text="Iqbal Anas"></asp:Label> <br/><span style='opacity:50%'; font-size:small;>@<asp:Label ID="name2" runat="server" Text="Iqbal Anas"></asp:Label></span>
                <br/>
                <asp:Label ID='Label1' runat='server' Text='Iqbal Anas'> </asp:Label>

            </td> 
            <td width='15%'> <span style='color:red;' id='deleteTweet'>Delete</span><br/><br/></td> </tr><tr><td colspan='2'><hr/>

</td>
   </tr>
    </table>

       
       

       <table width="100%" border="0" id="tbl3" >
           <tr>
               <td colspan="3"><h3> Who to follow</h3> <br /></td>
           </tr>

           <tr>
               <td style="width:7%"><img src="mubashir.PNG" width="70px" /></td>
               <td><span style="font-weight:bolder; font-size:medium;"> Mubasher Lucman</span>
                   <br />
                   <span style="opacity:50%; font-size:medium;"> @mubasherlucman</span>
                   
</td>
               <td style="width:15%">
                       <img src="followbtn.PNG" />
                   </td>
           </tr>

           <tr>
               <td></td>
               <td colspan="2">Mubasher Lucman is currently on the top of anchorpersons index in Pakistan & specializes in Investigative Journalism. He currently hosts program Khara Sach.</td>
           </tr>

          

                      <tr>
               <td colspan="3"><hr /></td>
           </tr>


                <tr>
                   
               <td style="width:7%"><img src="iqrar.PNG" width="70px" /></td>
               <td><span style="font-weight:bolder; font-size:medium;"> Iqrar ul Hassan</span>
                   <br />
                   <span style="opacity:50%; font-size:medium;">@iqrarulhassan</span>
                   
</td>
               <td style="width:15%">
                       <img src="followbtn.PNG" />
                   </td>
           </tr>

           <tr>
               <td></td>
               <td colspan="2">مِری زمین مِرا آخری حوالہ ہے۔۔۔۔Flag of Pakistan #TeamSareAam #ARYNews</td>
           </tr>


                      <tr>
               <td colspan="3"><hr /></td>
           </tr>




                <tr>
               <td style="width:7%"><img src="pti.PNG" width="70px" /></td>
               <td><span style="font-weight:bolder; font-size:medium;">PTI</span>
                   <br />
                   <span style="opacity:50%; font-size:medium;"> @ptioffial</span>
                   
</td>
               <td style="width:15%">
                       <img src="followbtn.PNG" />
                   </td>
           </tr>

           <tr>
               <td></td>
               <td colspn="2">Official twitter account of Pakistan Tehreek-e-Insaf | YouTube: https://youtube.com/PTIOfficialChannel..</td>
           </tr>





           <tr>
               <td colspan="3"><hr /></td>
           </tr>
    </table>


       <hr />



    </div>

     

           <div id="dvRightUT">
                 <br />
                 <asp:TextBox CssClass="form-control" ID="searchTweet" runat="server">Search Tweet</asp:TextBox>

            <br>

            <div class="w3-sidebar w3-bar-block w3-light-grey" style="width:25%">
             
                         <h5 style="font-weight:bolder;" class="w3-bar-item w3-button w3-border-bottom">Trends for you</h5>
                        <a href="#" class="w3-bar-item w3-button w3-border-bottom">
                            <p style="font-size:small; opacity:50%;">Politics - Trending</p>
                            <h6 style="font-weight:bolder;">#CancelAllExams</h6>
                            <p style="font-size:small; opacity:50%;">167 kTweets</p>
                        </a>

                        <a href="#" class="w3-bar-item w3-button w3-border-bottom">
                            <p style="font-size:small; opacity:50%;">Trending in Pakistan</p>
                            <h6 style="font-weight:bolder;">#Cambridge</h6>
                            <p style="font-size:small; opacity:50%;">26.2 kTweets</p>
                        </a>

                <a href="#" class="w3-bar-item w3-button w3-border-bottom">
                            <p style="font-size:small; opacity:50%;">Trending in Pakistan</p>
                            <h6 style="font-weight:bolder;">#IndianArmyExposed</h6>
                            <p style="font-size:small; opacity:50%;">28k Tweets</p>
                        </a>

                <a href="#" class="w3-bar-item w3-button w3-border-bottom">
                            <p style="font-size:small; opacity:50%;">Trending in Pakistan</p>
                            <h6 style="font-weight:bolder;">#CancelBoardExam</h6>
                            <p style="font-size:small; opacity:50%;">23.9k Tweets</p>
                        </a>

                <a href="#" class="w3-bar-item w3-button w3-border-bottom">
                            <p style="font-size:small; opacity:50%;">Trending in Pakistan</p>
                            <h6 style="font-weight:bolder;">#ertugrul</h6>
                        </a>

                 <a href="#" class="w3-bar-item w3-button w3-border-bottom">
                            <p style="font-size:medium; color:Highlight;">Show More</p>
                            
                        </a>
                </div>

        </div>


    </form>
</body>
</html>
