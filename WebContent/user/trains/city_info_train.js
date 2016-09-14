<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="http://img1.tuniucdn.com/s/2014041208/common/reset.css,common/layout.css,common/foot.css,404/404page.css,header/header.css,404/404-500.css"/>
<title>404 Not Found_您要访问的页面不存在_途牛旅游网</title>
<style>
.my-choice li { width: 113px; height: 181px; padding: 10px  39px; margin:0;float: left; display: inline; cursor: pointer; }
.i-like{width:340px;}
.com-nav{text-align:right;}
.com-nav a{float:none;}
</style>
</head>

<body>
	<div class="header header_1000">
		<div class="header_subject">
			<div class="header_inner">
				<div class="site_logo">
					<a href="http://www.tuniu.com" target="_blank">
						<img src="http://img.tuniucdn.com/img/201509281317/common/new_logo_110_32.png
" />
					</a>
				</div>
				<ul class="header_subject_menu">
					<li><a href="http://www.tuniu.com/">首页</a></li>
					<li><a href="http://www.tuniu.com/tours/">跟团游</a></li>
					<li><a href="http://www.tuniu.com/pkg/">自助游</a></li>
					<li><a href="http://www.tuniu.com/gongsi/">公司旅游</a></li>
					<li><a href="http://youlun.tuniu.com/">邮轮</a></li>
					<li><a href="http://menpiao.tuniu.com/">景点门票</a></li>
					<li><a href="http://www.tuniu.com/drive/">自驾游</a></li>
					<li><a href="http://www.tuniu.com/visa/">签证</a></li>
					<li><a href="http://hotel.tuniu.com">酒店</a></li>
					<li><a href="http://tuan.tuniu.com/">团购</a></li>
					<li><a href="http://www.tuniu.com/guide/">攻略</a></li>
				</ul>
			</div>
		</div>
	<div class="nofound-top clearfix">
		<div class="nofound-number">
			<div class="nofound-floor">
				<div class="electric"></div>
				<div class="floor-gif">
					<img src="http://img4.tuniucdn.com/img/20141030/404/floor.gif" width="27" height="115"/>
				</div>
			</div>
		</div>
	</div>
	<div class="nofound-bottom clearfix">
		<div class="nofound-msg">
			<p class="nofound-tel">欢迎拨打途牛客服热线：<span>4007-999-999</span></p>
			<p class="nofound-word">途牛客服将热情回应您的呼唤!</p>
			<div class="msg-search">
				<form action="" id="route_search" name="route_search" enctype="multipart/form-data" method="post" target="_self">
					<input type="text" value="" id="msgSearch" class="erroricon msg-input" name="msgsearch" />
					<input type="submit" value="" class="erroricon msg-btn" name="msgbtn" onclick="search_sub()" />
				</form>
			</div>
		</div>
	</div>
<div class="foot" id="foot">
	<div class="relation-us">
		<p>Copyright &copy; 2006-2014
			<a href="http://www.tuniu.com" rel="nofollow">途牛旅游网</a>
			<a href="http://www.tuniu.com" rel="nofollow">Tuniu.com</a> |
			<a rel="nofollow" href="http://www.tuniu.com/corp/company.shtml" target="_blank">营业执照</a> |
			<a rel="nofollow" href="http://www.miibeian.gov.cn/" target="_blank">ICP证：苏B2-20130006</a>&nbsp;&nbsp;
		</p>
	</div>
</div>
<script type="text/javascript" src="http://img4.tuniucdn.com/j/20131127/3rd/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	
	
	
	
$(function(){
	$(".my-choice li").each(function(i,n){
		$(n).hover(function(){
			$(".job-discribe").eq(i).addClass("hover");
		},
		function(){
		$(".job-discribe").eq(i).removeClass("hover");
		})
	});
	//灯泡闪动
        setTimeout(show, 500);

       //显示
        function show() {
           $('.electric').addClass('electric-open')
           setTimeout(hide, 500);
        }
     //隐藏
        function hide() {
            $('.electric').removeClass('electric-open')
            setTimeout(show, 500);
        }
		
		
	$("#msgSearch").click(function(e){
		var e = event || e;
			if(e.keyCode == 13){
				search_sub();
			}
	});
});

