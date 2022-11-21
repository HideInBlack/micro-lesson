if (!ajax) {// 避免重复加载
	var ajax = function() {
		var me = ajax;
		var getXHR = function() {
			var r;
			if (window.XMLHttpRequest) { // for IE7+, Firefox, Chrome,Opera,
											// Safari
				r = new XMLHttpRequest();
			} else if (window.ActiveXObject) {// for IE6, IE5
				try {
					r = new ActiveXObject("Msxml2.XMLHTTP");
				} catch (e) {
					try {
						r = new ActiveXObject("Microsoft.XMLHTTP");
					} catch (e) {
					}
				}
			}
			return r;
		};
		// ajax异步get(地址,回调(返回文本,请求对象))
		me.get = function(url, cb) {
			var r = getXHR();
			r.onreadystatechange = function() {
				if (r.readyState == 4 && r.status == 200) {
					cb(r.responseText, r);
				}
			}
			r.open("GET", url, true);
			r.send();
		};
		// ajax异步post(地址,参数,回调(返回文本,请求对象))
		me.post = function(url, data, cb) {
			var r = getXHR();
			r.onreadystatechange = function() {
				if (r.readyState == 4 && r.status == 200) {
					cb(r.responseText, r);
				}
			}
			r.open("POST", url, true);
			r.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded");
			r.send(data);
		};
		// ajax同步get获取文本(地址)
		me.getSync = function(url) {
			var r = getXHR();
			r.open("GET", url, false);
			r.send();
			return r.responseText;
		};
		// ajax同步post获取文本(地址,参数)
		me.postSync = function(url, data) {
			var r = getXHR();
			r.open("POST", url, false);
			r.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded");
			r.send(data);
			return r.responseText;
		};
	};
	ajax();
};
