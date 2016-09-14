<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0036)https://i.tuniu.com/userinfoconfirm/ -->
<html><head lang="en"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="./update/site_nav.css">
<link rel="stylesheet" type="text/css" href="./update/mail.css">
<title>途牛旅游网会员中心_会员中心_途牛旅游网</title>
        <meta name="keywords" content="会员中心">
        <meta name="description" content="途牛旅游网：中国最大的旅游行业在线电子商务网站，为您提供最为周到的旅游服务。途牛旅游网">
        <link rel="stylesheet" type="text/css" href="./update/layer.css">
    <script type="text/javascript" src="./update/ga.js" async="" charset="utf-8"></script><script type="text/javascript" src="./update/lazyloadnew.min.js" async="" charset="utf-8"></script><link type="text/css" rel="stylesheet" href="./update/layer(1).css" id="skinlayercss"></head>
    <body id="index1200" class="index1200">
        <link rel="stylesheet" type="text/css" href="./update/reset.css"><!--本页面css--><link rel="stylesheet" type="text/css" href="./update/header.css"><script type="text/javascript" src="./update/in-min.js"></script><script type="text/javascript" src="./update/header_v2.js"></script><link type="text/css" rel="stylesheet" href="./update/header_v2.css"><link href="./update/head_nav_new.css" rel="stylesheet" type="text/css"><!-- 头部start --><div class="header index_1200 header_1200"><link rel="stylesheet" type="text/css" href="./update/user-center-adv.css">
<div>
    	<c:if test="${user==null}">
    		<a style="margin-left: 30px" href="login.html">登录</a>
    		|<a style="margin-left: 30px" href="register.html">注册</a>
    	</c:if>
    	<c:if test="${user!=null}">
    		<c:if test="${user.name!=null}">
    			<span style="margin-left: 30px">欢迎您：${user.name}</span>
    		</c:if>
    		<c:if test="${user.name==null}">
    			<span style="margin-left: 30px">欢迎您：${user.email}</span>
    		</c:if>
    	</c:if>
    </div>
