<%@ page import="com.enterprise.common.MenuItem" %>
<%@ page import="java.util.Collection" %>
<%@ page import="org.apache.commons.collections.CollectionUtils" %>
<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>


<div class="header">
    <div class="g-in clearfix">

        <!-- Logo -->
        <div class="logo">
            <a href="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>">
                <img src="<%=SystemManage.getInstance().getSystemSetting().getLogo() %>" width="238" height="92">
            </a>
        </div>

        <div class="pcshow">
            <!-- 顶部工具栏 -->
            <div class="topbox">
                <!-- 搜索框 -->
                <div class="searchbox">
                    <input type="text" value="请输入搜索关键字">
                </div>
                <span>400热线：400-887-8353</span>
            </div>

            <!-- 导航栏 -->
            <div class="navs">
                <%-- 获取导航菜单--%>
                <%
                    MenuItem navi = SystemManage.getInstance().getNavi();
                    if(null == navi || CollectionUtils.isEmpty(navi.getChildren())) {
                        // 导航菜单不存在，不渲染
                        return;
                    }
                %>
                <ul class="clearfix">
                    <%-- 渲染导航菜单--%>
                    <% for(MenuItem menu : navi.getChildren()){ %>
                        <!-- 一级菜单 -->
                        <li>
                            <a href="<%= menu.getUrl()%>" class=''><%= menu.getName()%></a>
                            <!-- 二级菜单 -->
                            <% if(CollectionUtils.isNotEmpty(menu.getChildren())){ %>
                                <dl>
                                    <% for(MenuItem subMenu : menu.getChildren()){ %>
                                       <dt><a href=""><%=subMenu.getName()%></a></dt>
                                    <% } %>
                                </dl>
                            <% } %>
                        </li>
                    <% } %>
                </ul>

                    <script type="text/javascript">
                        $('.navs li').hover(function () {
                            $(this).find('dl').stop(true, false).slideDown('fast');
                        }, function () {
                            $(this).find('dl').stop(true, false).slideUp('fast');
                        });
                    </script>

            </div>
        </div>
    </div>
</div>
