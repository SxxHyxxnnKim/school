<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/top2.jsp" />

<div class="text-left">
	<h1 class="text-center">${msg}</h1>
</div>
<!-- 캘린더 컨테이너 태그 작성 -->
<div class="container">
	<div id="menu">
		<span id="menu-navi">
			<button type="button" class="btn btn-default btn-sm move-today"
				data-action="move-today">Today</button>
			<button type="button" class="btn btn-default btn-sm move-day"
				data-action="move-prev">
				<i class="calendar-icon ic-arrow-line-left" data-action="move-prev"></i>
			</button>
			<button type="button" class="btn btn-default btn-sm move-day"
				data-action="move-next">
				<i class="calendar-icon ic-arrow-line-right" data-action="move-next"></i>
			</button>
		</span> <span id="renderRange" class="render-range"></span>
	</div>
</div>
<!-- calendar container end -->

<div class="container">
	<div class="row">
		<div id="calendar" class="col-md-10 offset-md-1 text-left"></div>
	</div>
</div>

<script type="text/javascript">
	var COMMON_CUSTOM_THEME = {
		'common.border' : '1px solid #ffbb3b',
		'common.backgroundColor' : '#ffbb3b0f',
		'common.holiday.color' : '#f54f3d',
		'common.saturday.color' : '#3162ea',
		'common.dayname.color' : '#333'
	};

	var MONTHLY_CUSTOM_THEME = {
		// month header 'dayname'
		'month.dayname.height' : '42px',
		'month.dayname.borderLeft' : 'none',
		'month.dayname.paddingLeft' : '8px',
		'month.dayname.paddingRight' : '0',
		'month.dayname.fontSize' : '13px',
		'month.dayname.backgroundColor' : 'inherit',
		'month.dayname.fontWeight' : 'normal',
		'month.dayname.textAlign' : 'left',
		// month day grid cell 'day'
		'month.holidayExceptThisMonth.color' : '#f3acac',
		'month.dayExceptThisMonth.color' : '#bbb',
		'month.weekend.backgroundColor' : '#fafafa',
		'month.day.fontSize' : '16px',
		// month schedule style
		'month.schedule.borderRadius' : '5px',
		'month.schedule.height' : '18px',
		'month.schedule.marginTop' : '2px',
		'month.schedule.marginLeft' : '10px',
		'month.schedule.marginRight' : '10px',
		// month more view
		'month.moreView.boxShadow' : 'none',
		'month.moreView.paddingBottom' : '0',
		'month.moreView.border' : '1px solid #9a935a',
		'month.moreView.backgroundColor' : '#f9f3c6',
		'month.moreViewTitle.height' : '28px',
		'month.moreViewTitle.marginBottom' : '0',
		'month.moreViewTitle.backgroundColor' : '#f4f4f4',
		'month.moreViewTitle.borderBottom' : '1px solid #ddd',
		'month.moreViewTitle.padding' : '0 10px',
		'month.moreViewList.padding' : '10px'
	};

	var WEEKLY_CUSTOM_THEME = {
		// week header 'dayname'
		'week.dayname.height' : '41px',
		'week.dayname.borderTop' : '1px solid #ddd',
		'week.dayname.borderBottom' : '1px solid #ddd',
		'week.dayname.borderLeft' : '1px solid #ddd',
		'week.dayname.paddingLeft' : '5px',
		'week.dayname.backgroundColor' : 'inherit',
		'week.dayname.textAlign' : 'left',
		'week.today.color' : '#b857d8',
		'week.pastDay.color' : '#999',
		// week vertical panel 'vpanel'
		'week.vpanelSplitter.border' : '1px solid #ddd',
		'week.vpanelSplitter.height' : '3px',
		// week daygrid 'daygrid'
		'week.daygrid.borderRight' : '1px solid #ddd',
		'week.daygrid.backgroundColor' : 'inherit',
		'week.daygridLeft.width' : '77px',
		'week.daygridLeft.backgroundColor' : '#a8def74d',
		'week.daygridLeft.paddingRight' : '5px',
		'week.daygridLeft.borderRight' : '1px solid #ddd',
		'week.today.backgroundColor' : '#b857d81f',
		'week.weekend.backgroundColor' : 'inherit',
		// week timegrid 'timegrid'
		'week.timegridLeft.width' : '77px',
		'week.timegridLeft.backgroundColor' : '#03a9f44d',
		'week.timegridLeft.borderRight' : '1px solid #ddd',
		'week.timegridLeft.fontSize' : '12px',
		'week.timegridLeftTimezoneLabel.height' : '51px',
		'week.timegridLeftAdditionalTimezone.backgroundColor' : '#fdfdfd',
		'week.timegridOneHour.height' : '48px',
		'week.timegridHalfHour.height' : '24px',
		'week.timegridHalfHour.borderBottom' : '1px dotted #f9f9f9',
		'week.timegridHorizontalLine.borderBottom' : '1px solid #eee',
		'week.timegrid.paddingRight' : '10px',
		'week.timegrid.borderRight' : '1px solid #ddd',
		'week.timegridSchedule.borderRadius' : '0',
		'week.timegridSchedule.paddingLeft' : '0',
		'week.currentTime.color' : '#135de6',
		'week.currentTime.fontSize' : '12px',
		'week.currentTime.fontWeight' : 'bold',
		'week.pastTime.color' : '#808080',
		'week.pastTime.fontWeight' : 'normal',
		'week.futureTime.color' : '#333',
		'week.futureTime.fontWeight' : 'normal',
		'week.currentTimeLinePast.border' : '1px solid rgba(19, 93, 230, 0.3)',
		'week.currentTimeLineBullet.backgroundColor' : '#135de6',
		'week.currentTimeLineToday.border' : '1px solid #135de6',
		'week.currentTimeLineFuture.border' : '1px solid #135de6',
		// week creation guide style
		'week.creationGuide.color' : '#135de6',
		'week.creationGuide.fontSize' : '12px',
		'week.creationGuide.fontWeight' : 'bold',
		// week daygrid schedule style
		'week.dayGridSchedule.borderRadius' : '0',
		'week.dayGridSchedule.height' : '18px',
		'week.dayGridSchedule.marginTop' : '2px',
		'week.dayGridSchedule.marginLeft' : '10px',
		'week.dayGridSchedule.marginRight' : '10px'
	};

	function getTimeTemplate(schedule, isAllDay) {
		var html = [];

		if (!isAllDay) {
			html.push('<strong>'
					+ moment(schedule.start.getTime()).format('HH:mm')
					+ '</strong> ');
		}
		if (schedule.isPrivate) {
			html.push('<span class="calendar-font-icon ic-lock-b"></span>');
			html.push(' Private');
		} else {
			if (schedule.isReadOnly) {
				html
						.push('<span class="calendar-font-icon ic-readonly-b"></span>');
			} else if (schedule.recurrenceRule) {
				html
						.push('<span class="calendar-font-icon ic-repeat-b"></span>');
			} else if (schedule.attendees.length) {
				html.push('<span class="calendar-font-icon ic-user-b"></span>');
			} else if (schedule.location) {
				html
						.push('<span class="calendar-font-icon ic-location-b"></span>');
			}
			html.push(' ' + schedule.title);
		}
		return html.join('');
	} //getTimeTemplate()------

	function getGridTitleTemplate(type) {
		var title = '';

		switch (type) {
		case 'milestone':
			title = '<span class="tui-full-calendar-left-content">MILESTONE</span>';
			break;
		case 'task':
			title = '<span class="tui-full-calendar-left-content">TASK</span>';
			break;
		case 'allday':
			title = '<span class="tui-full-calendar-left-content">ALL DAY</span>';
			break;
		} //switch
		return title;
	} //getGridTitleTemplate()------

	function getGridCategoryTemplate(category, schedule) {
		var tpl;

		switch (category) {
		case 'milestone':
			tpl = '<span class="calendar-font-icon ic-milestone-b"></span> <span style="background-color: ' + schedule.bgColor + '">'
					+ schedule.title + '</span>';
			break;
		case 'task':
			tpl = '#' + schedule.title;
			break;
		case 'allday':
			tpl = getTimeTemplate(schedule, true);
			break;
		} //switch
		return tpl;
	} //getGridCategoryTemplate()-----

	// register templates_month
	var templates = {
		milestone : function(schedule) {
			return getGridCategoryTemplate('milestone', schedule);
		},
		milestoneTitle : function() {
			return getGridTitleTemplate('milestone');
		},
		task : function(schedule) {
			return getGridCategoryTemplate('task', schedule);
		},
		taskTitle : function() {
			return getGridTitleTemplate('task');
		},
		allday : function(schedule) {
			return getTimeTemplate(schedule, true);
		},
		alldayTitle : function() {
			return getGridTitleTemplate('allday');
		},
		time : function(schedule) {
			return getTimeTemplate(schedule, false);
		},
		goingDuration : function(schedule) {
			return '<span class="calendar-icon ic-travel-time"></span>'
					+ schedule.goingDuration + 'min.';
		},
		comingDuration : function(schedule) {
			return '<span class="calendar-icon ic-travel-time"></span>'
					+ schedule.comingDuration + 'min.';
		},
		monthMoreTitleDate : function(date, dayname) {
			var day = date.split('.')[2];
			return '<span class="tui-full-calendar-month-more-title-day">'
					+ day
					+ '</span> <span class="tui-full-calendar-month-more-title-day-label">'
					+ dayname + '</span>';
		},
		monthMoreClose : function() {
			return '<span class="tui-full-calendar-icon tui-full-calendar-ic-close"></span>';
		},
		monthGridHeader : function(dayModel) {
			var date = parseInt(dayModel.date.split('-')[2], 10);
			var classNames = [ 'tui-full-calendar-weekday-grid-date ' ];

			if (dayModel.isToday) {
				classNames
						.push('tui-full-calendar-weekday-grid-date-decorator');
			}

			return '<span class="' + classNames.join(' ') + '">' + date
					+ '</span>';
		},
		monthGridHeaderExceed : function(hiddenSchedules) {
			return '<span class="weekday-grid-more-schedules">+'
					+ hiddenSchedules + '</span>';
		},
		monthGridFooter : function() {
			return '';
		},
		monthGridFooterExceed : function(hiddenSchedules) {
			return '';
		},
		monthDayname : function(model) {
			return String(model.label).toLocaleUpperCase();
		},
		dayGridTitle : function(viewName) {
			/*
			 * use another functions instead of 'dayGridTitle'
			 * milestoneTitle: function() {...}
			 * taskTitle: function() {...}
			 * alldayTitle: function() {...}
			 */
			return getGridTitleTemplate(viewName);
		},
		schedule : function(schedule) {
			/*
			 * use another functions instead of 'schedule'
			 * milestone: function() {...}
			 * task: function() {...}
			 * allday: function() {...}
			 */
			return getGridCategoryTemplate(schedule.category, schedule);
		},

		popupIsAllDay : function() {
			return 'All Day';
		},
		popupStateFree : function() {
			return 'Free';
		},
		popupStateBusy : function() {
			return 'Busy';
		},
		titlePlaceholder : function() {
			return 'Subject';
		},
		locationPlaceholder : function() {
			return 'Location';
		},
		startDatePlaceholder : function() {
			return 'Start date';
		},
		endDatePlaceholder : function() {
			return 'End date';
		},
		popupSave : function() {
			return 'Save';
		},
		popupUpdate : function() {
			return 'Update';
		},
		popupDetailDate : function(isAllDay, start, end) {
			var isSameDate = moment(start).isSame(end);
			var endFormat = (isSameDate ? '' : 'YYYY.MM.DD ') + 'hh:mm a';

			if (isAllDay) {
				return moment(start).format('YYYY.MM.DD')
						+ (isSameDate ? '' : ' - '
								+ moment(end).format('YYYY.MM.DD'));
			}

			return (moment(start).format('YYYY.MM.DD hh:mm a') + ' - ' + moment(
					end).format(endFormat));
		},
		popupDetailLocation : function(schedule) {
			return 'Location : ' + schedule.location;
		},
		popupDetailUser : function(schedule) {
			return 'User : ' + (schedule.attendees || []).join(', ');
		},
		popupDetailState : function(schedule) {
			return 'State : ' + schedule.state || 'Busy';
		},
		popupDetailRepeat : function(schedule) {
			return 'Repeat : ' + schedule.recurrenceRule;
		},
		popupDetailBody : function(schedule) {
			return 'Body : ' + schedule.body;
		},
		popupEdit : function() {
			return 'Edit';
		},
		popupDelete : function() {
			return 'Delete';
		}

	};

	var cal = new tui.Calendar('#calendar', {
		defaultView : 'month', // view option => month, week, day
		template : templates,
		useCreationPopup : true,
		useDetailPopup : true,
		month : {
			narrowWeekend : false, //true => 주말을 좁게
			workweek : true
		//true => 평일만 보여줌
		}
	/* 	taskView : false, // e.g. true, false, or ['task', 'milestone'])
	 scheduleView : ['time'], // e.g. true, false, or ['allday', 'time'])
	 month : {
	 narrowWeekend : false, //true => 주말을 좁게
	 workweek : false //true => 평일만 보여줌
	 },
	 timezones : [ // set timezone config
	 {
	 timezoneOffset : 540,
	 tooltip : 'Seoul'
	 }, {
	 timezoneOffset : -420,
	 tooltip : 'Los Angeles'
	 }] */
	});

	//cal.setTheme(COMMON_CUSTOM_THEME);
	//cal.setTheme(MONTHLY_CUSTOM_THEME);
	//cal.setTheme(WEEKLY_CUSTOM_THEME);
</script>

<jsp:include page="/foot2.jsp" />
