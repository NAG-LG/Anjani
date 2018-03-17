<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
            <%@ page session="true"%>
                <!doctype html>
<!-- saved from url=(0060)https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/ -->
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="https://getbootstrap.com/favicon.ico">

  <title>Fixed top navbar example for Bootstrap</title>


   <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">


   <link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">

<link href="<c:url value="/resources/css/dynamic-rating.css" />" rel="stylesheet">


  <!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />

  <!--  This CSS if for Readmore opton to work smootly with latest jquery(3.X.X)-->
  <style type="text/css">
    article+[data-readmore-toggle],
    article[data-readmore] {
      display: block;
      width: 100%;
    }

    article[data-readmore] {
      transition: height 400ms;
      overflow: hidden;
    }
.text-right{
   padding-right: 0px;
}
.rating-stars{
margin-right: 2px;
  }

  .addIcoBtn {
  border: 1px solid;
  border-radius: 4px;
  border-color: #A5A5A5 #AAAAAA #959595;
  cursor: pointer;
  height: 24px;
  /* font-weight: bold; */
  min-width: 50px;
  background-color: #FFFFFF;
  color: firebrick;
  padding-right: 12px;
    padding-left:12px;
  margin: 0em;
 font: 400 13.3333px Arial;
}
.review-stats{
color: royalblue;
margin: 4px 8px 10px 2px;
}
.add-review-btn{
    background-image: url(img/icon_add.gif);
  color:white;
  background-color: black;
    background-repeat: no-repeat;
    background-position: 0px 3px;
    padding-left: 20px;
    vertical-align: middle;
}
.prod-itm-stats{
  margin-bottom: 4px;
}
</style>



<style>

.star-rating{
	font-size: 0;
}
.star-rating__wrap{
	display: inline-block;
	font-size: 1rem;
}
.star-rating__wrap:after{
	content: "";
	display: table;
	clear: both;
}
.star-rating__ico{
	float: right;
	padding-left: 2px;
	cursor: pointer;
	color: #FFB300;
}
.star-rating__ico:last-child{
	padding-left: 0;
}
.star-rating__input{
	display: none;
}
.star-rating__ico:hover:before,
.star-rating__ico:hover ~ .star-rating__ico:before,
.star-rating__input:checked ~ .star-rating__ico:before
{
	content: "\f005";
}


.card-body {
  padding: 0.4rem;
}

 .accordion .card-header:after {
    font-family: 'FontAwesome';
    content: "\f068";
    float: right;
}
.accordion .card-header.collapsed:after {
    /* symbol for "collapsed" panels */
    content: "\f067";
}


</style>

<script>
var globalVal;
</script>

</head>

<body>

  <nav class="navbar navbar-expand-md navbar-dark fixed-top nbar-bg mx-auto" style="padding:4px">
    
    
        <a href="<c:url value='/' />"> <i class="fa fa-home navbar-brand" style="font-size:36px;padding: 0;"></i>
     <span class="sr-only">(current)</span></a>
       
    
    
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto menu-elements">
        <li class="nav-item active">
          <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/#">Accesories <span class="sr-only">(current)</span></a>
        </li>
  
        <li class="nav-item active" >
        <a class="nav-link" href="<c:url value='/Books' />">Books <span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item active">
          <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/#">Electronics <span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item active">
          <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/#">Kids <span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item active">
          <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/#">Men <span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item active">
          <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/#">Lady <span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item active">
          <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/#">Innovation <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/navbar-top-fixed/#">Appliance <span class="sr-only">(current)</span></a>
        </li>


      </ul>
    </div>
  </nav>

  <main role="main" class="container">
  
  
 <c:if test="${not empty componentList}"> 
    <c:forEach items="${componentList}" var="component">
<script>
globalVal = ${component.product_id}
</script>
  
