<footer class="footer">
    <div class="container">
        <div class="footer-row">
            <nav class="footer-nav">
                <a class="footer-nav-item footer-nav-logo" href="${base}/">
                    <img src="<@resource src=options['site_logo']/>" alt="mblog"/>
                </a>
                <span class="footer-nav-item">${options['site_copyright']}</span>
                <span class="footer-nav-item">${options['site_icp']}</span>
            </nav>
            <div class="gh-foot-min-back hidden-xs hidden-sm">
                <!-- 请保留此处标识-->
                <span class="footer-nav-item">Powered by <a href="https://github.com/langhsu/mblog" target="_blank">Mblog</a></span>
            </div>
        </div>
    </div>
</footer>

<div class="leftNav-item">
    <ul>
        <li>
            <i class="fa fa-location-arrow"></i>
            <a href="javascript:void(0)" class="rota">业务合作</a>
        </li>
        <li title="在线客服">
            <i class="fa fa-comments-o"></i>
            <a href="javascript:void(0)" class="rota">在线反馈</a>
        </li>
        <li lay-data="img" data-fooc="http://www.mtons.com/dist/images/code/qq.jpg">
            <i class="fa fa-qrcode"></i><a href="javascript:;" class="rota">二维码</a>
        </li>
        <li title="返回顶部" class="for-top">
            <i class="fa fa-arrow-up"></i>
            <a href="javascript:;" class="rota">返回顶部</a>
        </li>
    </ul>
</div>
<script type="text/javascript">
    seajs.use('main', function (main) {
        main.init();
    });
</script>
<script src="${base}/theme/concise/dist/wow/js/wow.min.js"></script>
<script src="${base}/theme/concise/dist/js/concise.js"></script>

