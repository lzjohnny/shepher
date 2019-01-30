<!DOCTYPE html>
<html lang="en">
<#include "../header.ftl">
<body>
<#include "../nav.ftl">

<div class="container">
    <table class="table table-striped">
        <caption class="caption"><h4>集群列表</h4></caption>
        <thead>
        <tr>
            <th class="col-md-4">集群名称</th>
            <th class="col-md-8">Host:Port</th>
        </tr>
        </thead>
        <tbody>
        <#list clusters as cluster>
        <tr>
            <td><a href="/clusters/${cluster.name}/nodes">${cluster.name}</a></td>
            <td>${cluster.config}</td>
        </tr>
        </#list>

        </tbody>
    </table>
</div>
<!-- /container -->

<#include "../script.ftl">


</body>
</html>
