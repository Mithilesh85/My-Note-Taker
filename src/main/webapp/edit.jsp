<%@page import="com.mithilesh.entities.Note"%>
<%@page import="com.mithilesh.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page:Note Taker</title>
 <%@include file="all_js_css.jsp" %> 
</head>
<body>

<div class="container">
   
    <%@include file="navbar.jsp" %>
    <br>
    <h1>Edit your note</h1>
    
    <%
    
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
    Session s=FactoryProvider.getFactory().openSession();
	
	Note note=(Note)s.get(Note.class,noteId);
    
    
    %>
    
    <form action="update" method="post">
    
    <input value="<%=note.getId() %>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title">Note Title</label> <input
					type="text"
					name="title" 
					required
					class="form-control" id="title"
				    placeholder="enter your title here"
				    value="<%=note.getTitle() %>"
				    > 
				    
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
					
					><%=note.getContent() %>
					</textarea>
					
			</div>
			
			<div class="container text-center">
			
			<button type="submit" class="btn btn-success">Save your note</button>
			
			</div>
			
		</form>    
   
   </div> 

</body>
</html>