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
		<!-- Custom Tabs -->
		<div class="nav-tabs-custom">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tab_1" data-toggle="tab">Part
						1</a></li>
				<li><a href="#tab_2" data-toggle="tab">Part 2</a></li>
				<li><a href="#tab_3" data-toggle="tab">Part 3</a></li>
				<li><a href="#tab_4" data-toggle="tab">Part 4</a></li>
				<li><a href="#tab_5" data-toggle="tab">Part 5</a></li>
				<li><a href="#tab_6" data-toggle="tab">Part 6</a></li>
				<li><a href="#tab_7" data-toggle="tab">Part 7</a></li>
				<li><a href="#tab_8" data-toggle="tab">Anser</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> Dropdown <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Action</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Another action</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Something else here</a></li>
						<li role="presentation" class="divider"></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Separated link</a></li>
					</ul></li>
				<li class="pull-right"><a href="#" class="text-muted"><i
						class="fa fa-gear"></i></a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="tab_1">
					<h3>Part I: Picture Description</h3>

					<p>Directions: For each question, you will see a picture and
						you will hear four short statements. The statements will be spoken
						just one time. They will not be printed in your test book so you
						must listen carefully to understand what the speaker says. When
						you hear the four statements, look at the picture and choose the
						statement that best describes what you see in the picture. Choose
						the best answer A, B, C or D</p>

				</div>

				<div class="tab-pane" id="tab_2">
					<h3>Part II: Question - Response</h3>
					<p>Directions: In this part of the test, you will hear a
						question or statement spoken in English, followed by three
						responses, also spoken in English. The question or statement and
						the responses will be spoken just one time. They will not be
						printed in your test book, so you must listen carefully. You are
						to choose the best response to each question or statement. Now
						listen to a sample question.</p>
				</div>

				<div class="tab-pane" id="tab_3">
					<h3>Part III: Short Conversations</h3>
					Directions: You will hear some conversations between two people.
					You will be asked to answer three questions about what the speakers
					say in each conversation. Select the best response to each question
					and mark the letter (A), (B), (C) or (D) on your answer sheet. The
					conversations will not be printed in your test book and will be
					spoken only one time.
				</div>
				<div class="tab-pane" id="tab_4">
					<h3>Part IV: Short Talks</h3>
					Directions: You will hear some talks given by a single speaker. You
					will be asked to answer three questions about what the speaker says
					in each talk. Select the best response to each question and mark
					the letter (A), (B), (C) or (D) on your answer sheet. The talks
					will not be printed in your test book and will be spoken only one
					time. Start
				</div>
				<div class="tab-pane" id="tab_5">
					<h3>Part V: Incomplete Sentences</h3>
					Directions: A word or pharse is missing in each of the sentences
					below. Four answer choices are given below each sentence. Select
					the best answer to complete the sentence. Then mark the letter (A),
					(B), (C) or (D) on your answer sheet.
				</div>
				<div class="tab-pane" id="tab_6">
					<h3>Part VI: Text Completion</h3>
					Directions: Read the texts that follow. A word or pharse is missing
					in some of the sentences. Four answer choices are given below each
					of the sentences. Select the best answer to complete the text. Then
					mark the letter (A), (B), (C) or (D) on your answer sheet.
				</div>
				<div class="tab-pane" id="tab_7">
					<h3>Part VII: Reading</h3>
					Comprehension Directions: In this part you will read a selection of
					texts, such as magezine and newspaper articles, letters, and
					advertisements. Each text is followed by several questions. Select
					the best answer for each question and mark the letter (A), (B), (C)
					or (D) on your answer sheet.
				</div>
				<div class="tab-pane" id="tab_8">
					<div class="col-md-1" >
						A
					</div>
					<div class="col-md-1" >B</div>
					<div class="col-md-1" >C</div>
					<div class="col-md-1" >D</div>
					<div class="col-md-1" >E</div>
				</div>
			</div>

		</div>

	</div>


	<div class="col-md-6">
		<!-- Custom Tabs (Pulled to the right) -->
		<div class="nav-tabs-custom">
			<ul class="nav nav-tabs pull-right">
				<li class="active"><a href="#tab_1-1" data-toggle="tab">Part
						1</a></li>
				<li><a href="#tab_2-2" data-toggle="tab">Part 2</a></li>
				<li><a href="#tab_3-2" data-toggle="tab">Part 3</a></li>
				<li><a href="#tab_4-2" data-toggle="tab">Part 4</a></li>
				<li><a href="#tab_5-2" data-toggle="tab">Part 5</a></li>
				<li><a href="#tab_6-2" data-toggle="tab">Part 6</a></li>
				<li><a href="#tab_7-2" data-toggle="tab">Part 7</a></li>
				<li><a href="#tab_8-2" data-toggle="tab">Anser</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> Dropdown <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Action</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Another action</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Something else here</a></li>
						<li role="presentation" class="divider"></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">Separated link</a></li>
					</ul></li>
				<li class="pull-left header"><i class="fa fa-th"></i> Custom
					Tabs</li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="tab_1-1">
					<b>How to use:</b>
				</div>

				<div class="tab-pane" id="tab_2-2">Part 2</div>
				<div class="tab-pane" id="tab_3-2">Part 2</div>
				<div class="tab-pane" id="tab_4-2">Part 2</div>
				<div class="tab-pane" id="tab_5-2">Part 2</div>
				<div class="tab-pane" id="tab_6-2">Part 2</div>
				<div class="tab-pane" id="tab_7-2">Part 2</div>
				<div class="tab-pane" id="tab_2-2">Part 2</div>
				<div class="tab-pane" id="tab_3-2"></div>

			</div>

		</div>

	</div>

