<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/front/common/common.jsp" %>
<style>
    .banner{width:100%;position:relative;overflow: hidden;}
    .banner .hd{position:absolute;left:0px;width:100%;bottom:20px;text-align:center;}
    .banner .hd ul{display:inline-block;}
    .banner .hd li{float:left;width:14px;height:14px;border:1px solid #fff;margin:0px 5px;border-radius:50%;font-size:0px;cursor:pointer;}
    .banner .hd .on{background-color:#3ea503;border:1px solid #3ea503;}
    .banner img{margin:0 auto;display:block;width:100%;}

    .news{position:relative;}
    .news .newbg{padding:0px;}
    .news .newbg img{width:100%;}
    .content .container-fluid{padding:0px;}
    .news img{}
    .news .newlist{box-sizing:border-box;padding:12px 20px 0px 40px;}
    .news .newlist .hd{height:42px;line-height:42px;border-bottom:1px solid #b6b6b6;box-sizing:border-box;position:relative;margin-bottom:12px;width:90%;}
    .news .newlist .hd li{height:42px;float:left;font-size:15px;margin-right:30px;box-sizing:border-box;border-bottom:3px solid transparent;}
    /*.news .newlist .hd li:hover{border-bottom:3px solid #3ea503;}*/
    .news .newlist .hd li a{color:#000;display:block;}
    .news .newlist .hd .on{border-bottom:3px solid #0080da;}
    .news .newlist .more{position:absolute;display:block;width:46px;height:20px;top:0px;right:0px;text-align:center;line-height:18px;border:1px solid #0080da;border-radius:12px;color:#0080da;text-transform:uppercase;top:50%;margin-top:-8px;font-size:12px;}
    .news .newlist .bd li{font-size:13px;line-height:32px;padding-left:18px;background:url(nelibg.gif) 1px center no-repeat;overflow: hidden;display: -webkit-box;-webkit-line-clamp:1;-webkit-box-orient:vertical;}
    .news .newlist .bd{width:90%;}


    .leader{margin-top:0px;}
    .leader .aboutbg{padding:0px;float:right;}
    .leader .aboutbg img{width:100%;}
    .leader .caption{text-align:right;padding:50px 40px 0px 0px;box-sizing: border-box;float:left;}
    .leader .caption h3{font-size:18px;color:#b1aeae;text-transform:uppercase;font-weight:normal;margin-bottom:20px;}
    .leader .caption h3 span{display:block;font-size:16px;color:#000;padding-bottom:10px;margin-top:8px;position:relative;}
    .leader .caption p{font-size:14px;color:#555;line-height:32px;text-align:left;}
    .leader .caption h3 span em{display:block;width:25px;height:2px;position:absolute;right:2px;bottom:0px;background:url(ledbg.gif) right bottom no-repeat;}


    @media(max-width: 1920px) and (min-width: 1500px){
        .news .newlist{padding-top:20px;}
        .news .newlist .hd{height:60px;line-height:60px;margin-bottom:22px;}
        .news .newlist .hd li{height:60px;}
        .news .newlist .bd li{line-height:30px;}
        .leader .caption p{width:50%;float:right;}
    }

    @media(max-width: 1500px) and (min-width: 766px){
        /*.leader .caption h3{width:60%;text-align:left;float:right;}*/
        .leader .caption p{width:60%;float:right;}

    }
    @media(max-width: 766px){

        .leader .caption p{width:100%;float:right;}
        /*.leader .caption h3{width:60%;text-align:left;float:right;}*/
        .gaaa{ display:none}
    }


    @media(max-width: 1300px) and (min-width: 766px){
        .news .newbg img{min-height:198px;}
        .news .newlist{padding:6px 0px 0px 40px;}
        .news .newlist .bd li{line-height:28px;}
        .leader .caption{padding:12px 20px 0px 0px;box-sizing: border-box;}
        .leader .caption h3{margin-bottom:15px;}
        .leader .caption p{line-height:26px;}
        .aboutbg img{min-height:198px;}


    }

    @media(max-width: 766px){
        .news .newbg{box-sizing:border-box;padding:20px 22px 10px;}
        .content .news .newlist{padding:0px 26px 10px;}
        .news .newlist .bd li{line-height:26px;display:block;height:26px;overflow: hidden;display: -webkit-box;-webkit-line-clamp:1;-webkit-box-orient:vertical;}
        .news .newlist .hd li{margin-right:20px;}
        .leader .aboutbg{box-sizing:border-box;padding:20px 22px 10px;}
        .leader .caption{width:100%;padding:10px 26px 10px;box-sizing:border-box;}
        .leader .caption h3{margin-bottom:15px;}

        .news .newlist .hd{width:100%;}
        .news .newlist .bd{width:100%;}


        .banner .hd{bottom:10px;}
        .banner .hd li{width:12px;height:12px;margin:0px 3px;}


    }


    @media(max-width: 1150px) and (min-width: 766px){
        .news .newlist{padding-top:3px;}
        .news .newlist .hd{margin-bottom:10px;}
        .news .newlist .bd li{line-height:26px;}
    }


    @media(max-width: 900px){

        .newlist .hd .more{display:none;}


    }
</style>

<body>
<div class="wrapper">
<%-- navigation --%>
<%@include file="/front/common/navigation.jsp" %>

<%-- Banner --%>
<%@include file="/front/common/banner.jsp" %>

<%-- 首页核心产品解释 --%>
<%@include file="/front/home/product.jsp" %>

<%-- Footer --%>
<%@include file="/front/common/foot.jsp" %>
</div>




