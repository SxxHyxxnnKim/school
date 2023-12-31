<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp" />
<style type="text/css">

body {
	margin-top: 20px;
}

.bg-light-gray {
	background-color: #f7f7f7;
}

.table-bordered thead td, .table-bordered thead th {
	border-bottom-width: 2px;
}

.table thead th {
	vertical-align: bottom;
	border-bottom: 2px solid #dee2e6;
}

.table-bordered td, .table-bordered th {
	border: 1px solid #dee2e6;
}

.bg-sky.box-shadow {
	box-shadow: 0px 5px 0px 0px #00a2a7
}

.bg-orange.box-shadow {
	box-shadow: 0px 5px 0px 0px #af4305
}

.bg-green.box-shadow {
	box-shadow: 0px 5px 0px 0px #4ca520
}

.bg-yellow.box-shadow {
	box-shadow: 0px 5px 0px 0px #dcbf02
}

.bg-pink.box-shadow {
	box-shadow: 0px 5px 0px 0px #e82d8b
}

.bg-purple.box-shadow {
	box-shadow: 0px 5px 0px 0px #8343e8
}

.bg-lightred.box-shadow {
	box-shadow: 0px 5px 0px 0px #d84213
}

.bg-sky {
	background-color: #02c2c7
}

.bg-orange {
	background-color: #e95601
}

.bg-green {
	background-color: #5bbd2a
}

.bg-yellow {
	background-color: #f0d001
}

.bg-pink {
	background-color: #ff48a4
}

.bg-purple {
	background-color: #9d60ff
}

.bg-lightred {
	background-color: #ff5722
}

.padding-15px-lr {
	padding-left: 15px;
	padding-right: 15px;
}

.padding-5px-tb {
	padding-top: 5px;
	padding-bottom: 5px;
}

.margin-10px-bottom {
	margin-bottom: 10px;
}

.border-radius-5 {
	border-radius: 5px;
}

.margin-10px-top {
	margin-top: 10px;
}

.font-size14 {
	font-size: 14px;
}

.text-light-gray {
	color: #d6d5d5;
}

.font-size13 {
	font-size: 13px;
}

.table-bordered td, .table-bordered th {
	border: 1px solid #dee2e6;
}

.table td, .table th {
	padding: .75rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
}
</style>
<script type="text/javascript">
	
</script>
<div class="container">
	<div class="row">
		<div class="timetable-img text-center">
			<img src="img/content/timetable.png" alt="">
		</div>
		<div class="table-responsive">
			<table class="table table-bordered text-center">
				<thead>
					<tr class="bg-light-gray">
						<th class="text-uppercase">Time</th>
						<th class="text-uppercase">Mon</th>
						<th class="text-uppercase">Tue</th>
						<th class="text-uppercase">Wed</th>
						<th class="text-uppercase">Thu</th>
						<th class="text-uppercase">Fri</th>
					</tr>
				</thead>
				<tbody>
					<tr id="1">
						<td class="align-middle">09:00am~11:00am</td>
						<td><span
							class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16 xs-font-size13">Dance</span>
							<div class="margin-10px-top font-size14">9:00-10:00</div>
							<div class="font-size13 text-light-gray">Ivana Wong</div></td>
						<td class="bg-white"></td>
						<td class="bg-white"></td>
						<td class="bg-white"></td>
						<td class="bg-white"></td>
					</tr>

					<tr id="2">
						<td class="align-middle">11:00am~1:00pm</td>
						<td><span
							class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Music</span>
							<div class="margin-10px-top font-size14">10:00-11:00</div>
							<div class="font-size13 text-light-gray">Ivana Wong</div></td>
						<td class="bg-white"></td>
						<td><span
							class="bg-purple padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Art</span>
							<div class="margin-10px-top font-size14">10:00-11:00</div>
							<div class="font-size13 text-light-gray">Kate Alley</div></td>
						<td><span
							class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Yoga</span>
							<div class="margin-10px-top font-size14">10:00-11:00</div>
							<div class="font-size13 text-light-gray">Marta Healy</div></td>
						<td><span
							class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">English</span>
							<div class="margin-10px-top font-size14">10:00-11:00</div>
							<div class="font-size13 text-light-gray">James Smith</div></td>
					</tr>
					<tr id="3">
						<td class="align-middle">1:00pm~3:00pm</td>
						<td><span
							class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Break</span>
							<div class="margin-10px-top font-size14">11:00-12:00</div>
							<div class="font-size13 text-light-gray">Kate Alley</div></td>
						<td class="bg-white"></td>
						<td class="bg-white"></td>
						<td class="bg-white"></td>
						<td class="bg-white"></td>
					</tr>

					<tr id="4">
						<td class="align-middle">3:00pm~5:00pm</td>
						<td class="bg-light-gray"></td>
						<td><span
							class="bg-purple padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Art</span>
							<div class="margin-10px-top font-size14">12:00-1:00</div>
							<div class="font-size13 text-light-gray">Kate Alley</div></td>
						<td><span
							class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Dance</span>
							<div class="margin-10px-top font-size14">12:00-1:00</div>
							<div class="font-size13 text-light-gray">Ivana Wong</div></td>
						<td><span
							class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Music</span>
							<div class="margin-10px-top font-size14">12:00-1:00</div>
							<div class="font-size13 text-light-gray">Ivana Wong</div></td>
						<td class="bg-light-gray"></td>
					</tr>

					<tr id="5">
						<td class="align-middle">5:00pm~7:00pm</td>
						<td><span
							class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">English</span>
							<div class="margin-10px-top font-size14">1:00-2:00</div>
							<div class="font-size13 text-light-gray">James Smith</div></td>
						<td><span
							class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Music</span>
							<div class="margin-10px-top font-size14">1:00-2:00</div>
							<div class="font-size13 text-light-gray">Ivana Wong</div></td>
						<td class="bg-light-gray"></td>
						<td><span
							class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">English</span>
							<div class="margin-10px-top font-size14">1:00-2:00</div>
							<div class="font-size13 text-light-gray">James Smith</div></td>
						<td><span
							class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Yoga</span>
							<div class="margin-10px-top font-size14">1:00-2:00</div>
							<div class="font-size13 text-light-gray">Marta Healy</div></td>

					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
</div>
</div>
<jsp:include page="/foot.jsp" />



