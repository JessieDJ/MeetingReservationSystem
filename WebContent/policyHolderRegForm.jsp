<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title><%@include file="tabtitle.jsp" %></title>
        <meta charset="utf-8">
        <meta name="description" content="Your description">
        <meta name="keywords" content="Your keywords">
        <meta name="author" content="Your name">
        <meta name = "format-detection" content = "telephone=no" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <!--CSS-->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/camera.css">
        <style>
			* {box-sizing: border-box;}
			ul {list-style-type: none;}
			body {font-family: Verdana, sans-serif;}
			
			.month {
			  padding: 70px 25px;
			  width: 100%;
			  background: #1abc9c;
			  text-align: center;
			}
			
			.month ul {
			  margin: 0;
			  padding: 0;
			}
			
			.month ul li {
			  color: white;
			  font-size: 20px;
			  text-transform: uppercase;
			  letter-spacing: 3px;
			}
			
			.month .prev {
			  float: left;
			  padding-top: 10px;
			}
			
			.month .next {
			  float: right;
			  padding-top: 10px;
			}
			
			.weekdays {
			  margin: 0;
			  padding: 10px 0;
			  background-color: #ddd;
			}
			
			.weekdays li {
			  display: inline-block;
			  width: 13.6%;
			  color: #666;
			  text-align: center;
			}
			
			.days {
			  padding: 10px 0;
			  background: #eee;
			  margin: 0;
			}
			
			.days li {
			  list-style-type: none;
			  display: inline-block;
			  width: 13.6%;
			  text-align: center;
			  margin-bottom: 5px;
			  font-size:12px;
			  color: #777;
			}
			
			.days li .active {
			  padding: 5px;
			  background: #1abc9c;
			  color: white !important
			}
			
			/* Add media queries for smaller screens */
			@media screen and (max-width:720px) {
			  .weekdays li, .days li {width: 13.1%;}
			}
			
			@media screen and (max-width: 420px) {
			  .weekdays li, .days li {width: 12.5%;}
			  .days li .active {padding: 2px;}
			}
			
			@media screen and (max-width: 290px) {
			  .weekdays li, .days li {width: 12.2%;}
			}
			</style>
        <!--JS-->
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.ui.totop.js"></script>
        <script src="js/jquery.equalheights.js"></script>
        <script src="js/camera.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script>
            $(document).ready(function() {
                jQuery('.camera_wrap').camera();
            });

            function  reg()
            {
                var name= document.devreg.name.value;
                var pass= document.devreg.pass.value;
                var email= document.devreg.email.value;
                var bankname = document.devreg.bankname.value;
                var sex= document.devreg.sex.value;
                var age= document.devreg.age.value;
                var acno= document.devreg.acno.value;
                var location= document.devreg.location.value;
                var workdetails= document.devreg.workdetails.value;
                
                if(name==0)
                {
                   alert("please enter name");
                   document.devreg.name.focus();
                   return false;
                }
                if(email==0)
                {
                    alert("please enter email");
                   	document.devreg.email.focus();
                   	return false;
                }
                
                if(pass==0)
                {
                   alert("please enter password");
                   document.devreg.pass.focus();
                   return false;
                }
                if(sex==0)
                {
                   alert("please enter sex");
                   document.devreg.sex.focus();
                   return false;
                }
                if(acno==0)
                {
                   alert("please enter AC NO");
                   document.devreg.acno.focus();
                   return false;
                }
                
               
                if(location==0)
                {
                   alert("please enter location");
                   document.devreg.location.focus();
                   return false;
                }
                if(bankname==0)
                {
                   alert("please enter bankname");
                   document.devreg.bankname.focus();
                   return false;
                }
                if(workdetails=0){
                	alert("please enter working details");
                    document.devreg.workdetails.focus();
                    return false;
                }
                if(age=0){
                	alert("please enter age");
                    document.devreg.age.focus();
                    return false;
                }
                
                
            }
        </script>
        <script src="js/jquery.mobile.customized.min.js"></script>
    </head>
