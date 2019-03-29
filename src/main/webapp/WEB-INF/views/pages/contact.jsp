<%@ include file="templates/headerMillennium.jsp" %>
<%@ include file="templates/navigationMillennium.jsp" %>


<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
<h2 class="text-center">CONTACT</h2>
	<div class="row">
	    <div class="col-sm-5">
	    <h3 class="country-name">Indore</h3>
	      <p><!-- Detail of base loaction address --></p>
	      <p><span class="glyphicon glyphicon-map-marker"></span> Indore, IN -452001</p>
	      <p><span class="glyphicon glyphicon-phone"></span> +91 8305968583</p>
	      <p><span class="glyphicon glyphicon-envelope"></span> Indore@Millennium.com</p>
	    </div>
	    
  	    <div class="col-sm-5">
  	    <h3 class="country-name">Hinjewadi MIDC</h3>
	      <p><!-- Detail of base loaction address --></p>
	      <p><span class="glyphicon glyphicon-map-marker"></span> Hinjawadi, Pune - 411057</p>
	      <p><span class="glyphicon glyphicon-phone"></span> +91 8305855378</p>
	      <p><span class="glyphicon glyphicon-envelope"></span> pune@Millennium.com</p>
	    </div>    
	    
		<form:form method="POST" modelAttribute="contact">
		          <form:input type="text" path="cName" class="form-control"   id="cName"  placeholder="Name" required="required" />
		          <form:input type="text" path="cMobile" class="form-control"  id="cMobile"  placeholder="Mobile" required="required" />
		          <form:input type="text" path="cEmail" class="form-control"  id="cEmail" placeholder="Email"  required="required" />
		       	  <form:textarea path="cComments" class="form-control"  id="cComments"  placeholder="Comments" rows="5" required="required" /><br>
		          <button type="submit" class="btn btn-info btn-default pull-Centre" >Inquiry</button>
		</form:form>
	</div>
</div>

<%@ include file="templates/footerMillennium.jsp" %>
