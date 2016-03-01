<%@ include file="/WEB-INF/layouts/fragment/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> 田园铁锅 | <sitemesh:write property='title'/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link rel="shortcut icon" href="${ctx }/resources/favicon.ico" />

<%@ include file="/WEB-INF/layouts/fragment/common-css.jsp"%>
<%@ include file="/WEB-INF/layouts/fragment/common-js.jsp"%>
</head>

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
	<!-- HEADER LAYOUT -->
	<%@ include file="/WEB-INF/layouts/header/header.jsp"%>

	<div class="clearfix"> </div>
     <!-- CONTENT LAYOUT -->
	<div class="page-container">
		<%@ include file="/WEB-INF/layouts/sidebar/sidebar.jsp"%>
		<div class="page-content-wrapper">
			<div class="page-content" style="min-height:1112px">
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<a href="/">首页</a>
							<i class="fa fa-circle"></i>
						</li>
						<li>
							<span><sitemesh:write property='title'/></span>
						</li>
					</ul>
					<div class="page-toolbar">
						<div id="dashboard-report-range" class="pull-right tooltips btn btn-sm" data-container="body" data-placement="bottom" data-original-title="Change dashboard date range">
							<i class="icon-calendar"></i>&nbsp;
							<span class="thin uppercase hidden-xs">January 22, 2016 - February 20, 2016</span>&nbsp;
							<i class="fa fa-angle-down"></i>
						</div>
					</div>
				</div>
				<sitemesh:write property='body'/>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/layouts/footer/footer.jsp"%>
</body>
</html>