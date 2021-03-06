<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./commonHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- BootStrap相关文件-->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!--jQuery文件-->
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!--富文本编辑器的文件-->
<script type="text/javascript" src="./js/bootstrap-wysiwyg.js"></script>
<script type="text/javascript" src="./js/jquery.hotkeys.js"></script>

   <link href="css/prettify.css" rel="stylesheet">
   <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
   <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<title>问题回复</title>
<style type="text/css">
	h2 {text-align: center;}
	#editor {
		overflow: scroll; 
		max-height: 300px;
		height: 300px;
		margin: auto;
		border: 2px solid gray;
		box-shadow: grey 3px 3px 3px;
		margin-bottom: 5px;
	}
</style>
</head>
<body>
<div class="container-fluid">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div id="alerts"></div>
			</div>			
		</div>
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
			      <div class="btn-group">
			        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><!-- <b class="caret"> --></b></a>
			          <ul class="dropdown-menu">
			          </ul>
			        </div>
			      <div class="btn-group">
			        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<!-- <b class="caret"></b> --></a>
			          <ul class="dropdown-menu">
			          <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
			          <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
			          <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
			          </ul>
			      </div>
			      <div class="btn-group">
			        <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
			        <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
			        <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
			        <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
			      </div>
			      <div class="btn-group">
			        <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
			        <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
			        <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
			        <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
			      </div>
			      <div class="btn-group">
			        <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
			        <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
			        <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
			        <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
			      </div>
			      <div class="btn-group">
					  <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>
					    <div class="dropdown-menu input-append">
						    <input class="span2" placeholder="URL" type="text" data-edit="createLink"/>
						    <button class="btn" type="button">Add</button>
			        </div>
			        <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>

			      </div>
			      
			      <div class="btn-group">
			        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>
			        <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
			      </div>
			      <div class="btn-group">
			        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
			        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
			      </div>
			      <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
			    </div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div id="editor">
			      
			    </div>
			</div>
		</div>
		<div class="row align-items-end">
			<div class="col-md-8 offset-md-2">
			<button type="button" class="btn btn-default" id="reset">重置</button>&nbsp;&nbsp;
  			<button type="button" class="btn btn-primary" id="submit">提交</button>				
			</div>
		</div>
	</div>
	

    





	<script type="text/javascript">
		$(function(){
    function initToolbarBootstrapBindings() {
      var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 
            'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
            'Times New Roman', 'Verdana'],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
      $.each(fonts, function (idx, fontName) {
          fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
      });
      $('a[title]').tooltip({container:'body'});
    	$('.dropdown-menu input').click(function() {return false;})
		    .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
        .keydown('esc', function () {this.value='';$(this).change();});

      $('[data-role=magic-overlay]').each(function () { 
        var overlay = $(this), target = $(overlay.data('target')); 
        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
      });
      if ("onwebkitspeechchange"  in document.createElement("input")) {
        var editorOffset = $('#editor').offset();
        $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});
      } else {
        $('#voiceBtn').hide();
      }
	};
    initToolbarBootstrapBindings();
    function showErrorAlert (reason, detail) {
		let msg='';
		if (reason==='unsupported-file-type') { msg = "格式不支持 " +detail; }
		else {
			console.log("文件上传错误！", reason, detail);
		}
		$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 
		 '<strong>错误信息:</strong> '+msg+' </div>').prependTo('#alerts');
	};  
	$('#editor').wysiwyg({ fileUploadError: showErrorAlert} );
    window.prettyPrint && prettyPrint();


    $("#reset").click(function(){
    	$('#editor').html('');
    });

    $("#submit").click(function(){
    	console.log("富文本内容:  "+$('#editor').html())
    });

  });	
	
</script>
</body>
</html>