</div>
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




<table class="table">
	<thead class="thead-light">
		<tr>
			<th scope="col">id</th>
			<th scope="col">title</th>
			<th scope="col">linkMp3Full</th>
			<th scope="col">status</th>
			<th scope="col">testTime</th>
			<th scope="col">By</th>
			<th scope="col">Time</th>

		</tr>
	</thead>
	<tbody id="table-data">

	</tbody>
</table>
<div class="page-navigator" id="phan-trang"></div>
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
					<div class="form-group col-md-12">
						<label for=img-new>đường dẫn ảnh</label> <input type="text"
							class="form-control" id="img-new" placeholder="đường dẫn ảnh">
					</div>
					<div class="form-group col-md-12">
						<label for="exampleInputPassword1">chi tiết</label> <input
							type="text" class="form-control" id="detail-new"
							placeholder="chi tiết">
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
						<label for="exampleInputEmail1">title</label> <input type="text"
							class="form-control" id="name-title" placeholder="Tên sản phẩm">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">link mp3</label> <input
							type="text" class="form-control" id="cost-linkmp3"
							placeholder="giá">
					</div>
					<div class="form-group col-md-12">
						<label for="exampleInputEmail1">status</label> <input type="text"
							class="form-control" id="status-edit" placeholder="đường dẫn ảnh">
					</div>
					<div class="form-group col-md-12">
						<label for="exampleInputEmail1">Time test</label> <input
							type="text" class="form-control" id="time-test-edit"
							placeholder="đường dẫn ảnh">
					</div>
					<div class="form-group col-md-12">
						<b id="time-create-edit">User create:</b> <i></i> <b
							id="time-update-edit">Time create:</b> <i></i> <br> <b
							id="update-by-edit">User create:</b> <i></i> <b
							id="update-time-edit">Time update:</b> <i></i> <br>
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
<script language="javascript"
	src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
<script>
		var list = null;
		var page = 1;
		var maxResult = 5;
		var maxNavigationPage = 20;
		
		var loadData = function(page,maxResult){
			$.ajax({
                    url : "../api/test/page/"+page+"/maxResult/"+maxResult+"/maxNavigationPage/20",
					contentType: 'application/json',
                    type : "GET",
                    dataType: "json",                  
					success : function (result){
						$("#table-data").empty();
						result.list.forEach(element=> {
						var item = "<tr>"
							+ '<td scope="row">' + element.id + '</td>'
							+ '<td>' + element.title + '</td>'
							+ '<td><b>' + element.linkMp3Full + ' VND</b></td>'
							+ '<td>'+ element.status +'</td>'	
							+ '<td>'+"create by: <b>"+element.createBy+ "</b><br>update by: <b>"+element.updateBy +'</b></td>'
							+ '<td>'+"test time :" + (new Date(element.testTime)).toDateString() +'<br>'
							+  "create time :" + (new Date(element.createTime)).toDateString() +'<br>'
							+  "update time :" + (new Date(element.updateTime)).toDateString() +'</td>'
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
                    url : "../api/test/user",
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
			$("#modal-edit").modal("toggle");
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
	                  url : "../api/test/search/"+page+"/maxResult/"+maxResult+"/maxNavigationPage/20/key/"+key+"/value/"+value,
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