<div class="wrapper cur">
    <div class="container clearfix cur">
        <!--左侧菜单开始-->
        <div class="aside cur">
            <div id="asideInner" class="aside_inner cur">
                <div class="mc cur">
                     <dl id="user_nav_4"><dt><i class="user_icon icon_account"></i>账户设置<b></b></dt><dd><div class="item cur">    <a href="https://i.tuniu.com/userinfoconfirm">个人资料</a>
    </div><div class="item">    <a href="https://i.tuniu.com/change-password/">修改密码</a>
    </div></dd></dl><dl style="display:none" id="user_nav_5"><dt><i class="user_icon icon_community"></i>社区互动<b></b></dt><dd><div class="item">    <a href="http://www.tuniu.com/person/" target="_blank">我的主页</a>
    </div><div class="item">    <a href="http://www.tuniu.com/trips/write/" target="_blank">发表游记</a>
    <span class="item_tip tip_new"></span></div><div class="item">    <a href="http://www.tuniu.com/person/trips/" target="_blank">我的游记</a>
    </div></dd></dl>                     </div>
            </div>
        </div>
        <!--左侧菜单结束-->
                <style>
            .user_message .user .u-icon{ margin-left:0;}
            /* 证件修改发送验证码相关css */
            .sendToPhone,.send_link {
                display: inline-block;
                text-align: center;
                height: 24px;
                line-height: 24px;
                border: 1px
                solid #ddd;
                width: 102px;
                background: #f9f9f9
            }
            .verify_block .txt-m {
                border: 1px
                solid #ddd;
                color: #666;
                height: 24px;
                line-height: 24px;
                padding: 0px
                5px;
                width: 212px
            }
            .verify_block .m-verify-code {
                width: 103px;
                margin-right: 3px
            }
            .verify_block .txt_grey {
                color: #999
            }
            #cancelBtn{
                margin-left:40px;
                background:#ffffff;
                color:#999999;
                border:1px solid #e2e2e2
            }
            .green{
                color:#2e9900;
            }
            .err_tips {
                background: url('//ssl2.tuniucdn.com/img/2015040113/user_center_v2/err.png') no-repeat 0 9px;
                padding-left: 20px;
                display: inline-block;
            }
        </style>
        <script src="./update/city.js" type="text/javascript"></script>
        <!--主体内容开始-->
        <div class="mainDiv">
            <div class="change_title">
                <ul id="tabChangeNav" class="clearfix">
                    <li class="cur">
                        <span class="green">基本信息</span>
                    </li>
                </ul>
            </div>
            <div id="tabChangeBox" class="common_div">
                        <form name="add_place_form" id="user_info_edit_form">
                <div class="common-w1 user_message">
                    <div class="user" id="avatar_area">
                        <div class="u-icon picture">
                            <div style="display: none;" class="hide" id="modifyheader">
                                <div class="upper fore" id="modUserImgbox"></div>
                                <a class="fore" href="https://i.tuniu.com/changepicture" target="_blank">修改头像</a>
                            </div>
                            <img alt="用户头像" src="./update/g_touxiang.png" id="userImg">
                        </div>
                    </div>
                    <table class="form-table3" cellspacing="0" cellpadding="0" border="0">
                        <tbody><tr>
                            <td colspan="2" class="tit">联系方式</td>
                        </tr>
                        <tr>
                            <td width="72">
                                <label>
                                    <span class="red">*</span>
                                    手机号：
                                </label>
                            </td>
                            <td width="500">
                              <c:if test="${user.tel!==null}">
                              	
                              </c:if>
                                                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    <span class="red">*</span>
                                    邮箱：
                                </label>
                            </td>
                            <td>
                               您还没有填写邮箱&nbsp;&nbsp;
                                                               <a href="https://i.tuniu.com/safe" id="modemail2" class="cgreen">补充邮箱</a>
                                                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="tit pt10">个人信息</td>
                        </tr>
                        <tr>
                            <td>
                                <label>昵称：</label>
                            </td>
                            <td>
                                <p id="nick_show" class="show_item hidden">
                                    8089866359&nbsp;&nbsp;
                                    <a href="JavaScript:void(0);" class="change_detail cgreen">修改</a>
                                    <span class="grey">个性昵称</span>
                                    &nbsp;&nbsp;
                                    <span class="grey"></span>
                                </p>
                                <p id="mod_nickname" class="write_item">
                                    <input type="text" name="nickname" id="nickname" class="txt-sss" value="8089866359" onblur="check_nickname();" onfocus="hide_note(&#39;nick-tip&#39;);">
                                    &nbsp;&nbsp;
                                    <span id="nick-tip" class="grey"></span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>会员名：</label>
                            </td>
                            <td>
                                <p id="user_show" class="show_item hidden">
                                    8089866359&nbsp;&nbsp;
                                    <a href="JavaScript:void(0);" class="change_detail cgreen">修改</a>
                                    <span class="grey">会员名，会员名可作为登录名哦</span>
                                    &nbsp;&nbsp;
                                    <span class="grey"></span>
                                </p>
                                <p id="mod_username" class="write_item">
                                    <input type="text" name="username" id="username" class="txt-sss" onblur="check_username();" onfocus="hide_note(&#39;user-tip&#39;);" value="8089866359">
                                    &nbsp;&nbsp;
                                    <span id="user-tip" class="grey"></span>
                                </p>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label>
                                    <span class="red">*</span>
                                    真实姓名：
                                </label>
                            </td>
                            <td>
                                <p id="real_show" class="show_item hidden">
                                  &nbsp;&nbsp;
                                    <a href="JavaScript:void(0);" class="change_detail cgreen">马上填写</a>
                                    <span class="grey">自己的真实姓名</span>
                                    &nbsp;&nbsp;
                                    <label class="grey"></label>
                                </p>
                                <p id="mod_realname" class="write_item">
                                    <input type="text" name="realname" id="realname" class="txt-sss" placeholder="请输入真实姓名" value="" onfocus="hide_note(&#39;real-tip&#39;);" onblur="check_realname();">
                                    &nbsp;&nbsp;
                                    <span id="real-tip" class="grey"></span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    <span class="red">*</span>
                                    证件号码：
                                </label>
                            </td>
                            <td>
                                <p id="card_show" class="show_item hidden">
                                    ****&nbsp;&nbsp;
                                    <a href="JavaScript:void(0);" class="change_detail cgreen">马上填写</a>
                                    <span class="grey">证件号码，下单更加快捷方便</span>
                                    &nbsp;&nbsp;
                                    <label class="grey"></label>
                                </p>
                                <p id="mod_card" class="write_item">
                                    <select id="paper_type" name="pspt_type" onchange="check_idefycode();">
                                        <option value="1">身份证</option>
                                        <option value="2">护照</option>
                                        <option value="3">军官证</option>
                                        <option value="4">港澳通行证</option>
                                        <option value="7">台胞证</option>
                                        <option value="6">其他</option>
                                    </select>
                                    <input type="text" class="txt-m" id="paper_num" name="id_card" value="" onpropertychange="check_idefycode();" oninput="check_idefycode();" placeholder="请输入证件号码">
                                    &nbsp;&nbsp;
                                    <span id="id_tip" class="grey"></span>
                                </p>
                            </td>
                        </tr>
                        <tr class="verify_block" style="display:none;">
                            <td>
                                <label>
                                    <!--<span class="red">*</span>-->
                                </label>
                            </td>
                            <td>
                                <input type="text" value="" placeholder="请输入6位验证码" name="code" id="code" class="txt-m m-verify-code txt_grey" disabled="disabled" maxlength="6">
                                <a class="sendToPhone" href="javascript:void(0)" id="btnSendSmsCode">获取手机验证码</a>
                            </td>
                        </tr>
                        <tr id="sms_send_tip" style="display:none;">
                            <td></td>
                            <td>
                                验证码已发出，请注意查收短信，如果没有收到，您可在<span class="green" id="send_tip_time">1</span>秒后要求系统重新发送
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    <span class="red">*</span>
                                    性别：
                                </label>
                            </td>
                            <td>
                                <p id="sex_show" class="show_item hidden">
                                    女&nbsp;&nbsp;
                                    <a href="JavaScript:void(0);" class="change_detail cgreen">修改</a>
                                    <span class="grey">自己的性别</span>
                                    &nbsp;&nbsp;
                                    <label class="grey"></label>
                                </p>
                                <p id="mod_sex" class="write_item">
                                    <input type="radio" class="sex" name="sex" value="1"> 男
                                    <input type="radio" name="sex" value="0" class="sex ml20" checked="checked"> 女
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>出生日期：</label>
                            </td>
                            <td>
                                <p id="birth_show" class="show_item hidden">
                                  &nbsp;&nbsp;
                                    <a href="JavaScript:void(0);" class="change_detail cgreen">马上填写</a>
                                    <span class="grey">自己的生日，有机会获得更多惊喜哦</span>
                                    &nbsp;&nbsp;
                                    <label class="grey"></label>
                                </p>
                                <p class="write_item">
                                                                      <select class="txt-b" id="sel_year"><option value="0">--</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option></select> 年
                                   <select class="txt-s" id="sel_month"><option value="0">--</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select> 月
                                   <select class="txt-s" id="sel_day"><option value="0">--</option></select> 日
                                                                       <span id="birthday_tip" class="grey"></span>
                                </p>
                               
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    <span class="red">*</span>
                                    地址：
                                </label>
                            </td>
                            <td>
                                <p id="address_show" class="show_item hidden">
                                    &nbsp;&nbsp;
                                    <a href="JavaScript:void(0);" class="change_detail cgreen">马上填写</a>
                                    <span class="grey">自己的地址，有机会获得更多惊喜哦</span>
                                </p>
                                <p id="mod_address" class="write_item">
                                    <select id="province" class="txt-b" name="province" onchange="setcity();">
                                        <option selected="selected" value="">--省份--</option>
                                        <option value="安徽_100">安徽</option>
                                        <option value="北京_200">北京</option>
                                        <option value="重庆_300">重庆</option>
                                        <option value="福建_400">福建</option>
                                        <option value="甘肃_500">甘肃</option>
                                        <option value="广东_600">广东</option>
                                        <option value="广西_700">广西</option>
                                        <option value="贵州_800">贵州</option>
                                        <option value="海南_900">海南</option>
                                        <option value="河北_1000">河北</option>
                                        <option value="黑龙江_1100">黑龙江</option>
                                        <option value="河南_1200">河南</option>
                                        <option value="香港_1300">香港</option>
                                        <option value="湖北_1400">湖北</option>
                                        <option value="湖南_1500">湖南</option>
                                        <option value="江苏_1600">江苏</option>
                                        <option value="江西_1700">江西</option>
                                        <option value="吉林_1800">吉林</option>
                                        <option value="辽宁_1900">辽宁</option>
                                        <option value="澳门_2000">澳门</option>
                                        <option value="内蒙古_2100">内蒙古</option>
                                        <option value="宁夏_2200">宁夏</option>
                                        <option value="青海_2300">青海</option>
                                        <option value="山东_2400">山东</option>
                                        <option value="上海_2500">上海</option>
                                        <option value="山西_2600">山西</option>
                                        <option value="陕西_2700">陕西</option>
                                        <option value="四川_2800">四川</option>
                                        <option value="台湾_2900">台湾</option>
                                        <option value="天津_3000">天津</option>
                                        <option value="新疆_3100">新疆</option>
                                        <option value="西藏_3200">西藏</option>
                                        <option value="云南_3300">云南</option>
                                        <option value="浙江_3400">浙江</option>
                                        <option value="欧洲_3600">欧洲</option>
                                        <option value="北美洲_3700">北美洲</option>
                                        <option value="南美洲_3800">南美洲</option>
                                        <option value="亚洲_3900">亚洲</option>
                                        <option value="非洲_4000">非洲</option>
                                        <option value="大洋洲_4100">大洋洲</option>
                                    </select>
                                    <select name="city" class="txt-b" id="city">
                                        
                                    <option value=""></option></select>
                                    <script type="text/javascript">
                                       initprovcity('','');
                                    </script>
                                    <input type="text" name="address" id="address" class="txt-m" value="" placeholder="请输入详细地址" onfocus="hide_note(&#39;province_tip&#39;);">
                                    <span id="province_tip" class="grey"></span>
                                </p>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <label>邮编：</label>
                            </td>
                            <td>
                                <p id="postcode_show" class="show_item hidden">
                                                                        <a href="JavaScript:void(0);" class="change_detail cgreen">马上填写</a>
                                    <span class="grey"></span>
                                    &nbsp;&nbsp;
                                    <span class="grey"></span>
                                </p>
                                <p id="mod_postcode" class="write_item">
                                    <input type="text" name="postcode" id="postcode" class="txt-sss" onblur="check_postcode();" value="">
                                    &nbsp;&nbsp;
                                    <span id="postcode-tip" class="grey"></span>
                                </p>
                            </td>
                        </tr>
                        
                        
                        
                        <tr>
                            <td colspan="2" class="tit pt10">团队信息</td>
                        </tr>
                        <tr>
                            <td>
                                <label>所属团队：</label>
                            </td>
                            <td>
                                <p id="group_show" class="show_item hidden">
                                                                    <a href="JavaScript:void(0);" class="change_detail cgreen">马上填写</a>
                                    <span class="grey">关联团队识别码，快速关联团队亲友</span>
                                    &nbsp;&nbsp;
                                    <label class="grey"></label>
                                </p>
                                <p class="write_item">
                                    <input type="hidden" id="add_flag" name="add_flag" value="1">
                                    <input type="text" id="group_id" name="group_id" onblur="check_group()" maxlength="9" value="" placeholder="请输入关联团队识别码" style="width:120px" class="txt-m sp_cancel">

                                    &nbsp;&nbsp;
                                    <span id="group_tip" class="grey"></span>
                                    <span id="group_ok" class="cgreen">尚未关联团队，您可以输入需要关联团队的识别码进行关联</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>座机：</label>
                            </td>
                            <td>
                                <p id="phone_show" class="show_item hidden">
                                                                    <a href="JavaScript:void(0);" class="change_detail cgreen">马上填写</a>
                                    <span class="grey">座机号码</span>
                                    &nbsp;&nbsp;
                                    <label class="grey"></label>
                                </p>
                                <p class="write_item">
                                    <input name="area_code" class="txt-s" type="text" id="area_code" value="">
                                    -
                                    <input id="phone" value="" size="10" name="phone" onblur="check_phone()" type="text" class="txt-sss" placeholder="请输入座机号码">
                                    <span id="phoneTip"></span>
                                </p>

                            </td>
                        </tr>
                        <input type="hidden" name="csrf_token" id="csrf_token" value="1686a6a4b30ab4426c1e323c8cbe2e40">
                        <tr>
                            <td>&nbsp;</td>
                            <td height="36">
                                <input id="editBtn" type="button" class="yellow_btn" value="编 辑" style="display: none;">
                                <input id="saveBtn" type="button" class="yellow_btn" onclick="info_submit();" value="保存" style="display: inline-block;">
                                <input id="cancelBtn" type="button" class="yellow_btn" onclick="info_cancel();" value="取消" style="display: inline-block;">
                                <span id="resultTip"></span>
                            </td>
                        </tr>
                    </tbody></table>
                </div>
         </form>
        </div>

    
    
        
        
        <!-- 长条的广告 -->
        <div class="d_usercenter_appadv">
            <a class="a_appadv" href="javascript:void(0);" style="cursor:default;">
                <img src="./update/Cii9EFZXuXGIPB7HAAC3tIQXb9UAAArNAHKCMoAALfM950.jpg">
            </a>
        </div>
        
    
        
        <!-- 二维码广告 -->
        <div class="d_usercenter_appadv_2D">
            <a class="a_appadv" href="javascript:void(0);" style="cursor:default;">
                <img src="./update/Cii9EFZXvI6IDyy3AABxV18MBxoAAArOgIzGi8AAHFv623.png">
            </a>
        </div>
        
        
    
    </div>
    <!--主体内容结束-->
        <script>
            (function(window, $) {
                //判断身份卡是否变更
                /*
                var orign_pspt_type = ;
                var orign_hid_id_card = "";

                $("#paper_num").on("keyup",handleCardChgEvent);
                $("#paper_type").on("change",handleCardChgEvent);

                function handleCardChgEvent(){
                    if( orign_hid_id_card != $("#paper_num").val() || orign_pspt_type != $("#paper_type").val()){
                        $(".verify_block").show();
                    }else{
                        $(".verify_block").hide();
                    }
                }
                 */
                //手机验证码
                $("#btnSendSmsCode").on("click", function(){
                    var send_code_url = '/userCheckPhoneAjax/sendCode';
                    $.get(send_code_url, {sendType: 4}, function(data) {
                        if (data.success) {
                            if (data.data == 3) {
                                $("#codeTip").addClass("err").show();
                                $("#codeTip span").html("验证码已达到最大发送次数");
                            } else {
                                //去掉错误提示
                                $("#codeTip").removeClass("err").hide();
                                $("#codeTip span").html("");
                                $("#sms_send_tip").show();
                                //展示倒计时
                                $("#code").removeAttr("disabled");
                                beginTime('send_tip_time');
                            }
                        } else {
                            $("#codeTip").addClass("err").show();
                            $("#codeTip span").html("时间未到");
                        }
                    }, "json");
                });
                //发送短信验证码-提示倒计时60秒
                function beginTime(name) {
                    var times = 60;
                    var CountDown = function CountDown() {
                        if (times < 1) {
                            $('#sms_send_tip').hide();
                            clearInterval(isinerval);
                            return;
                        }
                        $("#" + name).html(times);
                        times--;
                    };
                    var isinerval = window.setInterval(CountDown, 1000);
                }
            })(window, jQuery, undefined);
        </script>



    </div>
