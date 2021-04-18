<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="dec"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
	
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