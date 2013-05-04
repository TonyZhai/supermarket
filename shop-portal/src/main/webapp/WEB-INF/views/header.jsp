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
            <%--<div class="hd_indxProvce fl" id="headerSelectProvince">--%>
                <%--<span>送货至</span><a class="hd_header_province_name" id="currProvince" href="javascript:showProvincesV2();"></a>--%>
                <%--<ul id="headerAllProvince" class="hd_provinceList">--%>
                <%--</ul>--%>
            <%--</div>--%>
        </div>
        <div class="hd_top_manu clearfix">
            <ul class="clearfix">
                <li class="hd_my_order">
                    <a href="http://my.yihaodian.com/order/myOrder.do" tk="YHD_TOP_myorder" target="_blank"><s></s>我的订单</a>
                </li>
                <li class="hd_menu_tit hd_fr_recommend" data-addClass="hd_menu_hover">
                    <a target="_blank" tk="YHD_TOP_help" href="http://www.yihaodian.com/cms/view.do?topicId=18942&merchant=1" class="hd_menu">客户服务</a>
                    <div class="hd_menu_list">
                        <ul>
                            <li><a target="_blank" href="http://www.yihaodian.com/cms/view.do?topicId=18991" tk="YHD_TOP_help_wenti">常见问题</a></li>
                            <li><a target="_blank" href="http://my.yihaodian.com/return/returnApplyList.do" tk="YHD_TOP_help_shouhou">在线退换货</a></li>
                            <li><a target="_blank" href="http://my.yihaodian.com/opinion/opinionList.do" tk="YHD_TOP_help_tousu">在线投诉</a></li>
                            <li><a target="_blank" href="http://www.yihaodian.com/marketing/deliveryinfo/deliveryInfo.do" tk="YHD_TOP_help_peisongfanwei">配送范围</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>