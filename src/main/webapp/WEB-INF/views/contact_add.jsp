<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./fragments/head.jsp"%>
</head>
<body style="background-color: #E9ECEB;">
<%@include file="./fragments/menu.jsp"%>
<div class="container m-2">
	<div class="container-sm" style="background-color: #FCFCFC;">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h4 class="text-center mb-3 mt-3 text-warning">Add Contact</h4>
				<!-- form -->
                <!-- В атрибутах for, id, name прописуємо так, як прописані змінні в Entity-класі,
                оскільки Hibernate розуміє саме такий напис -->
				<form action="add-contact" method="post">
					<div>
						<label for="firstname"><span style="font-size:12px;">Firstname</span></label>
						<input type="text" class="form-control fw-light" id="firstname" name="firstname"
							placeholder="Contact firstname...">
					</div>
					<div>
                        <label for="lastname"><span style="font-size:12px;">Lastname</span></label>
                        <input type="text" class="form-control fw-light" id="lastname" name="lastname"
                            placeholder="Contact lastname...">
                    </div>
					<div>
						<label for="phone"><span style="font-size:12px;">Phone</span></label>
						<textarea class="form-control fw-light" name="phone" id="phone"
							rows="3" placeholder="Contact phone..."></textarea>
					</div>
					<div class="container text-center mb-4"><br>
						<a href="${pageContext.request.contextPath}/contacts" class="btn btn-outline-primary btn-sm">Back</a>
						&nbsp;&nbsp;
                        <button type="submit" class="btn btn-primary btn-sm">Add</button>
					</div>
				</form>
				<!-- end form -->
			</div>
		</div>
	</div>
</div>
<%@include file="./fragments/js_inc.jsp"%>
</body>
</html>