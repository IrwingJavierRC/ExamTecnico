<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Organizacion</title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- #CSS Links -->

<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css">

<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/smartadmin-production-plugins.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/smartadmin-skins.min.css">

<!-- DEV links : turn this on when you like to develop directly -->
<!--<link rel="stylesheet" type="text/css" media="screen" href="../Source_UNMINIFIED_CSS/smartadmin-production.css">-->
<!--<link rel="stylesheet" type="text/css" media="screen" href="../Source_UNMINIFIED_CSS/smartadmin-skins.css">-->

<!-- SmartAdmin RTL Support -->
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/smartadmin-rtl.min.css">

<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.-->
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/mainStyle.css">

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/resources/css/demo.min.css">

<!-- #FAVICONS -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon" />

<!-- #GOOGLE FONT -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- #APP SCREEN / ICONS -->
<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/img/splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/img/splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/resources/img/splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/resources/img/splash/touch-icon-ipad-retina.png">

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image" href="${pageContext.request.contextPath}/resources/img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image" href="${pageContext.request.contextPath}/resources/img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image" href="${pageContext.request.contextPath}/resources/img/splash/iphone.png"
	media="screen and (max-device-width: 320px)">

<!-- DataTables -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resources/js/plugin/datatables/jquery.dataTables.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/css/buttons.dataTables.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/ColumnFilter/ColumnFilterWidgets.css">

<style type="text/css">
</style>
<%-- <script src="${pageContext.request.contextPath}/resources/js/h5utils.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/js/intercom.js"></script>


</head>

<!--

	TABLE OF CONTENTS.
	
	Use search to find needed section.
	
	===================================================================
	
	|  01. #CSS Links                |  all CSS links and file paths  |
	|  02. #FAVICONS                 |  Favicon links and file paths  |
	|  03. #GOOGLE FONT              |  Google font link              |
	|  04. #APP SCREEN / ICONS       |  app icons, screen backdrops   |
	|  05. #BODY                     |  body tag                      |
	|  06. #HEADER                   |  header tag                    |
	|  07. #PROJECTS                 |  project lists                 |
	|  08. #TOGGLE LAYOUT BUTTONS    |  layout buttons and actions    |
	|  09. #MOBILE                   |  mobile view dropdown          |
	|  10. #SEARCH                   |  search field                  |
	|  11. #NAVIGATION               |  left panel & navigation       |
	|  12. #MAIN PANEL               |  main panel                    |
	|  13. #MAIN CONTENT             |  content holder                |
	|  14. #PAGE FOOTER              |  page footer                   |
	|  15. #SHORTCUT AREA            |  dropdown shortcuts area       |
	|  16. #PLUGINS                  |  all scripts and plugins       |
	
	===================================================================
	
	-->
<style>
footer {
	float: bottom;
	bottom:;
	width: 100%;
	height: 40px;
	color: black;
	font-size: 15 px;
	z-index: 2;
	margin-bottom: 30px;
	display: block;
}

#Inicio {
	font-size: large;
}

a {
	color: black;
}

a:HOVER {
	color: black;
}

.alert {
	margin-bottom: 0px;
}
</style>

<!-- #BODY -->
<!-- Possible Classes

		* 'smart-style-{SKIN#}'
		* 'smart-rtl'         - Switch theme mode to RTL
		* 'menu-on-top'       - Switch to top navigation (no DOM change required)
		* 'no-menu'			  - Hides the menu completely
		* 'hidden-menu'       - Hides the main menu but still accessable by hovering over left edge
		* 'fixed-header'      - Fixes the header
		* 'fixed-navigation'  - Fixes the main menu
		* 'fixed-ribbon'      - Fixes breadcrumb
		* 'fixed-page-footer' - Fixes footer
		* 'container'         - boxed layout mode (non-responsive: will not work with fixed-navigation & fixed-ribbon)
	-->
