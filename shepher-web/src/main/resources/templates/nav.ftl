<!-- Static navbar -->
<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>​
            </button>
        <#if cluster??>
            <a class="navbar-brand" href="/clusters/${cluster!}/nodes">Shepher管理后台</a>
        <#else>
            <a class="navbar-brand" href="/clusters">Shepher管理后台</a>
        </#if>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false">当前集群: ${cluster?default("未选择")} <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                    <#list clusters as cluster>
                        <li><a href="/clusters/${cluster.name}/nodes">${cluster.name}</a></li>
                    </#list>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/clusters">主页</a></li>
            <#if isAdmin!>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false">后台管理<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/admin">集群管理</a></li>
                        <li><a href="/permission">权限管理</a></li>
                    </ul>
                </li>
            </#if >
            <#if user??>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false">${user.name}<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/teams">团队管理</a></li>
                        <li><a href="/logout">注销</a></li>
                    </ul>
                </li>
            </#if>
                <li><a href="https://github.com/XiaoMi/shepher/blob/master/README.md" target="_blank">Wiki</a></li>
            </ul>

        </div><!--/.nav-collapse -->
    </div>
</div>