<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/top1.jsp" />
<script>
	/* 	$(window).load(function() {
	 var m = '${param.m}';

	 $('#topheader .navbar-nav a').click(
	 function(e) {
	 $('#topheader .navbar-nav').find('li.active').removeClass(
	 'active');
	 $(this).parent('li').addClass('active');
	 $('.' + m).parent('li').addClass('active')
	 e.preventDefault();
	 return false;
	 });
	 }) */
</script>

<script type="text/javascript">
	var calendar = new tui.Calendar(document.getElementById('calendar'), {
		defaultView : 'month',
		taskView : 'milestone', // Can be also ['milestone', 'task']
		scheduleView : true, // Can be also ['allday', 'time']
		template : {
			milestone : function(schedule) {
				return '<span style="color:red;"><i class="fa fa-flag"></i> '
						+ schedule.title + '</span>';
			},
			milestoneTitle : function() {
				return 'Milestone';
			},
			task : function(schedule) {
				return '&nbsp;&nbsp;#' + schedule.title;
			},
			taskTitle : function() {
				return '<label><input type="checkbox" />Task</label>';
			},
			allday : function(schedule) {
				return schedule.title + ' <i class="fa fa-refresh"></i>';
			},
			alldayTitle : function() {
				return 'All Day';
			},
			time : function(schedule) {
				return schedule.title + ' <i class="fa fa-refresh"></i>'
						+ schedule.start;
			}
		},
		month : {
			daynames : [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ],
			startDayOfWeek : 0,
			narrowWeekend : true
		},
		week : {
			daynames : [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ],
			startDayOfWeek : 0,
			narrowWeekend : true
		}
	});
</script>

<div class="text-left">
	<h1 class="text-center">${msg}</h1>
	<div class="py-5" style="">
		<div class="container">
			<div class="row">
				<div class="col-md-7" style="">
					<div class="row">
						<div class="table-responsive" style="">
							<ul style="list-style-type: square">
								<h4>
									<li>공지사항</li>
								</h4>
							</ul>
							<table class="table">
								<thead class="text-center">
									<tr>
										<th style="width: 20%">번호</th>
										<th style="width: 50%">제목</th>
										<th style="width: 30%">업로드 날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">1</td>
										<td>Mark</td>
										<td class="text-center">Otto</td>
									</tr>
								</tbody>
							</table>

						</div>

					</div>
					<div class="row">
						<ul style="list-style-type: square">
							<h4>
								<li>자유게시판</li>
							</h4>
						</ul>
						<table class="table">
							<thead class="text-center">
								<tr>
									<th style="width: 20%">번호</th>
									<th style="width: 50%">제목</th>
									<th style="width: 30%">업로드 날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">1</td>
									<td>Mark</td>
									<td class="text-center">Otto</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-md-5">
					<ul style="list-style-type: square">
						<h4>
							<li>학사일정</li>
						</h4>
					</ul>
					<div id="calendar" class=""></div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/foot1.jsp" />