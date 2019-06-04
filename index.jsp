




	<link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="styles/css/aos.css">
	<link rel="stylesheet" href="styles/css/style.css">



<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%



<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300" style="font-size: 17px;">

	<security:authorize access="hasRole('ADMIN')">
		<fieldset class="border p-2">
			<legend>
				<spring:message code="master.security.message1" />
			</legend>

			<jstl:if test="${isFailSystemA==true}">
				<p style="color: red">
					<spring:message code="master.security.message.admin1" />
				</p>
			</jstl:if>
			<jstl:if test="${isFailSystemA==false}">
				<p style="color: red">
					<spring:message code="master.security.message.admin2" />
				</p>
			</jstl:if>
			<br />
			<form:form>
				<button class="btn-lg" style="background-color: red;"
					name="activate">
					<spring:message code="master.security.activar" />
				</button>
				<br />
				<br />
				<button class="btn-lg" style="background-color: orange;"
					name="desactivate">
					<spring:message code="master.security.desactivar" />
				</button>
			</form:form>
			<br />
		</fieldset>
	</security:authorize>

	<security:authorize
		access="hasAnyRole('SPONSOR','CLIENT','EXPERT','WORKER','COMPANY')">
		<jstl:if test="${isFailSystemO == true}">
			<div class="modal-wrapper" id="popup">

				<div class="popup-contenedor" align="center">

					<h2>
						<spring:message code="master.security.message1" />
					</h2>
					<p style="font-size: 15px;">${securityMessage}</p>

					<p style="font-size: 15px;">
						<spring:message code="master.security.message2" />
					</p>

					<a class="popup-cerrar" href="welcome/indexCerrar.do">X</a>
				</div>

			</div>
		</jstl:if>
	</security:authorize>

	<div style="z-index: -1;" class="site-section pb-0">

		<div style="z-index: -1;" class="future-blobs">
			<div style="z-index: -1;" class="blob_2">
				<img src="styles/images/blob_2.svg" alt="Image">
			</div>
			<div style="z-index: -1;" class="blob_1">
				<img src="styles/images/blob_1.svg" alt="Image">
			</div>
		</div>
		<div class="container" style="z-index: -1;">
			<div class="row mb-5 justify-content-center" style="z-index: -1;">
				<div class="col-lg-7 text-center" style="z-index: -1;">
					<img alt="Acme Insurance" src="styles/images/color.PNG"
						style="width: 60px; height: 60px;">
					<h2 class="section-title">Acme Insurance</h2>
				</div>
			</div>
			<div class="row" style="z-index: -1;">
				<div class="col-lg-4 ml-auto align-self-start" style="z-index: -1;">
					<div class="p-4 rounded bg-white why-choose-us-box"
						style="z-index: -1;">

						<h1 style="font-size: 30px;">
							<spring:message code="wellcome.index" />
						</h1>
						<br></br>
						<h1>
							<spring:message code="wellcome.index.2" />
						</h1>
					</div>
				</div>
				<div class="col-lg-7 align-self-end" style="z-index: -1;">
					<img src="styles/images/person_transparent.png" alt="Image"
						class="img-fluid">
				</div>
			</div>
		</div>
	</div>

	<div style="z-index: -1;" class="site-wrap">
		<div class="site-section bg-image overlay"
			style="z-index: -1; background-image: url('styles/images/hero_1.jpg');">
			<div style="" class="container">
				<div style="" class="row justify-content-center align-items-center">
					<div style="" class="col-md-8 text-center testimony">
						<img src="styles/images/color.PNG" alt="Image"
							class="img-fluid w-25 mb-4 rounded-circle">
						<blockquote>
							<p style="font-size: 20px;">
								<spring:message code="wellcome.texto" />
							</p>
						</blockquote>
					</div>
				</div>
			</div>
		</div>


		<div style="z-index: -1; margin-top: 20px;" class="container">
			<div style="z-index: -1;" class="row">
				<div style="z-index: -1;" class="col-md-4">
					<h3>
						<spring:message code="wellcome.presentation" />
					</h3>
					<div style="margin-left: 5px;">
						<p>· Alfonso Alarcón</p>
						<p>. Juan de la Oliva</p>
						<p>· Daniel Hinojo</p>
						<p>. Julián López</p>
						<p>. Pablo Pino</p>
						<p>. Jesús Torres</p>
					</div>
				</div>
				<div style="" class="col-md-3 ml-auto">
					<h3>Links</h3>
					<ul class="list-unstyled footer-links">
						<li><a href="insurance/list.do"><spring:message
									code="master.page.insurance.all" /></a></li>
						<li><a href="actor/all/list-companies.do"><spring:message
									code="master.page.listcompanies" /></a></li>
						<li><a href="security/login.do"><spring:message
									code="master.page.login" /></a></li>
					</ul>
				</div>
				<div style="z-index: -1;" class="col-md-4">
					<div style="margin-left: 10%">
						<img alt="Acme Insurance" src="styles/images/color.PNG"
							style="width: 60px; height: 60px;">
					</div>
					<h3 style="font-size: 20px">Acme Insurance</h3>
				</div>
			</div>
		</div>
	</div>
</body>
