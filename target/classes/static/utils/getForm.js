/**
 * 获取到表单的内容
 */
$.fn.serializeObject = function() {
	var o = {};
	var a = this.serializeArray();
	$.each(a, function() {
		if (o[this.name]) {
			if (!o[this.name].push) {
				o[this.name] = [o[this.name]];
			}
			o[this.name].push(this.value || '');
		} else {
			o[this.name] = this.value || '';
		}
	});
	return o;
};
/**
 * 时间秒数格式化
 * @param s 时间戳（单位：秒）
 * @returns {*} 格式化后的时分秒
 */
window.sec_to_time = function(s) {
	var t;
	if (s > -1) {
		var hour = Math.floor(s / 3600);
		var min = Math.floor(s / 60) % 60;
		var sec = s % 60;
		if (hour < 10) {
			t = '0' + hour + ":";
		} else {
			t = hour + ":";
		}

		if (min < 10) {
			t += "0";
		}
		t += min + ":";
		if (sec < 10) {
			t += "0";
		}
		//		t += sec.toFixed(2);
	}
	return t;
}
/**
 * 时间转为秒
 * @param time 时间(00:00:00)
 * @returns {string} 时间戳（单位：秒）
 */
window.time_to_sec = function(time) {
	var s = '';

	var hour = time.split(':')[0];
	var min = time.split(':')[1];
	var sec = time.split(':')[2];

	s = Number(hour * 3600) + Number(min * 60) + Number(sec);

	return s;
};
//正计时
window.line = function(start_time) {
	var time_start = new Date(); //设定当前时间
	var e_time = start_time;
	var time_end = new Date(e_time).getTime(); //设定目标时间
	//计算时间差
	var time_distance = time_start - time_end;
	// 天
	var int_day = Math.floor(time_distance / 86400000)
	time_distance -= int_day * 86400000;
	// 时
	var int_hour = Math.floor(time_distance / 3600000)
	time_distance -= int_hour * 3600000;
	// 分
	var int_minute = Math.floor(time_distance / 60000)
	time_distance -= int_minute * 60000;
	// 秒
	var int_second = Math.floor(time_distance / 1000)
	// 时分秒为单数时、前面加零
	if (int_day < 10) {
		int_day = "0" + int_day;
	}
	if (int_hour < 10) {
		int_hour = "0" + int_hour;
	}
	if (int_minute < 10) {
		int_minute = "0" + int_minute;
	}
	if (int_second < 10) {
		int_second = "0" + int_second;
	}
	// 显示时间
	lay('#test1').html(int_hour + ' 时' + int_minute + ' 分' + int_second + ' 秒');
	// 设置定时器(clearTimeId可以用来停止此方法)
	clearTimeId = setTimeout("line("+start_time+")", 1000);
}

