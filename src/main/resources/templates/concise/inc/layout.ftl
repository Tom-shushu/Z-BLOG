<#-- Layout -->
<#macro layout title keywords description>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!--version: ${site.version}-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'/>
    <![endif]-->

    <meta name="keywords" content="mtons, ${keywords?default(options['site_keywords'])}">
    <meta name="description" content="${description?default(options['site_description'])}">
    <meta name="mtons:mblog" content="${site.version}">
    <meta name="concise:concise" content="${options['site_metas']}">
    <title>${title?default(options['site_name'])}</title>

    <link href="${base}/dist/vendors/pace/themes/pace-theme-minimal.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${base}/dist/css/editor.css" rel="stylesheet"/>
    <link href="${base}/dist/css/plugins.css" rel="stylesheet"/>
    <link href="${base}/theme/concise/dist/viewer/css/viewer.min.css" rel="stylesheet"/>
    <link href="${base}/theme/concise/dist/css/swiper.min.css" rel="stylesheet"/>
    <link href="${base}/theme/concise/dist/css/style.css" rel="stylesheet"/>
    <link href="${base}/theme/concise/dist/css/banner.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/simple-line-icons/css/simple-line-icons.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="${base}/dist/vendors/animate/animate.css" rel="stylesheet"/>


    <script src="${base}/dist/vendors/pace/pace.min.js"></script>
    <script src="${base}/theme/concise/dist/viewer/js/viewer.min.js"></script>
    <script src="${base}/dist/js/jquery.min.js"></script>
    <script src="${base}/theme/concise/dist/js/swiper.min.js"></script>
    <script src="${base}/dist/vendors/layer/layer.js"></script>
    <script src="${base}/dist/vendors/bootstrap/js/bootstrap.min.js"></script>
    <script src="${base}/theme/concise/dist/js/baseMotheds.js"></script>

    <script type="text/javascript">
        var _MTONS = _MTONS || {};
        _MTONS.BASE_PATH = '${base}';
        _MTONS.LOGIN_TOKEN = '${profile.id}';
    </script>

    <script src="${base}/dist/js/sea.js"></script>
    <script src="${base}/dist/js/sea.config.js"></script>

    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" href="<@resource src=options['site_favicon']/>"/>
    <link rel="shortcut icon" href="<@resource src=options['site_favicon']/>"/>

</head>
<body>
<!-- header -->
<#include "/concise/inc/header.ftl"/>
<!-- /header -->

<!-- content -->
<div class="wrap">
    <!-- Main -->
    <div class="container">
        <#nested>
    </div>
</div>
<!-- /content -->

<!-- footer -->
<#include "/concise/inc/footer.ftl"/>

</body>
</html>
</#macro>