<!-- Element Starts here -->
    <div class="jumbotron">
      <div class="item-full-body">
        <div class="prod-info">
          <h5>${component.product_title}</h5>
           <hr style="margin-bottom:0;height:15px;"/>
          <div class="prod-full-info flex-container">
            <div class="prod-left column">
              <!-- <img src="img/pro_pik.jpg" class="img-rounded prod-img" alt="Cinque Terre" width="170" height="181"> -->
               <img src="${pageContext.request.contextPath}/resources/img/pro_pik.jpg" class="img-rounded item-usr-img" alt="Cinque Terre" width="170" height="181">

            </div>
            <hr class="vertical-line" />
            <div class="prod-right column" style="background: #fff;margin-top: -12px;">

               <div class="row">
                   <div class="col-xs-12 col-md-12" style="margin-left: -12px;margin-right:-12px;">
                       <div class="well well-sm" style="width:100%;">
                           <div class="row">
                               <div class="col-xs-12 col-md-5 text-center">
                                   <h1 class="rating-num">
                                      ${component.product_id} </h1>
                                   <div class="rating">
                                       <span class="fa fa-star rating-stars" ></span>
                                       <span class="fa fa-star rating-stars" ></span>
                                       <span class="fa fa-star rating-stars" ></span>
                                       <span class="fa fa-star rating-stars" ></span>
                                      <span class="fa fa-star rating-stars" ></span>
                                   </div>
                                   <div>
                                       <span class="fa fa-user"></span>1,050,008 total
                                   </div>
                               </div>
                               <div class="col-xs-12 col-md-7">
                                   <div class="row rating-desc">
                                       <div class="col-xs-3 col-md-3 text-right">
                                           <span class="fa fa-star"></span>5
                                       </div>
                                       <div class="col-xs-8 col-md-9">
                                           <div class="progress progress-striped">
                                               <div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                80%
                                               </div>



                                           </div>
                                       </div>
                                       <!-- end 5 -->
                                       <div class="col-xs-3 col-md-3 text-right">
                                           <span class="fa fa-star"></span>4
                                       </div>
                                       <div class="col-xs-8 col-md-9">
                                           <div class="progress">
                                               <div class="progress-bar progress-bar-striped bg-success" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                   60%
                                               </div>
                                           </div>
                                       </div>
                                       <!-- end 4 -->
                                       <div class="col-xs-3 col-md-3 text-right">
                                           <span class="fa fa-star"></span>3
                                       </div>
                                       <div class="col-xs-8 col-md-9">
                                           <div class="progress">
                                               <div class="progress-bar progress-bar-striped bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                   40%
                                               </div>
                                           </div>
                                       </div>
                                       <!-- end 3 -->
                                       <div class="col-xs-3 col-md-3 text-right">
                                           <span class="fa fa-star"></span>2
                                       </div>
                                       <div class="col-xs-8 col-md-9">
                                           <div class="progress">
                                               <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                   20%
                                               </div>
                                           </div>
                                       </div>
                                       <!-- end 2 -->
                                       <div class="col-xs-3 col-md-3 text-right">
                                           <span class="fa fa-star"></span>1
                                       </div>
                                       <div class="col-xs-8 col-md-9">
                                           <div class="progress">
                                               <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                                                   15%
                                               </div>
                                           </div>
                                       </div>
                                       <!-- end 1 -->
                                   </div>
                                   <!-- end row -->
                               </div>
                           </div>
                       </div>
                   </div>
               </div>

                 <div class="row">
                   <div class="col-xs-12 col-md-12" style="margin-left: -12px;margin-right:-12px;">
                       <div class="well well-sm" style="width:100%;">
                        <div class="row">


                          <div class="col-xs-12 col-md-5 text-center">
                                <input class="addIcoBtn prod-itm-stats" type="button" value="Favorite | 23" onclick="boardFavorite(10523);">
                                <input class="addIcoBtn prod-itm-stats" type="button" value="Favorite | 23" onclick="boardFavorite(10523);">
                                <input class="addIcoBtn prod-itm-stats" type="button" value="Favorite | 23" onclick="boardFavorite(10523);">
                                <input class="addIcoBtn prod-itm-stats" type="button" value="Favorite | 23" onclick="boardFavorite(10523);">
                          </div>



                            <div class="col-xs-12 col-md-5 text-center" style="max-height:25px; margin-left:43px">

                              <div class="star-rating__wrap" style="background: #FFFFFF ;margin:8px 0 4px 0 ; padding: 1px; " >
                                  <h6>Rate This Book</h6>

                            </div>


                                <div class="star-rating__wrap" style="background: #222;padding: 10% 8% 8% 8%; " >

                                  <input class="star-rating__input" id="star-rating-5" type="radio" name="rating" value="5">
                                  <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-5" title="5 out of 5 stars"></label>
                                  <input class="star-rating__input" id="star-rating-4" type="radio" name="rating" value="4">
                                  <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-4" title="4 out of 5 stars"></label>
                                  <input class="star-rating__input" id="star-rating-3" type="radio" name="rating" value="3">
                                  <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-3" title="3 out of 5 stars"></label>
                                  <input class="star-rating__input" id="star-rating-2" type="radio" name="rating" value="2">
                                  <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-2" title="2 out of 5 stars"></label>
                                  <input class="star-rating__input" id="star-rating-1" type="radio" name="rating" value="1">
                                  <label class="star-rating__ico fa fa-star-o fa-lg" for="star-rating-1" title="1 out of 5 stars"></label>

                              </div>
                            </div>


                        </div>
                       </div>
                   </div>
               </div>
            </div>
          </div>
          <hr/>

       <div class="containerqq" style="width=100%;">

  <div class="accordion">


   <div class="card mb-0">
   <div class="card-header collapsed" data-toggle="collapse" href="#accordionInner" style="background-color: red;">
                <a class="card-title">
                   Read Reviews
                </a>
  </div>

    <div id="accordionInner" class="accordion card-body collapse" data-parent="#accordion">

        <div class="card mb-0">
            <div class="card-header collapsed" data-toggle="collapse" href="#collapseOne">
                <a class="card-title">
                    Item 1
                </a>
            </div>
            <div id="collapseOne" class="card-body collapse" data-parent="#accordionInner" >
                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                    craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </p>
            </div>
            <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordionInner" href="#collapseTwo">
                <a class="card-title">
                  Item 2
                </a>
            </div>
            <div id="collapseTwo" class="card-body collapse" data-parent="#accordionInner" >
                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                    craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </p>
            </div>
            <div class="card-header collapsed" data-toggle="collapse" data-parent="#accordionInner" href="#collapseThree">
                <a class="card-title">
                  Item 3
                </a>
            </div>
            <div id="collapseThree" class="collapse" data-parent="#accordionInner" >
                <div class="card-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. samus labore sustainable VHS.
                </div>
            </div>
        </div>


		</div>


	</div>
