<div class="panel panel-default widget">
    <div class="panel-heading">
        <h3 class="panel-title"><span>最新</span></h3>
    </div>
    <div class="panel-body ulGrid">
		<@sidebar method="latest_posts">
            <ul class="list">
				<#list results as row>
                    <li><a href="${base}/post/${row.id}"><i></i>${row.title}</a></li>
                </#list>
            </ul>
        </@sidebar>
    </div>
</div>
<div class="panel panel-default widget">
    <div class="panel-heading">
        <h3 class="panel-title"><span>热门</span></h3>
    </div>
    <div class="panel-body tabInfoBox">
		<@sidebar method="hottest_posts">
            <ul class="list">
			<#list results as row>
                <li>
                    <a href="${base}/post/${row.id}">${row.title}</a>
                    <div class="item-text">${row.summary}</div>
                </li>
			</#list>
            </ul>
		</@sidebar>
    </div>
</div>

<@controls name="comment">
<div class="panel panel-default widget">
    <div class="panel-heading">
        <h3 class="panel-title"><span>评论</span></h3>
    </div>
    <div class="panel-body ulGrid">
		<@sidebar method="latest_comments">
            <ul class="list">
				<#list results as row>
                    <li><a href="${base}/post/${row.postId}"><i class="comments-i"></i>${row.content}</a></li>
				</#list>
            </ul>
		</@sidebar>
    </div>
</div>
</@controls>