<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglibs.jsp"%>
<div class="hd_global_top_bar" id="global_top_bar">
    <div class="wrap clearfix" >
        <div class=" hd_topbar_left clearfix ">
            <div class="hd_unlogin_wrap" id="global_unlogin">
                hi&nbsp;,<span class="hd_unlogin">请<a href="https://passport.yihaodian.com/passport/login_input.do" id="global_top_bar_loginLink" class="blue_link">登录&nbsp;</a>/&nbsp;<a href="https://passport.yihaodian.com/passport/register_input.do" tk="YHD_TOP_register" class="blue_link">注册</a></span><a href="http://my.yihaodian.com/member/my.do" tk="YHD_TOP_myyihaodian" target="_blank">个人中心</a>
            </div>
            <div class="hd_login_wrap none" id="global_login" data-addClass="hd_login_hover">
                <span class="fl">hi&nbsp;,</span><span class="hd_login fl" id="user_name"></span><a href="http://my.yihaodian.com/member/my.do" tk="YHD_TOP_myyihaodian" class="hd_user_center fl" target="_blank">的个人中心</a>
                <ul>
                    <li><a href="http://my.yihaodian.com/order/myOrder.do" tk="YHD_TOP_order" target="_blank">我的订单</a></li>
                    <li><a href="http://my.yihaodian.com/points/displayPointAccount.do" tk="YHD_TOP_points" target="_blank">我的积分</a></li>
                    <li><a href="http://my.yihaodian.com/coupon/displayCoupons.do" tk="YHD_TOP_coupon" target="_blank">我的抵用券</a></li>
                    <li><a href="http://my.yihaodian.com/member/myCollection/myCollectionProduct.do" tk="YHD_TOP_mycollection" target="_blank">我的收藏</a></li>
                    <li><a href="http://my.yihaodian.com/member/exp/comment.do" tk="YHD_TOP_comment" target="_blank">商品评价</a></li>
                    <li><a id="logout" class="logout" href="javaScript:bothSiteLogoutJsonp();">退出</a></li>
                </ul>
            </div>
            <div class="hd_indxProvce fl" id="headerSelectProvince">
                <span>送货至</span><a class="hd_header_province_name" id="currProvince" href="javascript:showProvincesV2();"></a>
                <ul id="headerAllProvince" class="hd_provinceList">
                </ul>
            </div>
        </div>
        <div class="hd_top_manu clearfix">
            <ul class="clearfix">
                <li class="hd_mobile_devic" id="hd_mobile_devic" data-addClass="hd_mobile_hover">
                    <a class="hd_menu"><s></s>移动设备</a>
                    <div class="hd_mobile_list" id="hd_mobile_list">
                        <p>
                            <a href="http://www.yihaodian.com/cms/view.do?topicId=14572" class="hd_iphone" tk="YHD_TOP_iphone" target="_blank">iPhone</a>
                            <span class="hd_quick_mark"><img src="http://image.yihaodianimg.com/front-homepage/global/images/blank.gif" original="http://d8.yihaodianimg.com/N00/M08/52/AA/CgMBmFF7LmeADWonAAAY6JGUlx042700.jpg" /></span>
                        </p>
                        <p>
                            <a href="http://www.yihaodian.com/cmsPage/show.do?pageId=12760" tk="YHD_TOP_ipad" target="_blank" class="hd_ipad">iPad</a>
                            <span class="hd_quick_mark"><img src="http://image.yihaodianimg.com/front-homepage/global/images/blank.gif" original="http://d6.yihaodianimg.com/N02/M0B/52/18/CgQCsFF7LruAKOqBAAAaWfDTIA867900.jpg" /></span>
                        </p>
                        <p>
                            <a href="http://www.yihaodian.com/cms/view.do?topicId=13506" tk="YHD_TOP_android" target="_blank" class="hd_mobile">手机端</a>
                            <span class="hd_quick_mark"><img src="http://image.yihaodianimg.com/front-homepage/global/images/blank.gif" original="http://d6.yihaodianimg.com/N02/M01/52/17/CgQCslF7LuuACZNdAAAYkuK7FT035700.jpg" /></span>
                        </p>
                    </div>
                </li>
                <li class="hd_my_order">
                    <a href="http://my.yihaodian.com/order/myOrder.do" tk="YHD_TOP_myorder" target="_blank"><s></s>我的订单</a>
                </li>
                <li class="hd_menu_tit specia_column" data-addClass="hd_menu_hover"><a class="hd_menu" href="javascript:void(0);"><s class="tslm"></s>特色栏目</a>
                    <div class="hd_menu_list">
                        <ul>
                            <li><a target="_blank" href="http://www.yihaodian.com/dqg/index.do" tk="YHD_TOP_scolumn_repurchase">定期购</a></li>
                            <li><a target="_blank" href="http://idea.yihaodian.com" tk="YHD_TOP_teSeColumn">1起创</a></li>
                            <li><a target="_blank" href="http://chi.yihaodian.com" tk="YHD_TOP_sclolumn_eat">1起吃</a></li>
                        </ul>
                    </div>
                </li>
                <li class="hd_menu_tit" data-addClass="hd_menu_hover">
                    <a target="_blank" tk="YHD_TOP_help" href="http://www.yihaodian.com/cms/view.do?topicId=18942&merchant=1" class="hd_menu"><s class="khfw"></s>客户服务</a>
                    <div class="hd_menu_list">
                        <ul>
                            <li><a target="_blank" href="http://my.yihaodian.com/order/myOrder.do" tk="YHD_TOP_help_baoguo">包裹跟踪</a></li>
                            <li><a target="_blank" href="http://www.yihaodian.com/cms/view.do?topicId=18991" tk="YHD_TOP_help_wenti">常见问题</a></li>
                            <li><a target="_blank" href="http://my.yihaodian.com/return/returnApplyList.do" tk="YHD_TOP_help_shouhou">在线退换货</a></li>
                            <li><a target="_blank" href="http://my.yihaodian.com/opinion/opinionList.do" tk="YHD_TOP_help_tousu">在线投诉</a></li>
                            <li><a target="_blank" href="http://www.yihaodian.com/marketing/deliveryinfo/deliveryInfo.do" tk="YHD_TOP_help_peisongfanwei">配送范围</a></li>
                        </ul>
                    </div>
                </li>
                <li class="hd_menu_tit">
                    <a target="_blank" href="http://union.yihaodian.com" tk="YHD_TOP_union">网站联盟</a>
                </li>
                <li class="hd_menu_tit">
                    <a target="_blank" href="http://b2b.yihaodian.com" tk="YHD_TOP_b2b">企业采购</a>
                </li>
                <li class="hd_menu_tit hd_fr_recommend" data-addClass="hd_menu_hover">
                    <a href="javascript:void(0);" class="hd_menu">友情推荐</a>
                    <div class="hd_menu_list">
                        <ul>
                            <li><a id="targetMall" href="http://www.1mall.com" tk="YHD_TOP_links_mall" class="ymall">1号商城</a></li>
                            <li><a href="http://www.yiwang.cn/" onclick="gotracker('2','YHD_TOP_links_yiwang');" class="yi">1号医网</a></li>
                            <li><a href="http://www.111.com.cn/" onclick="gotracker('2','YHD_TOP_links_yaowang');" class="yao">1号药网</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
            <a href="javascript:bookmark();" onclick="gotracker('2','YHD_TOP_favorite');" class="favorite" title="加入收藏">加入收藏</a>
            <a target="_blank" id="weibo" onclick="gotracker('2','YHD_TOP_weibo');" href=" http://weibo.com/yihaodian" class="sina_weibo" title="关注1号店新浪微博">关注1号店新浪微博</a>
        </div>
    </div>
</div>