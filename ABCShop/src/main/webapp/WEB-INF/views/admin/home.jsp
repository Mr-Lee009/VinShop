<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

.switch input {
	opacity: 0;
	width: 0;
	height: 0;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}
</style>
<%-- <table class="table">
	<thead class="thead-light">
		<tr>
			<th scope="col">id</th>
			<th scope="col">username</th>
			<th scope="col">phonenumber</th>
			<th scope="col">email</th>
			<th scope="col">tool</th>
		</tr>
	</thead>
	<tbody id="table-data">
		<c:forEach var="item" items="${listUser}">
			<tr>
				<td>${item.id}</td>
				<td>${item.username}</td>
				<td>${item.phonenumber}</td>
				<td>${item.rule}</td>
				<td>tool</td>
			</tr>
		</c:forEach>
	</tbody>
</table> --%>

<div class="row">
	<div class="col-md-12">
		<div class="box box-default">
			<div class="box-header with-border">
				<i class="fa fa-warning"></i>

				<h3 class="box-title">Alerts</h3>
			</div>

			<div class="box-body">
				<div class="row">
					<div class="col-md-1">
						<button type="button" class="btn btn-default" data-toggle="modal"
							data-target="#modal-default">Add</button>
					</div>
					<div class="col-md-2">
						<label for="cars">Choose line in pape:</label> <select name="cars"
							id="number-line">
							<option value="5">5</option>
							<option value="10">10</option>
							<option value="20">20</option>
							<option value="30">30</option>
							<option value="40">40</option>
						</select>
					</div>
					<div class="col-md-2">
						<label for="cars">Search by:</label> <select name="cars" id="key">
							<option value="all">all</option>
							<option value="username">username</option>
							<option value="email">email</option>
							<option value="phonenumber">phone number</option>
							<option value="rule">rule</option>
						</select>
					</div>
					<div class="col-md-2">
						<label for="cars">Search by:</label> <input type="text"
							id="txt-search" placeholder="Search by ...">
					</div>
					<div class="col-md-1">
						<input type="button" id="btn-search" value="search">
					</div>
				</div>


			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">id</th>
							<th scope="col">username</th>
							<th scope="col">phonenumber</th>
							<th scope="col">email</th>
							<th scope="col">role</th>
							<th scope="col">active</th>
							<th scope="col">tool</th>
						</tr>
					</thead>
					<tbody id="table-data">

					</tbody>
				</table>
				<div class="page-navigator" id="phan-trang"></div>

			</div>
			<!-- /.box-body -->
		</div>
		<!-- /.box -->
	</div>

</div>



<div class="modal fade in" id="modal-default">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h5 class="modal-title">Thêm người dùng</h5>
			</div>
			<div class="modal-body">
				<div class="box-body">
					<div class="form-group col-md-6">
						<label for="new-username">username</label> <input type="text"
							class="form-control" id="new-username"
							placeholder="tên người dùng">
					</div>
					<div class="form-group col-md-6">
						<label for="new-email">email</label> <input type="text"
							class="form-control" id="new-email" placeholder="@gmail.com"
							value="@gmail.com">
					</div>
					<div class="form-group col-md-6">
						<label for="new-password">password</label> <input type="text"
							class="form-control" id="new-password" placeholder="@gmail.com">
					</div>
					<div class="form-group col-md-6">
						<label for="new-phonenumber">phone number</label> <input
							type="number" class="form-control" id="new-phonenumber"
							placeholder="số điện thoại liên hệ">
					</div>
					<div class="form-group col-md-6">
						<label for="new-rule">rule</label> <select name="rule"
							id="new-rule">
							<option value="ADMIN">ADMIN</option>
							<option value="USER">USER</option>
							<option value="TEACHER">TEACHER</option>
							<option value="SA">SA</option>
						</select>
					</div>
					<div class="form-group col-md-6">
						<label for=img-new>đường dẫn ảnh</label> <input type="text"
							class="form-control" id="img-new" placeholder="đường dẫn ảnh">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">Trạng thái</label><label
							class="switch"> <input type="checkbox" checked="">
							<span class="slider round"></span></label>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="addUser()">Add
					New</button>
				<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<!-- Modan edit -->