</div>

<!-- BEGIN 活动广告 -->
<script type="text/javascript" src="./update/art-template.js"></script>
<script type="text/javascript" src="./update/usercenter_adv.js"></script>

<script type="text/html" id="appadv">
    {{if GTInfo && GTInfo.length>0}}
    {{each GTInfo as adv index}}
        {{if adv.activity_id == 47 && adv.bkg && adv.bkg.bkg_url}}
        <!-- 二维码广告 -->
        <div class="d_usercenter_appadv_2D">
            <a class="a_appadv" href="javascript:void(0);" style="cursor:default;">
                <img src="{{adv.bkg.bkg_url}}">
            </a>
        </div>
        {{/if}}
        {{if adv.activity_id == 46 && adv.bkg && adv.bkg.bkg_url}}
        <!-- 长条的广告 -->
        <div class="d_usercenter_appadv">
            <a class="a_appadv" href="javascript:void(0);" style="cursor:default;">
                <img src="{{adv.bkg.bkg_url}}">
            </a>
        </div>
        {{/if}}
    {{/each}}
    {{/if}}
</script>
<!-- END 活动广告 -->

        <!--start foot-->
        <!-- siteMap S -->
<link rel="stylesheet" type="text/css" href="./update/common_foot_v3.css"> <div class="trav_sev">
        <ul class="ts_box clearfix">
            <li class="trav_l_first">
                <i class="ts_1"></i>
                <dl class="trav_l ">
                    <dt class="tl_tt"><a>去旅游</a></dt>
                    <dd class="tl_w">
                        <p>
                            <a href="http://www.tuniu.com/tours/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-1&#39;]);">跟团游</a>
                            <a href="http://www.tuniu.com/pkg/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-2&#39;]);">自助游</a>
                            <a href="http://www.tuniu.com/drive/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-3&#39;]);">自驾游</a>
                            
                        </p>
                        <p>
                            <a href="http://www.tuniu.com/theme/haidao/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-4&#39;]);">海岛游</a>
                            <a href="http://www.tuniu.com/flight/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-5&#39;]);">机票</a>
                            <a href="http://youlun.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-6&#39;]);">邮轮</a>
                        </p>
                        <p>
                            <a href="http://menpiao.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-7&#39;]);">门票</a>
                            <a href="http://www.tuniu.com/theme/qinzi/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-8&#39;]);">亲子游</a>
                            <a href="http://www.tuniu.com/visa/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-9&#39;]);">签证</a>
                        </p>
                        <p>
                            <a href="http://super.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-10&#39;]);">机票+酒店</a>
                            <a href="http://www.tuniu.com/theme/miyue/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-11&#39;]);">蜜月游</a>
                            <a href="http://hotel.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-12&#39;]);">酒店</a>
                        </p>
                        <p>
                            <a href="http://temai.tuniu.com/laoyutuijian" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-13&#39;]);">老于推荐</a>
                            <a href="http://www.tuniu.com/gongsi/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-14&#39;]);">公司旅游</a>
                            <a href="http://www.tuniu.com/niuren/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-15&#39;]);">牛人专线</a>
                        </p>
                        <p>
                            <a href="http://www.tuniu.com/zt/sfcf/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-16&#39;]);">首付出发</a>
                            <a href="http://www.tuniu.com/local/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-17&#39;]);">当地玩乐</a>
                            <a href="http://www.tuniu.com/zt/love/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_1&#39;,&#39;1-18&#39;]);">旅拍</a>
                        </p>
                    </dd>
                </dl>
            </li>
            <li>
                <i class="ts_2"></i>
                <dl class="trav_l ">
                    <dt class="tl_tt"><a>寻优惠</a></dt>
                    <dd class="tl_w">
                        <p><a href="http://temai.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_2&#39;,&#39;2-1&#39;]);">特卖</a></p>
                        <p><a href="http://hotel.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_2&#39;,&#39;2-2&#39;]);">订酒店 返现金</a></p>
                        <p><a href="http://1.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_2&#39;,&#39;2-4&#39;]);">一元夺宝</a></p>
                        <p><a href="http://www.tuniu.com/bank/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_2&#39;,&#39;2-5&#39;]);">银行特惠游</a></p>
                        <p><a href="http://www.tuniu.com/gt/guangfacxqq" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_2&#39;,&#39;2-6&#39;]);">银行分期游</a></p>
                    </dd>
                </dl>
            </li>
            <li>
                <i class="ts_3"></i>
                <dl class="trav_l ">
                    <dt class="tl_tt"><a>看攻略</a></dt>
                    <dd class="tl_w">
                        <p><a href="http://go.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_3&#39;,&#39;3-1&#39;]);">攻略</a></p>
                        <p><a href="http://top.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_3&#39;,&#39;3-2&#39;]);">途牛风向标</a></p>
                        <p><a href="http://trips.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_3&#39;,&#39;3-3&#39;]);">游记</a></p>
                        <p><a href="http://www.tuniu.com/way/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_3&#39;,&#39;3-4&#39;]);">达人玩法</a></p>
                    </dd>
                </dl>
            </li>
            <li>
                <i class="ts_4"></i>
                <dl class="trav_l ">
                    <dt class="tl_tt"><a>查服务</a></dt>
                    <dd class="tl_w tl_cont">
                        <p>
                            <a href="http://www.tuniu.com/help/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_4&#39;,&#39;4-1&#39;]);">帮助中心</a>
                            
                        </p>
                        <p>
                            <a href="http://www.tuniu.com/u/club" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_4&#39;,&#39;4-3&#39;]);">积分俱乐部</a>
                            
                        </p>
                        <p>
                            <a href="http://www.tuniu.com/static/sunshine_ensure/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_4&#39;,&#39;4-5&#39;]);">阳光保障</a>
                        </p>
                        <p><a href="http://train.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_4&#39;,&#39;4-2&#39;]);">火车时刻表</a></p>
                        <p><a href="http://metro.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;tydb_wzdt_4&#39;,&#39;4-6&#39;]);">地铁路线图</a></p>
                    </dd>
                </dl>
            </li>
            <li class="trav_l_last">
                <i class="ts_5"></i>
                <dl class="trav_l ">
                    <dt class="tl_tt"><a>途牛APP</a></dt>
                    <dd class="tl_w tl_cont">
                        <p>
                            <a>扫描下载途牛APP</a>
                        </p>
                        <p>
                            <img src="./update/Cii9EFZw-n2IdcknAAAWy1znY7MAABCTQG1hlYAABbj820.jpg">
                        </p>
                    </dd>
                </dl>
        </li></ul>
    </div><!-- siteMap E -->
