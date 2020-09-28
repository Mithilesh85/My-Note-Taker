<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>

	<div class="container">

		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please fill your note details</h1>
		<br>

		<!-- form for add notes -->

		<form action="AddNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input
					type="text"
					name="title" 
					required
					class="form-control" id="title"
				    placeholder="enter your title here"> 
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
					<textarea 
					id="content" 
					required
					name="content"
					placeholder="enter your content here"
					class="form-control"
					style="height:100px"
					></textarea>
					
			</div>
			
			<div class="container text-center">
			
			<button type="submit" class="btn btn-primary">Add</button>
			
			</div>
			
		</form>

	</div>

</body>
</html>