<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="dist/img/user2-160x160.jpg" class="img-circle"
					alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Alexander Pierce</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">MAIN NAVIGATION</li>
			<li class="active treeview"><a href="#"> <i
					class="fa fa-users"></i> <span>QL người dùng</span> <span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li class="active"><a href="index.html"><i
							class="fa fa-circle-o"></i>
						<spring:message code="authorize" text="authorize" /></a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>
						<spring:message code="authorize" text="authorize" /></a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>
						<spring:message code="admin" text="admin" /></a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>
						<spring:message code="home" text="home" /></a></li>

				</ul></li>

			<li>
			<li class=" treeview"><a href="#"> <i class="fa fa-users"></i>
					<span><spring:message code="account" text="account" /></span> <span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="index.html"><i class="fa fa-circle-o"></i>
						<spring:message code="authorize" text="authorize" /></a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>
						<spring:message code="authorize" text="authorize" /></a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>
						<spring:message code="account.list" text="list" /></a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>
						<spring:message code="account.search" text="search" /></a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>
						<spring:message code="account.delete" text="delete" /></a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>
						<spring:message code="account.delete" text="delete" /></a></li>

				</ul></li>

			<li>
			<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
					<span>TEST</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="index.html"><i class="fa fa-circle-o"></i>Tạo
							bài test</a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>Danh
							sách dợt thi</a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>quản
							lí nội dung</a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>quản
							lí nội dung</a></li>
				</ul></li>

			<li>
			<li class="treeview"><a href="#"> <i class="fa fa-wrench"></i>
					<span>Cấu hình</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="index.html"><i class="fa fa-circle-o"></i>Banner</a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>addon</a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>câu
							hinh mail</a></li>
					<li><a href="index2.html"><i class="fa fa-circle-o"></i>quản
							lí nội dung</a></li>
				</ul></li>

			<li><a href="../admin/danh-sach-san-pham"><i
					class="fa fa-shopping-cart"></i><span>QL san pham</span></a></li>
			<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
					<span>Layout Options</span> <span class="pull-right-container">
						<span class="label label-primary pull-right">4</span>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="pages/layout/top-nav.html"><i
							class="fa fa-circle-o"></i> Top Navigation</a></li>
					<li><a href="pages/layout/boxed.html"><i
							class="fa fa-circle-o"></i> Boxed</a></li>
					<li><a href="pages/layout/fixed.html"><i
							class="fa fa-circle-o"></i> Fixed</a></li>
					<li><a href="pages/layout/collapsed-sidebar.html"><i
							class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
				</ul></li>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>