<!-- three sun S -->
<div class="three_trav">
    <div class="thr_trav">
        <a href="http://www.tuniu.com/static/sunshine_ensure/" target="_blank" style="display:block;width:100%;height:100%;">
            <em class="tn_text" id="service_phone_head_text">客户服务电话（免长途费）</em>
            <em class="tn_phone" id="service_phone_head_phone">4007-999-999</em>
        </a>
    </div>
</div>
<!-- three sun E -->
<!-- four_ad S -->
<!-- four_ad S -->
    <div class="fourImgs">
        <ul class="clearfix">
                        <li>
                <a href="http://1.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;点击&#39;,&#39;底部广告图_1_一元夺宝&#39;]);">
                    <img src="./update/tn_footer_01.jpg" alt="一元夺宝" width="238" height="58">
                </a>
            </li>
                        <li>
                <a href="http://www.tuniu.com/zt/brand/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;点击&#39;,&#39;底部广告图_2_品牌合作&#39;]);">
                    <img src="./update/tn_footer_042.jpg" alt="品牌合作" width="238" height="58">
                </a>
            </li>
                        <li>
                <a href="http://temai.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;点击&#39;,&#39;底部广告图_3_超值特卖-底部&#39;]);">
                    <img src="./update/tn_footer_06.jpg" alt="超值特卖-底部" width="238" height="58">
                </a>
            </li>
                        <li>
                <a href="http://super.tuniu.com/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;点击&#39;,&#39;底部广告图_4_超级自由行&#39;]);">
                    <img src="./update/Cii9EFaWDQ2IFdVUAAAaUoTPAnAAABcxwP_x9YAABpq60.jpeg" alt="超级自由行" width="238" height="58">
                </a>
            </li>
                    </ul>
    </div>
    <!-- four_ad E -->
    <!-- img_place S -->
    <div class="img_place">
        <a href="http://www.tuniu.com/niuren/" rel="nofollow" target="_blank" style="display: block;" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;common_gz&#39;,&#39;点击&#39;,&#39;底部广告图_5_牛人专线&#39;]);">
            <img src="./update/tn_footer_05l_007.jpg" alt="牛人专线" width="988" height="58">
        </a>
    </div>
    <!-- img_place E -->