</div>

</div>



    </div>

</div>
</div>
</c:forEach>
        </c:if>

  </main>

  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!--  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.mockjax.js"></script>
  <script src="js/readmore.js"></script>
  <script src="js/scripts.js"></script> -->

  <script src="<c:url value=" resources/js/jquery.min.js " />"></script>
  <script src="<c:url value=" resources/js/popper.min.js " />"></script>
  <script src="<c:url value=" resources/js/bootstrap.min.js " />"></script>
  <script src="<c:url value=" resources/js/jquery.mockjax.js" />"></script>
  <script src="<c:url value=" resources/js/readmore.js" />"></script>
  <script src="<c:url value=" resources/js/scripts.js " />"></script>

<script>

var processing;

$(document).ready(function(){

    $(document).scroll(function(e){

    	console.log("comehing in scrooll="+processing);
        if (processing)
            return false;

        if ($(window).scrollTop() >= $(document).height() - $(window).height() - 700){
            processing = true;
            /* $.post('/echo/html/', 'html=<div class="loadedcontent">new div</div>', function(data){
                $('#container').append(data);
                processing = false;
            }); */
            
            
            var json = [];
            var obj = {};
                         obj["count"] = globalVal ; 
                          console.log("sent Data===="+obj["count"]);
                        
                         json.push(obj);
                         
                         
                         
            console.log("globalVal===="+ globalVal);
      	  $.ajax({
                type: "POST",
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                url: "${pageContext.request.contextPath}/continuedContent",  
                data:json ,
                success: function(data) {
                
                 
                    var jsonObj = $.parseJSON(JSON.stringify(data));
                    console.log("sent Data===="+JSON.stringify(jsonObj));
                }
      	  });
        }
    });
});



$(document).ready(function() {
	 $('#cat-book').click(function() {
		 console.log("clicked book");
  var json = [];
  var obj = {};
               obj["cat-name"] = $('book'); 
                console.log("sent Data===="+obj["cat-book"]);
              
               json.push(obj);
          

        
    	  $.ajax({
              type: "POST",
              contentType: 'application/json; charset=utf-8',
              dataType: 'json',
              url: "${pageContext.request.contextPath}/Book",
              data: JSON.stringify(json), 
              success: function(data) {
              
               
                  var jsonObj = $.parseJSON(JSON.stringify(data));
                  console.log("sent Data===="+JSON.stringify(jsonObj));
              }
    	  }); 
    });
});
</script>




  <script>
    $('.expander').readmore({
      speed: 500
    });
  </script>


  <script>
    // sandbox disable popups
    if (window.self !== window.top && window.name!="view1") {;
      window.alert = function(){/*disable alert*/};
      window.confirm = function(){/*disable confirm*/};
      window.prompt = function(){/*disable prompt*/};
      window.open = function(){/*disable open*/};
    }

    // prevent href=# click jump
    document.addEventListener("DOMContentLoaded", function() {
      var links = document.getElementsByTagName("A");
      for(var i=0; i < links.length; i++) {
        if(links[i].href.indexOf('#')!=-1) {
          links[i].addEventListener("click", function(e) {
          console.debug("prevent href=# click");
              if (this.hash) {
                if (this.hash=="#") {
                  e.preventDefault();
                  return false;
                }
                else {
                  /*
                  var el = document.getElementById(this.hash.replace(/#/, ""));
                  if (el) {
                    el.scrollIntoView(true);
                  }
                  */
                }
              }
              return false;
          })
        }
      }
    }, false);
  </script>
</body>

</html>
