<%@ page language="java" contentType="text/html; UTF-8"  pageEncoding="UTF-8" %>

<div class="footer" style="margin-top: 60px">
    <div class="g-in">
        <div class="top  clearfix">

            <%-- 获取导航菜单--%>
            <%
                MenuItem footNavi = SystemManage.getInstance().getNavi();
                if(null == footNavi || CollectionUtils.isEmpty(footNavi.getChildren())) {
                    // 导航菜单不存在，不渲染
                    return;
                }
            %>
            <div class="footnav">
                <%-- 渲染导航菜单--%>
                <% for(MenuItem menu : footNavi.getChildren()){ %>
                    <dl>
                        <!-- 一级菜单 -->
                        <dt><a href="<%= menu.getUrl()%>"><%= menu.getName()%></a></dt>
                        <!-- 二级菜单 -->
                        <% if(CollectionUtils.isNotEmpty(menu.getChildren())){ %>
                            <% for(MenuItem subMenu : menu.getChildren()){ %>
                                <dd><a href="<%=subMenu.getUrl()%>"><%=subMenu.getName()%></a></dd>
                            <% } %>
                        <% } %>
                    </dl>
                <% } %>
                    <dl class="wechat">
                        <dt><a href="javascript:void(0)">系统下载</a></dt>
                        <dd><a href="javascript:void(0)">扫描二维码</a>

                            <div><img src="images/wechat.jpg"></div>
                        </dd>
                    </dl>
            </div>


            <!-- 联系我们 -->
            <div class="share">
                <div class="contact">
                    <dl>
                        <%--<dt>联系我们</dt>--%>
                    </dl>
                    <dl>
                        <!-- 联系地址1-->
                        <dd>公司地址：<%=SystemManage.getInstance().getSystemSetting().getAddress()%></dd>
                        <!-- 联系地址2-->
                        <!-- 联系地址3-->
                        <dd>联系电话：<%=SystemManage.getInstance().getSystemSetting().getTel()%></dd>
                        <dd>邮箱：<%=SystemManage.getInstance().getSystemSetting().getEmail()%></dd>
                        <dd>传真：<%=SystemManage.getInstance().getSystemSetting().getFax()%></dd>
                    </dl>
                </div>

                <!-- App二维码 -->
                <div class="ewm">
                    <img src="/upload/2017-7/2017072838525829.jpg" width="100" height="100"
                         alt="大德中电-智能家居控制系统，智能物联综合解决方案领导者">
                    <p>扫一扫关注</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Copy right -->
    <div class="copyright">
        <p class="g-in">
            COPYRIGHT 2018 &copy;<%=SystemManage.getInstance().getSystemSetting().getTitle()%>
            <a href="http://www.miitbeian.gov.cn/" rel="nofollow" target="_blank"></a>
            <a href="http://ww" target="_blank"  style="text-decoration:none;font-family:&quot;font-size:14px;text-align:center;background-color:#FFFFFF;"><%=SystemManage.getInstance().getSystemSetting().getIcp()%></a>
        </p>
    </div>
</div>
</body>
</html>