<!-- four_ad E -->

<!--start foot-->
<div id="TN-footer" class="tn_footer datalazyload" data-lazyload-type="data" data-lazyload-from="textarea">
        <p id="TN-24">途牛客服中心位于南京市 来电显示为 025-86859999 或 025-85080000</p>
    <p>北京途牛国际旅行社有限公司，旅行社业务经营许可证编号：L-BJ-CJ00144　　上海途牛国际旅行社有限公司，旅行社业务经营许可证编号：L-SH-CJ00107
    </p>
    <p id="TN-links">
        <a href="http://www.tuniu.com/corp/aboutus.shtml" target="_blank" rel="nofollow">关于我们</a>
        <a $nofollow="" href="http://ir.tuniu.com/" target="_blank">Investor Relations</a>
        <a href="http://www.tuniu.com/corp/contactus.shtml" target="_blank" rel="nofollow">联系我们</a>
        <a href="http://www.tuniu.com/corp/advise.shtml" target="_blank" rel="nofollow">投诉建议</a>
        <a rel="nofollow" href="http://www.tuniu.com/corp/advertising.shtml" target="_blank">广告服务</a>
        <a rel="nofollow" href="http://www.tuniu.com/giftcard/" target="_blank">旅游券</a>
        <a rel="nofollow" href="http://tuniu.zhiye.com/" target="_blank" style="color: red;">途牛招聘</a>
        <a href="http://www.tuniu.com/corp/privacy.shtml" target="_blank" rel="nofollow">隐私保护</a>
        <a href="http://www.tuniu.com/corp/duty.shtml" target="_blank" rel="nofollow">免责声明</a>
        <a rel="nofollow" href="http://www.tuniu.com/corp/zizhi.shtml" target="_blank">旅游度假资质</a>
        <a rel="nofollow" href="http://www.tuniu.com/theme/index/" target="_blank">主题旅游</a>
        <a href="http://www.tuniu.com/corp/agreement.shtml" target="_blank" rel="nofollow">用户协议</a>
        <a href="http://www.tuniu.com/corp/sitemap.shtml" target="_blank">网站地图</a>
        <a rel="nofollow" target="_blank" href="http://www.tuniu.com/ueip/index.html">UEIP</a>
        <a rel="nofollow" href="http://www.tuniu.com/help/" target="_blank">帮助中心</a>
    </p>

    <!-- #TN-links -->
    <p id="copyright">Copyright © 2006-2016        <a rel="nofollow" href="http://www.tuniu.com/">南京途牛科技有限公司</a>
        <a rel="nofollow" href="http://www.tuniu.com/">Tuniu.com</a> |
        <a target="_blank" href="http://www.tuniu.com/corp/company.shtml" rel="nofollow">营业执照</a> |
        <a target="_blank" href="http://www.miibeian.gov.cn/" rel="nofollow">ICP证：苏B2-20130006</a> |
        <a target="_blank" href="http://www.miibeian.gov.cn/" rel="nofollow">苏ICP备12009060号</a> |
        <a target="_blank" href="http://gz.tuniu.com/">上海旅游网</a>
    </p>

    <!-- thr_ads S -->
