<!DOCTYPE html>
<html lang="en">

    <head>
        <title>TPA Login</title>
        <meta charset="utf-8">

        <meta name ="description" content="Your description">
        <meta name ="keywords" content="Your keywords">
        <meta name ="author" content="Your name">
        <meta name ="format-detection" content = "telephone=no" />
        <meta name ="viewport" content="width=device-width,initial-scale=1.0">
        <!--CSS-->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="font/font-awesome.css">
        <!--JS-->
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/forms.js"></script>
        <script src="js/jquery.ui.totop.js"></script>
        
      <script>
       function tplog()
            {
                var name = document.tp.name.value;
                var pass = document.tp.pass.value;
                
                if(name==0)
                {
                    alert("enter tl name");
                    document.tp.name.focus();
                    return false;
                    
                }
                 if(pass==0)
                {
                    alert("enter tl password");
                    document.tp.pass.focus();
                    return false;
                    
                }
            }
            
            
        </script>
    </head>
    <body><br>
        <div class="" style="background-color: cornflowerblue">
            <header class="margBot1 margBrand">
                <div class="bg">
                    <div class="container">
                        <div class="row">
                            <article class="span12">
                                <div class="navbar navbar_ clearfix marg">
                                    <div class="navbar-inner">      
                                        <div class="clearfix">
                                            <div class="nav-collapse nav-collapse_">
                                                <ul class="nav sf-menu clearfix">
                                                    <li><a href="index.jsp">Home</a></li>
                                                    <li><a href="abstract.jsp">Abstract</a></li>
                                                    <li><a href="alogin.jsp">Manager</a></li>
                                                    <li><a href="dlogin.jsp">Dev Login</a></li>
                                                    <li class="active"><a href="tpalogin.jsp">TL Login</a></li>
                                                    <li><a href="contact.html">Registration</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              <center><h1 class="brand" style="margin-left: -30px;color: white;font-size: 30px"><%@include file="title.jsp" %>
</h1></center> </article>

                            </article>
                        </div>
                    </div>
                </div>
            </header>
            <!--content-->

            <div class="container" style="background-image: url('img/devlog.jpg');height: 450px">
                <div class="row">

                    <article class="span8 form-box" style="margin-left: 500px;margin-top: 60px">
                        <div>
                            <br><h5 style="color: white;margin-left: -10px">TEAM LEAD Login</h5>
                            <form name="tp" action="tpalog" method="post" onsubmit="return tplog()">
                                <fieldset>
                                    <div class="form-div-1">
                                        <input type="text" placeholder="Name*:" name="name" value="">
                                            <br>
                                    </div>
                                    
                                    <div class="form-div-3">
                                        
                                        <input type="password" placeholder="password:" name="pass" value="">
                                            <br>
                                    </div>
                                    
                                    
                                </fieldset>
                                <input type="submit" value="" class="btn btn-primary btn2" style="margin-left: 10px;width: 95px;height: 35px;background-image: url('img/sub.png')"/>
                                <input type="reset" value="" class="btn btn-primary btn2" style="margin-left: px;width: 85px;height: 35px;background-image: url('img/res.png')"/>
                            </form>
                        </div>
                    </article>
                </div>
            </div><div hidden class="met"> Web Development: <a class="cop" href="http://www.metamorphozis.com">Free html5 Templates</a></div>
        </div>
        <!--footer-->
        <footer style="background-color: cornflowerblue">
            <div class="container" >
                <div class="row">
                    <article class="span12">
                        <div class="row">
                            <nav class="span6">
<!--                                <ul>
                                    <li><a href="index.html">home</a></li>
                                    <li><a href="about.html">about us</a></li>
                                    <li><a href="products.html">products</a></li>
                                    <li><a href="services.html">services</a></li>
                                    <li class="active"><a href="contact.html">Registration</a></li>
                                </ul>-->
                            </nav>
                            <div class="span3 offset3">
<!--                                <p>Company Name Here &copy; 2014 &bull; </p>-->
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="js/bootstrap.js"></script>
    </body>
</html>