<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Document</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <style type="text/css">
        .container{
    margin-top:20px;
}
.image-preview-input {
    position: relative;
	overflow: hidden;
	margin: 0px;    
    color: #333;
    background-color: #fff;
    border-color: #ccc;    
}
.image-preview-input input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
}
.image-preview-input-title {
    margin-left:2px;
}
    </style>
    <%@include file="links.jsp"%>
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper">

  <header class="main-header">
  <%@include file="header2.jsp"%>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
  <%@include file="sidebar2.jsp"%>
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container">
	 
			<div class="col-md-11">
              <div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Document</h3>
				</div>
				<br>
				<form action="/ams/document/singleFileUpload" method="post" enctype="multipart/form-data">
				<div class="box-body">
                <div class="form-group">
                    
                    <div class="col-sm-9">
						 <label for="document">Document Type</label>
						<select id="wing" class="form-control" autofocus>
							  <option value="a">---Select Document---</option>
							  <option value="a">Aadhaar Card</option>
							  <option value="b">Election Card</option>
							  <option value="c">Pan Card</option>
							  <option value="c">Ration Card</option>
							  <option value="c">PassPort</option>
							  <option value="c">Driving License</option>
						</select>
						<br>
						<div class="form-group">
							<label for="otherdocument">Other Document</label>
							<input type="email" class="form-control" id="otherdocument">				 
						</div>
                    </div>
                </div> 
				
				
				
	<div class="form-group">
		<div class="row">    
			<div class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">  
            <!-- image-preview-filename input [CUT FROM HERE]-->
				<div class="input-group image-preview">
						<input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
						<span class="input-group-btn">
                    <!-- image-preview-clear button -->
						<button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> Clear
						</button>
                    <!-- image-preview-input -->
						<div class="btn btn-default image-preview-input">
							<span class="glyphicon glyphicon-folder-open"></span>
							<span class="image-preview-input-title">Browse</span>
							<input type="file" name="file" id="file"  accept="image/png, image/jpeg, image/gif" name="input-file-preview"/> <!-- rename it -->
						</div>
                </span>
				</div><!-- /input-group image-preview [TO HERE]--> 
			</div>
		</div>
	</div>
 							
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
   </div>
   </div>
   </div>
   </section>
   </div>
     <%@include file="footer.jsp"%>
     
<script type="text/javascript">
$(document).on('click', '#close-preview', function(){ 
    $('.image-preview').popover('hide');
    // Hover befor close the preview
    $('.image-preview').hover(
        function () {
           $('.image-preview').popover('show');
        }, 
         function () {
           $('.image-preview').popover('hide');
        }
    );    
});

$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview-clear').click(function(){
        $('.image-preview').attr("data-content","").popover('hide');
        $('.image-preview-filename').val("");
        $('.image-preview-clear').hide();
        $('.image-preview-input input:file').val("");
        $(".image-preview-input-title").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview-input input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title").text("Change");
            $(".image-preview-clear").show();
            $(".image-preview-filename").val(file.name);            
            img.attr('src', e.target.result);
            $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
        }        
        reader.readAsDataURL(file);
    });  
});
</script>

</body>
</html>