<div class="thr_img">
    <ul class="clearfix">
        <li>
            <a href="http://www.tuniu.com/tours/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;首页_gz&#39;,&#39;点击&#39;,&#39;底部广告图_6_跟团&#39;]);">
                <img src="./update/footer_1.jpg" alt="跟团" width="175" height="38">
            </a>
        </li>
        <li>
            <a href="http://www.tuniu.com/pkg/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;首页_gz&#39;,&#39;点击&#39;,&#39;底部广告图_7_自助&#39;]);">
                <img src="./update/footer_2.jpg" alt="自助" width="175" height="38">
            </a>
        </li>
        <li>

            <a href="http://www.tuniu.com/merchants/" target="_blank" onclick="_gaq.push([&#39;_trackEvent&#39;,&#39;首页_gz&#39;,&#39;点击&#39;,&#39;底部广告图_8_供应商合作&#39;]);">
                <img src="./update/bottom.jpg" alt="供应商合作" width="175" height="38">
            </a>
        </li>
    </ul>
</div>
<!-- thr_ads E -->

    <div class="slide_order clearfix" id="slideOrder">
        <span class="fl">最新预订：</span>
        <div class="fl w_940">
            <ul style="width: 4482px; left: 0px;">
                            <li><!--[7天前]-->用户***337预订[五一]&lt;迪拜3晚6天自助游&gt;机酒全含，Damac精品酒店套房，EK直飞&nbsp;&nbsp;&nbsp;&nbsp;</li>
                            <li><!--[8天前]-->用户***228预订&lt;美西拉斯维加斯-洛杉矶6日游&gt;洛杉矶接机，含主题门票（当地游）&nbsp;&nbsp;&nbsp;&nbsp;</li>
                            <li><!--[17天前]-->用户***细预订&lt;红海8日自助游&gt;即时确认，直飞红海，接送机，落地签，五星酒店&nbsp;&nbsp;&nbsp;&nbsp;</li>
                            <li><!--[18天前]-->用户***196预订&lt;西班牙葡萄牙3-7日循环游&gt;多地集散 可订接送机 西班牙皇宫 黄金塔 红宫 杜丽多古城 圣家大教堂 大石角 太阳海岸 贝伦古塔（当地游）&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li><!--[7天前]-->用户***337预订[五一]&lt;迪拜3晚6天自助游&gt;机酒全含，Damac精品酒店套房，EK直飞&nbsp;&nbsp;&nbsp;&nbsp;</li><li><!--[8天前]-->用户***228预订&lt;美西拉斯维加斯-洛杉矶6日游&gt;洛杉矶接机，含主题门票（当地游）&nbsp;&nbsp;&nbsp;&nbsp;</li><li><!--[17天前]-->用户***细预订&lt;红海8日自助游&gt;即时确认，直飞红海，接送机，落地签，五星酒店&nbsp;&nbsp;&nbsp;&nbsp;</li><li><!--[18天前]-->用户***196预订&lt;西班牙葡萄牙3-7日循环游&gt;多地集散 可订接送机 西班牙皇宫 黄金塔 红宫 杜丽多古城 圣家大教堂 大石角 太阳海岸 贝伦古塔（当地游）&nbsp;&nbsp;&nbsp;&nbsp;</li></ul>
        </div>
    </div>
    <div class="trav_corp">
        <a id="___szfw_logo___" href="https://credit.szfw.org/CX20160128013521800380.html" rel="nofollow" target="_blank">
            <img src="./update/chengxinOne.png" border="0" style="height:41px;" alt="中国互联网诚信示范企业">
        </a>
        <a href="http://net.china.cn/" rel="nofollow" target="_blank" onclick="tuniuRecorder.push(&#39;32_1_1_1_1_1&#39;)">
            <img src="./update/buliang.png" alt="违法和不良信息举报中心" width="109" height="47">
        </a>
        <a href="http://js.cyberpolice.cn/webpage/index.jsp" rel="nofollow" target="_blank" onclick="tuniuRecorder.push(&#39;32_1_1_1_1_2&#39;)">
            <img src="./update/wangluo.png" alt="网络110报警服务" width="110" height="47">
        </a>
        <img src="./update/cata.png" alt="cata航空资质认证" width="110" height="47">
        <a target="_blank" rel="nofollow" href="http://www.isc.org.cn/" onclick="tuniuRecorder.push(&#39;32_1_1_1_1_3&#39;)">
            <img src="./update/huiyuan.png" alt="中国互联网协会" width="110" height="47">
        </a>
        <a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1797102919" rel="nofollow" target="_blank" onclick="tuniuRecorder.push(&#39;32_1_1_1_1_4&#39;)">
            <img src="./update/3acomp.png" alt="中国互联网协会信用评价中心" width="110" height="47">
        </a>

        <a title="可信网站" target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e14120832010056662smwq000000&ct=df&a=1&pa=0.06350954016670585" rel="nofollow" onclick="tuniuRecorder.push(&#39;32_1_1_1_1_5&#39;)">
            <img src="./update/chengxin.png" alt="诚信网站" width="110" height="47">
        </a>
        <a href="http://www.jsgsj.gov.cn:60101/keyLicense/verifKey.jsp?serial=320000163820121119100000009204&signData=LvIMjwILeOCOnIt65a1kGAk+FxZKCnAoexteChdi5LEEvVGY5TUoYBJ15zmxNW1dwAE4U4mMREXkWocqMPODoh+IfB2ojCxtCvMF4gVdgsMXKTbkhemenyjWlproKM0XWYyPNEYxgn8H1kxvUgCWX35ExI1xLVWA3Zuw7ZiLdYM=" rel="nofollow" target="_blank" onclick="tuniuRecorder.push(&#39;32_1_1_1_1_6&#39;)">
            <img src="./update/dianziyingye.png" alt="营业执照" width="110" height="47">
        </a>
        <a target="_blank" rel="nofollow" href="http://www.patachina.org/" onclick="tuniuRecorder.push(&#39;32_1_1_1_1_7&#39;)">
            <img src="./update/pata.png" alt="亚太旅游协会会员单位" width="140" height="47">
        </a>
    </div>

</div>
<!--end foot-->

<script language="javascript" src="./update/zeus.js"></script>
<script type="text/javascript">
    var tuniuRecorder = _zeus.getRecorder();
</script>

<script src="./update/getdata_v4.js"></script>
<script type="text/javascript" src="./update/jquery_autoSlide.js"></script>
<script type="text/javascript">
    $(function(){
        $("#slideOrder").autoSlide();
    })
</script>
        <!--end foot-->

        <!--end foot-->
        <script src="./update/usercenter_head.js"></script>
        <script type="text/javascript">
            var content = "/会员/会员中心/交易管理/个人资料/个人资料修改/8089866359";
            //ga数据准备
            var _gaq = _gaq || [];
            _gaq.push(["_setAllowHash", false]);
            _gaq.push(["_setAllowAnchor", true]);
            _gaq.push(["_addOrganic", "baidu", "wd"]);
            _gaq.push(["_addOrganic", "baidu", "word"]);
            _gaq.push(["_addOrganic", "google", "q"]);
            _gaq.push(["_addOrganic", "118114", "kw"]);
            _gaq.push(["_addOrganic", "bing", "q"]);
            _gaq.push(["_addOrganic", "soso", "w"]);
            _gaq.push(["_addOrganic", "youdao", "q"]);
            _gaq.push(["_addOrganic", "sogou", "query"]);
            _gaq.push(["_addOrganic", "360", "q"]);
            _gaq.push(["_addOrganic", "baidu", "w"]);
            _gaq.push(["_addOrganic", "baidu", "q1"]);
            _gaq.push(["_addOrganic", "baidu", "q2"]);
            _gaq.push(["_addOrganic", "baidu", "q3"]);
            _gaq.push(["_addOrganic", "baidu", "q4"]);
            _gaq.push(["_addOrganic", "baidu", "q5"]);
            _gaq.push(["_addOrganic", "baidu", "q6"]);
            _gaq.push(["_addOrganic", "baidu", "q6"]);
            _gaq.push(["_setDomainName", "tuniu.com"]);
            _gaq.push(["_setAccount", "UA-4782081-5"]);
            _gaq.push(["_trackPageview", content]);
            var tuniuTracker = '';
            var init_page_set_time_out = 0;//页面自动加载标记
            In.add('gaAndTac', {path: '//ssl1.tuniucdn.com/j/20140612/common/tac.mini.js,common/ga.js', type: 'js', charset: 'utf-8'});
            In('gaAndTac', function() {
                tuniuTracker = _tat.getTracker();
                tuniuTracker.setPageName("会员中心:交易管理:个人资料:个人资料修改:55826041");
                tuniuTracker.addOrganic("360", "q");
                tuniuTracker.addOrganic("baidu", "w");
                tuniuTracker.addOrganic("baidu", "q1");
                tuniuTracker.addOrganic("baidu", "q2");
                tuniuTracker.addOrganic("baidu", "q3");
                tuniuTracker.addOrganic("baidu", "q4");
                tuniuTracker.addOrganic("baidu", "q5");
                tuniuTracker.addOrganic("baidu", "q6");
                tuniuTracker.trackPageView();
                tuniuTracker.enableLinkTracking();
            });
            In.add('TN_common_init', {path: '//ssl.tuniucdn.com/j/2014071517/common/jquery-powerFloat.js,common/lazyloadnew.min.js', type: 'js', charset: 'utf-8'});
            In('TN_common_init', function() {
                //图片异步加载。
                $("img").lazyload({
                    effect: "fadeIn",
                    failurelimit: 50,
                    threshold: 300,
                    skip_invisible: false
                });
            });
        </script>
        <!--start baidu_share-->
        <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=643059"></script>
        <script type="text/javascript" id="bdshell_js"></script>
        <script type="text/javascript">var bds_config = {"snsKey": {'tsina': 'a8311fe10852f090', 'tqq': '43956772b6ae82e5', 't163': '', 'tsohu': ''}}</script>
    <script type="text/javascript" src="./update/layer.min.js"></script>
<script type="text/javascript" src="./update/birthday.js"></script>
<script type="text/javascript" src="./update/usercenter_info.js"></script>
<script type="text/javascript" src="./update/check_identify_card.js"></script>

</body></html>