<div class="modal fade in" id="modal-edit">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h5 class="modal-title">
					Chi tiêt sản phẩm <b style="coloer: red" id="id_number"></b>
				</h5>
			</div>
			<div class="modal-body">

				<div class="box-body">
					<input type="hidden" id="id-edit">
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">username</label> <input
							type="text" class="form-control" id="name-edit"
							placeholder="Tên sản phẩm">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">email</label> <input
							type="text" class="form-control" id="cost-edit" placeholder="giá">
					</div>
					<div class="form-group col-md-12">
						<label for="exampleInputEmail1">rule</label> <input type="text"
							class="form-control" id="img-edit" placeholder="đường dẫn ảnh">
					</div>
					<div class="form-group col-md-12">
						<label for="exampleInputPassword1">enable</label> <input
							type="text" class="form-control" id="detail-edit"
							placeholder="chi tiết">
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="updateUser()">Update</button>
				<button type="button" class="btn btn-danger" data-dismiss="modal"
					onclick="hidenModaEdit()">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<script>
	CKEDITOR.replace("detail-new");
	CKEDITOR.replace("detail-edit");
</script>
<script>
		var list = null;
		var page = 1;
		var maxResult = 5;
		var maxNavigationPage = 20;
		
		var loadData = function(page,maxResult){
			$.ajax({
                    url : "../api/home/page/"+page+"/maxResult/"+maxResult+"/maxNavigationPage/20",
					contentType: 'application/json',
                    type : "GET",
                    dataType: "json",                  
					success : function (result){
						$("#table-data").empty();
						result.list.forEach(element=> {
							
						var item = "<tr>"
							+ '<td scope="row">' + element.id + '</td>'
							+ '<td>' + element.username + '</td>'
							+ '<td><b>' + element.phonenumber + ' VND</b></td>'
							+ '<td>'+ element.email +'</td>'							
							+ '<td>'+ (element.rule=="ADMIN"?"<b>"+element.rule+"</b>": element.rule) + '</td>'
							+ '<td><label class="switch"> <input type="checkbox"'+(element.status===1?'checked':'')+'> <span class="slider round"></span></label></td>'
							+ '<th scope="col">'
							+ '<button class="btn btn-danger btn-sm"onclick="deleteData('+ element.id +')">'
							+ '<i class="fa fa-trash" aria-hidden="true"></i>'
							+ '</button>'
							+ '<button class="btn btn-info btn-sm" onclick="editUser(' + element.id + ')">'
							+'<i class="fa fa-edit" aria-hidden="true"></i>'
							+ '</button>'
							+ '<button class="btn btn-sm btn-success"><i class="fas fa-check" aria-hidden="true"></i></button>'
							+ '</th></tr>';
							$("#table-data").append(item);
			
						});
						
						$("#phan-trang").empty();
						result.navigationPages.forEach(element=> {
							if(element != -1 ){
								$("#phan-trang").append("<button onclick='choisePage("+element+","+maxResult+")'>"+element+"</button>")
							}
							else{
								$("#phan-trang").append('<button>...</button>');
							} 
						});
						
                    },
					error: function (error) {
						$('#result').html("loi" + error.data);
					}
            });
		}
		
		var addUser = function(){			
			var user={
					username: $("#new-username").val(),
					email: $("#new-email").val(),
					password: $("#new-password").val(),
					phonenumber : $("#new-phonenumber").val(),
					rule : $("#new-rule").val()
			};
			$.ajax({
                    url : "../api/home/user",
                    type : "POST",
                    contentType: 'application/json',
    				data: JSON.stringify(user),                                
					success : function (result){
						$("#table-data").empty();
						loadData(page,maxResult);					
                    },
					error: function (error) {
						$('#result').html("loi" + error);
					}
            });
		}
		
		var updateUser = function(){			
			var User={
					id: $("#id-edit").val(),
					name: $("#name-edit").val(),
					img: $("#img-edit").val(),
					detail : $("#detail-edit").val(),
					cost :  parseFloat($("#cost-edit").val())
			};
			$.ajax({
                    url : "../api/home",
                    type : "PUT",
                    contentType: 'application/json',
    				data: JSON.stringify(User),                                
					success : function (result){
						hidenModaEdit();
						$("#table-data").empty();
						loadData();					
                    },
					error: function (error) {
						$('#result').html("loi" + error.data);
					}
            });
		}
		
		var deleteData = function(id){
			$.ajax({
                    url : ".../api/User/"+id,
                    type : "DELETE",
					success : function (result){
						$("#table-data").empty();
						loadData();
						console.log(result);
                    },
					error: function (error) {
						console.log("loi");
					}
            });
		}
		
		var editUser = function(id){
			$.ajax({
                    url : ".../api/User/"+id,
                    type : "GET",
                    contentType: 'application/json',                            
					success : function (result){
						$("#id-edit").val(result.id);
						$("#name-edit").val(result.name);
						$("#img-edit").val(result.img);
						$("#detail-edit").val(result.detail);
						$("#cost-edit").val(result.cost.toString());
						$("#id_number").text(result.id);					
						$("#modal-edit").modal("toggle");
                    },
					error: function (error) {					
						$('#result').html("loi" + error.data);
					}
            });			
		}
		
		var hidenModaEdit= function(){
			$("#modal-edit").modal("toggle");
		}
		
		$("#number-line" ).change(function() {
			  loadData(1,this.value);
		});
		
		$("#btn-search").click(function() {
			  var key = $("#key").val();
			  var value = $("#txt-search").val();
			  page = 1;
			  maxResult = 5;		  
			  if(key==="all"){
				 loadData(page,maxResult);
			  }
			  searchByInfo(page,maxResult,key,value);
		});
		
		var choisePage= function(page,maxResult) {
			 var key = $("#key").val();
			 var value = $("#txt-search").val();
			 if(key=="all" || key==null || value == null){
				 loadData(page,maxResult);
			 }
			 else{
				 searchByInfo(page,maxResult,key,value);
			 }
		};
		var searchByInfo = function(page,maxResult,key,value) {
			 
				 $.ajax({
	                  url : "../api/home/search/"+page+"/maxResult/"+maxResult+"/maxNavigationPage/20/key/"+key+"/value/"+value,
					  contentType: 'application/json',
	                  type : "GET",
	                  dataType: "json",                  
						success : function (result){
							$("#table-data").empty();
							result.list.forEach(element=> {
							var item = "<tr>"
								+ '<td scope="row">' + element.id + '</td>'
								+ '<td>' + element.username + '</td>'
								+ '<td>'+ element.email +'</td>'
								+ '<td><b>' + element.password + ' VND</b></td>'
								+ '<td>' + element.rule + '</td>'
								+ '<th scope="col">'
								+ '<button class="btn btn-danger btn-sm"onclick="deleteData('+ element.id +')">'
								+ '<i class="fa fa-trash" aria-hidden="true"></i>'
								+ '</button>'
								+ '<button class="btn btn-info btn-sm" onclick="editUser(' + element.id + ')">'
								+'<i class="fa fa-edit" aria-hidden="true"></i>'
								+ '</button>'
								+ '<button class="btn btn-sm btn-success"><i class="fas fa-check" aria-hidden="true"></i></button>'
								+ '</th></tr>';
								$("#table-data").append(item);
							});
							
							$("#phan-trang").empty();
							result.navigationPages.forEach(element=> {
								if(element != -1 ){
									$("#phan-trang").append("<button onclick='choisePage("+element+","+maxResult+")'>"+element+"</button>")
								}
								else{
									$("#phan-trang").append('<button>...</button>');
								} 
							});
							
	                  },
						error: function (error) {
							$('#result').html("loi" + error.data);
						}
	          });		 
		};
		
		loadData(page,maxResult);
</script>