<body id="body" class="smart-style-3 minified" oncontextmenu="return false" onselectstart="return false" ondragstart="return false">

	<!-- #HEADER -->
	<header id="header" class="col-sm-12 col-md-12 col-lg-12">
		<div id="logo-group" class="hidden-xs hidden-sm hidden-md col-lg-1" style="padding-left: 10px;">

			<!-- PLACE YOUR LOGO HERE -->
			<%-- 				<span id="logo"> <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="CJM" style="top: -20px"> </span> --%>
			<!-- END LOGO PLACEHOLDER -->

			<!-- Note: The activity badge color changes when clicked and resets the number to 0
					 Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
			<!-- 				<span id="activity" class="activity-dropdown"> <i class="fa fa-user"></i> <b class="badge"> 21 </b> </span> -->

			<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
			<div class="ajax-dropdown">
				<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
				<div class="btn-group btn-group-justified" data-toggle="buttons">
					<label class="btn btn-default"> <input type="radio" name="activity" id="ajax/notify/mail.html"> Msgs (14)
					</label> <label class="btn btn-default"> <input type="radio" name="activity" id="ajax/notify/notifications.html"> notify (3)
					</label> <label class="btn btn-default"> <input type="radio" name="activity" id="ajax/notify/tasks.html"> Tasks (4)
					</label>
				</div>

				<!-- notification content -->
				<div class="ajax-notifications custom-scroll">

					<div class="alert alert-transparent">
						<h4>Click a button to show messages here</h4>
						This blank page message helps protect your privacy, or you can show the first message here automatically.
					</div>

					<i class="fa fa-lock fa-4x fa-border"></i>

				</div>
				<!-- end notification content -->

				<!-- footer: refresh area -->
				<span> Last updated on: 12/12/2013 9:43AM
					<button type="button" data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..." class="btn btn-xs btn-default pull-right">
						<i class="fa fa-refresh"></i>
					</button>
				</span>
				<!-- end footer -->
			</div>
			<!-- END AJAX-DROPDOWN -->
		</div>

		
		<!-- #TOGGLE LAYOUT BUTTONS -->
		<!-- pulled right: nav area -->

		<!-- end pulled right: nav area -->

	</header>
	<!-- END HEADER -->

	<!-- #NAVIGATION -->
	<!-- Left panel : Navigation area -->
	<!-- Note: This width of the aside area can be adjusted through LESS/SASS variables -->


	<aside id="left-panel">

		<!-- User info -->
		<div class="login-info">
			<span> <!-- User image size is adjusted inside CSS, it should stay as is --> <a href="javascript:void(0);" id="show-shortcut"
				data-action="toggleShortcut"> <img alt="${usuario.nombre}" src="data:image/jpg;base64,<c:out value='${usuario.userImagePath}'/> " /> <%-- 						<img src="${usuario.userImagePath}" alt="${usuario.nombre}" class="online" /> --%>
					<span style="font-size: 13px"> <fmt:formatNumber pattern="0000" value="${usuario.id}" />/${usuario.nombre}
				</span> <i class="fa fa-angle-down"></i>
			</a>

			</span>
		</div>
		<!-- end user info -->

		<span class="minifyme" data-action="minifyMenu"> <i class="fa fa-arrow-circle-left hit"></i>
		</span>
		<nav>
			<ul id="panelMenu">
				<li class=""><a id="addSpan" href="adminOrganizacion.jsp" title="Inicio"><i class="fa fa-lg fa-fw fa-home"></i> </a></li>
				<c:forEach var="padre" items="${menus}">
					<c:if test="${padre.tipoMenu == 'LATERAL'}">
						<li class=""><a href="#" title="${padre.nombre}"><i class="${padre.icono}"></i> <span class="menu-item-parent">${padre.nombre}</span></a>
							<ul>
								<c:forEach var="hijo" items="${padre.hijos}">
									<li class=""><a href="${hijo.pathController}${hijo.metodo}" title="${hijo.nombre}"><i class="${hijo.icono}"></i> <span
											class="menu-item-parent">${hijo.nombre}</span></a></li>
								</c:forEach>
							</ul></li>

					</c:if>
				</c:forEach>
			</ul>

		</nav>



	</aside>
	<!-- END NAVIGATION -->


	<!-- #MAIN PANEL -->
	<div id="main" role="main">

		<!-- RIBBON -->
		<div id="ribbon">

			<span class="ribbon-button-alignment"> <span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"
				rel="tooltip" data-placement="bottom"
				data-original-title="<i class='text-warning fa fa-warning'></i> Advertencia! Esto reiniciará la configuración de los widget" data-html="true"
				data-reset-msg="Desea BORRAR la configuración de sus widgets?"><i class="fa fa-refresh"></i></span>
			</span>

			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<!-- This is auto generated -->
			</ol>
		</div>
		<!-- END RIBBON -->

		<!-- #MAIN CONTENT -->
		<div id="content">
		
		</div>

		<!-- END #MAIN CONTENT -->
		


	</div>

	<div class="page-footer" style="position: fixed; z-index: 3">
		<div style="color: white; position: left; position: bottom; left: 0px; right: 0px; bottom: 0px; height: 0px; text-align: center;">
			<span style="position: inherit;" id="versionCJM"></span>
		</div>
		
	</div>



	<!-- END #MAIN PANEL -->

	<!-- #SHORTCUT AREA : With large tiles (activated via clicking user name tag)
			 Note: These tiles are completely responsive, you can add as many as you like -->
	<div id="shortcut">
		<ul>
			<li><a href="#" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i
						class="fa fa-lg fa-fw fa-home fa-4x"></i> <span>Home</span>
				</span>
			</a></li>

			
		</ul>
	</div>
	<!-- END SHORTCUT AREA -->

	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
		if (!window.jQuery) {
			document.write('_$tag___________________________________________________________________________________$tag_____');
		}
	</script>

	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script>
		if (!window.jQuery.ui) {
			document.write('<script src="${pageContext.request.contextPath}/resources/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		}
	</script>

	<!-- IMPORTANT: APP CONFIG -->
	<script src="${pageContext.request.contextPath}/resources/js/app.config.js"></script>

	<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>

	<!-- BOOTSTRAP JS -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>

	<!-- CUSTOM NOTIFICATION -->
	<script src="${pageContext.request.contextPath}/resources/js/notification/SmartNotification.min.js"></script>

	<!-- JARVIS WIDGETS -->
	<script src="${pageContext.request.contextPath}/resources/js/smartwidgets/jarvis.widget.min.js"></script>

	<!-- EASY PIE CHARTS -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
	<%-- 		<script src="${pageContext.request.contextPath}/resources/js/plugin/easy-pie-chart/angular.easypiechart.js"></script> --%>
	<%-- 		<script src="${pageContext.request.contextPath}/resources/js/plugin/easy-pie-chart/angular.easypiechart.min.js"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/easy-pie-chart/easypiechart.js"></script>
	<%-- 		<script src="${pageContext.request.contextPath}/resources/js/plugin/easy-pie-chart/easypiechart.min.js"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/easy-pie-chart/jquery.easypiechart.js"></script>
	<!-- SPARKLINES -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/sparkline/jquery.sparkline.min.js"></script>

	<!-- JQUERY VALIDATE -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/jquery-validate/jquery.validate.min.js"></script>

	<!-- JQUERY MASKED INPUT -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

	<!-- JQUERY SELECT2 INPUT conla 4.0.1 no servia el filtro en multiple -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/select2/4.0.3/js/select2.min.js"></script>

	<!-- JQUERY UI + Bootstrap Slider -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

	<!-- browser msie issue fix -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

	<!-- FastClick: For mobile devices: you can disable this in app.js -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/fastclick/fastclick.min.js"></script>

	<!--[if IE 8]>
			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
		<![endif]-->

	<!-- Demo purpose only -->
	<script src="${pageContext.request.contextPath}/resources/js/demo.min.js"></script>

	<!-- MAIN APP JS FILE -->
	<script src="${pageContext.request.contextPath}/resources/js/app.min.js"></script>

	<!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
	<!-- Voice command : plugin -->
	<script src="${pageContext.request.contextPath}/resources/js/speech/voicecommand.min.js"></script>

	<!-- SmartChat UI : plugin -->
	<script src="${pageContext.request.contextPath}/resources/js/smart-chat-ui/smart.chat.ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/smart-chat-ui/smart.chat.manager.min.js"></script>

	<!-- Your GOOGLE ANALYTICS CODE Below -->
	<!-- <script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-XXXXXXXX-X' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script> -->
	<script>
		var ctx = "${pageContext.request.contextPath}";
	</script>

	<!-- Script con la funcionalidad de los combos -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/index.js"></script>

	<!-- DataTables -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/datatables/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/datatables/dataTables.colVis.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/datatables/dataTables.tableTools.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/datatables/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/datatable-responsive/datatables.responsive.min.js"></script>
	<%-- 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script> --%>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/scripts/dataTableDefaults.js"></script>

	<!-- botones y export de datatables -->
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/buttons.html5.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/buttons.print.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/buttons.flash.min.js"></script>
	<%-- 	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/buttons.bootstrap.min.js"></script> --%>
	<%-- 	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/buttons.colVis.min.js"></script> --%>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/jszip.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/pdfmake.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Buttons/js/vfs_fonts.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/ColumnFilter/ColumnFilterWidgets.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugin/datatables/extensions/Select/js/dataTables.select.min.js"></script>

	<!-- Wizard -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/fuelux/wizard/wizard.min.js"></script>

	<!-- Fullcalendar -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/moment/moment.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/fullcalendar/jquery.fullcalendar.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/fullcalendar/lang-all.js"></script>

	<!-- Chart -->
	<%-- 		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/chartjs/chart.min.js"></script> --%>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/chartjs/Chart.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/chartjs/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/chartjs/Chart.bundle.js"></script>



	<!-- CKEditor -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/bootstrapvalidator/bootstrapValidator.min.js"></script>

	<!-- ClockPicker -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/clockpicker/clockpicker.min.js"></script>

	<!-- TimePicker -->

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>

	<!-- NesTable -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/jquery-nestable/jquery.nestable.min.js"></script>

	<!-- Cookies -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/cookie/jquery.cookie.js"></script>

	<!-- Knob -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/knob/jquery.knob.min.js"></script>

	<!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/flot/jquery.flot.cust.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/flot/jquery.flot.resize.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/flot/jquery.flot.fillbetween.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/flot/jquery.flot.orderBar.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/flot/jquery.flot.pie.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/flot/jquery.flot.time.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugin/flot/jquery.flot.tooltip.min.js"></script>



</body>
</html>