function search_sub() {
    var actionStr = "";
    var queryKey = document.getElementById("msgSearch").value;
    queryKey = lrTrim(queryKey);
    var test = /^\d+$/;
    if (!test.test(queryKey)) {
        var type = "whole";
        var classifyId = 0;
        if (queryKey) {
            actionStr = "http://s.tuniu.com/search_complex/" + type + "-sh" + "-0-" + queryKey + "/";
        } else {
            actionStr = "http://s.tuniu.com/search_complex/";
        }
    } else {
        actionStr = "http://www.tuniu.com/tours/" + queryKey;
    }
    var routeSearch = document.getElementById("route_search");
    routeSearch.action = actionStr;
    routeSearch.submit();
}
function getElementsByClassName(className, root, tagName) {
    if (root) {
        root = typeof root == "string" ? document.getElementById(root) : root;
    } else {
        root = document.body;
    }
    tagName = tagName || "*";
    if (document.getElementsByClassName) {
        return root.getElementsByClassName(className);
    } else {
        var tag = root.getElementsByTagName(tagName);
        var tagAll = [];
        for (var i = 0; i < tag.length; i++) {
            for (var j = 0, n = tag[i].className.split(' '); j < n.length; j++) {
                if (n[j] == className) {
                    tagAll.push(tag[i]);
                    break;
                }
            }
        }
        return tagAll;
    }
}
function lTrim(str) {
    if (str.charAt(0) == " ") {
        str = str.slice(1);
        str = lTrim(str);
    }
    return str;
}
function rTrim(str) {
    var iLength;
    iLength = str.length;
    if (str.charAt(iLength - 1) == " ") {
        str = str.slice(0, iLength - 1);
        str = rTrim(str);
    }
    return str;
}
function lrTrim(str) {
    return lTrim(rTrim(str));
}

</script>

<script type="text/javascript">
	var url = document.referrer;
	var url1 = document.URL; 
var t_url = "/404/url/" + encodeURIComponent(url) + "___" + encodeURIComponent(url1);
//document.getElementById('url_info').value = t_url;

var _gaq = _gaq || [];_gaq.push(["_setAllowHash", false]);_gaq.push(["_setAllowAnchor", true]);_gaq.push(["_addOrganic", "baidu", "wd"]);_gaq.push(["_addOrganic", "baidu", "word"]);_gaq.push(["_addOrganic", "google", "q"]);_gaq.push(["_addOrganic", "118114", "kw"]);_gaq.push(["_addOrganic", "bing", "q"]);_gaq.push(["_addOrganic", "soso", "w"]);_gaq.push(["_addOrganic", "youdao", "q"]);_gaq.push(["_addOrganic", "sogou", "query"]);_gaq.push(["_setDomainName", "tuniu.com"]);_gaq.push(["_setAccount", "UA-4782081-8"]);_gaq.push(["_trackPageview"]);_gaq.push(["_setAccount", "UA-4782081-5"]);
    //360搜索量统计
    _gaq.push(["_addOrganic", "www.so.com", "u"]);_gaq.push(["_addOrganic", "www.so.com", "q"]); _gaq.push(["_addOrganic", "360", "u"]);_gaq.push(["_addOrganic", "360", "q"]);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
_gaq.push(["_trackPageview", t_url]);
</script>
<script type="text/javascript">
	var u = (("https:" == document.location.protocol) ? "https://analy.tuniu.cn/analysisCollect/"
				: "http://analy.tuniu.cn/analysisCollect/");
	document
			.write(unescape("%3Cscript src='"
					+ u
					+ "tac.mini.js' type='text/javascript'%3E%3C/script%3E"));
</script>
		<script type="text/javascript">
		var tuniuTracker = _tat.getTracker();
		tuniuTracker.setPageNotFoundUrl('/404/url/'+document.URL+'___'+document.referrer);
		tuniuTracker.trackPageView();
</script>
</body>

</html>