<body>
<div class="global">
            <!--header-->
            <header>
                <div>
                    <div class="container">
                        <div class="row">
                            <article class="span12">
                                <div class="navbar navbar_ clearfix">
                                    <div class="navbar-inner">      
                                        <div class="clearfix">
                                            <div class="nav-collapse nav-collapse_">
                                                <ul class="nav sf-menu clearfix">
                                                    <li><a href="index.jsp">Home</a></li>
                                                    <li><a href="agentRegForm.jsp">Add Participants</a></li>
                                                    <li class="active"><a href="policyHolderRegForm.jsp">Book A Time</a></li>
                                                    <li><a href="adminForm.jsp">Reserve Meeting Room</a></li>
                                                    <li></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </article>

                            <br><br><h1 style="margin-left: 10px" class="brand"><a href=""></a></h1>
                        </div>
                    </div>
                </div>
            </header>
            <!--content-->
             <div class="container">
                <div class="row">

                    <article class="span8 form-box">
                        <div>
                            <br><h5 style="color: white">Choose a time</h5>
                            <div class="month">      
							  <ul>
							    <li class="prev">&#10094;</li>
							    <li class="next">&#10095;</li>
							    <li>
							      August<br>
							      <span style="font-size:18px">2020</span>
							    </li>
							  </ul>
							</div>
							
							<ul class="weekdays">
							  <li>Mo</li>
							  <li>Tu</li>
							  <li>We</li>
							  <li>Th</li>
							  <li>Fr</li>
							  <li>Sa</li>
							  <li>Su</li>
							</ul>
							
							<ul class="days">  
							  <li>1</li>
							  <li>2</li>
							  <li>3</li>
							  <li>4</li>
							  <li>5</li>
							  <li>6</li>
							  <li>7</li>
							  <li>8</li>
							  <li>9</li>
							  <li><span class="active">10</span></li>
							  <li>11</li>
							  <li>12</li>
							  <li>13</li>
							  <li>14</li>
							  <li>15</li>
							  <li>16</li>
							  <li>17</li>
							  <li>18</li>
							  <li>19</li>
							  <li>20</li>
							  <li>21</li>
							  <li>22</li>
							  <li>23</li>
							  <li>24</li>
							  <li>25</li>
							  <li>26</li>
							  <li>27</li>
							  <li>28</li>
							  <li>29</li>
							  <li>30</li>
							  <li>31</li>
							</ul>
                            <!-- <form name="devreg" action="RegisterAction" method="post" onsubmit="return reg()">
                                <fieldset>
                                	name, password, ac no, bank, working details, age, sex, address, email
                                    <div class="form-div-1">
                                        <input type="text" placeholder="Name*:" name="name" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z">
                                        <br>
                                    </div>
                                    
                                    <div class="form-div-3">
                                        <input type="password" placeholder="password:" name="pass">
                                        <br>
                                    </div>
                                      <div class="form-div-3" >
                                        <input type="number" placeholder="AC NO:" name="acno" pattern="[0-9]+" title="AC number with 0-9">
                                        <br>

                                    </div>
                                    <div class="form-div-3">
                                        <input type="text" placeholder="Bank name:" name="bankname" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z">
                                        <br>
                                    </div>
                                    <div class="form-div-3">
                                        <input type="text" placeholder="Working details:" name="workdetails" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z">
                                        <br>
                                    </div>
                                    
                                    <div class="form-div-3" >
                                        <input type="number" placeholder="age:" name="age" pattern="[0-9]+" title="age with 0-200">
                                        <br>

                                    </div>
                                    <div class="form-div-3">
                                        <select name="sex" style="margin-top: 0px;">
                                            <option value="">sex</option>
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select><br>
                                    </div>
                                    
                                     <div class="form-div-3">
                                        <input type="text" placeholder="Location" name="location" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z">
                                        <br>
                                    </div>
                                    <div class="form-div-2">
                                        <input type="email" placeholder="Email*:" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Ex:- abc@gamil.com">
                                        <br>
                                    </div>
                                  
                                   
                                </fieldset>
                                <input type="submit" value="" class="btn btn-primary btn2" style="margin-left: 73px;width: 90px;background-image: url('img/sub.png')"/>
                            </form> -->
                        </div>
                    </article>
                </div>
            </div>
            
            <div hidden class="met"> Web Development: <a class="cop" href="http://www.metamorphozis.com"></a></div> 
        </div>
        <footer>
            <div class="container">
                <div class="row">
                    <article class="span12">
                        <div class="row">
                            <nav class="span6">
<!--                                <ul>
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="abstract.jsp">Abstract</a></li>
                                    <li><a href="alogin.jsp">Manager</a></li>
                                    <li><a href="dlogin.jsp">Dev Login</a></li>
                                    <li><a href="tpalogin.jsp">TL Login</a></li>
                                    <li><a href="contact.html">Registration</a></li>
                                </ul>-->
                            </nav>
                            <div class="span3 offset3">
<!--                                <p>Copyright @ Registered</p>-->
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </footer>
</body>
</html>