<%@ page language="java" contentType="text/html; UTF-8"  pageEncoding="UTF-8" %>

<div class="banner" id="focus">
    <div class="bd">
        <ul>
        <c:forEach var="item" items="<%=SystemManage.getInstance().getIndexImgs()%>">
            <c:choose>
                <%-- 有超链接，新页面打开--%>
                <c:when test="${item.link != null && item.link.length() > 0}">
                    <li><a href="${item.link}" target="_blank"><img src="${item.pictureUrl}"/></a></li>
                </c:when>
                <%-- 无链接，只显示图片--%>
                <c:otherwise>
                    <li><a href="javascript:void(0)"><img src="${item.pictureUrl}"/></a></li>
                </c:otherwise>
            </c:choose>

        </c:forEach>
        </ul>
    </div>
    <div class="hd"><ul class="clearfix"></ul></div>
    <script>
        TouchSlide({
            slideCell:"#focus",
            titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
            mainCell:".bd ul",
            effect:"leftLoop",
            autoPlay:true,//自动播放
            interTime:5000,
            autoPage:true //自动分页
        });
    </script>
</div>






