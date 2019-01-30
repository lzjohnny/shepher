<!DOCTYPE html>
<html lang="en">
<#include "../header.ftl">
<body>
<#include "../nav.ftl">

<div class="container">
    <div>
        <table class="table table-striped">
            <caption class="caption"><h4>小组 ${currentTeam.name}</h4></caption>
            <thead>
            <tr>
                <td>
                    <ul id="myTab" class="nav nav-tabs">
                    <#if isMaster == true>
                        <li><a href="/teams/${currentTeam.id?c}/manage">组员管理</a></li>
                    <#else>
                        <li><a href="/teams/${currentTeam.id?c}/members">组员列表</a></li>
                    </#if>
                        <li class="active"><a href="/teams/${currentTeam.id?c}/permission">权限管理</a></li>
                    </ul>
                </td>
                <td></td>
                <td></td>
            </tr>
            <#if authorizedPermissions?has_content  || pendingPermissions?has_content>
            <tr>
                <th class="col-md-2">已授权集群</th>
                <th class="col-md-2">已授权目录</th>
                <th class="col-md-2">授权状态</th>
            </tr>
            </#if>
            </thead>
            <tbody>

            <#list authorizedPermissions as permission >
            <tr>
                <td>${permission.cluster}</td>
                <td>${permission.path}</td>
                <td>${permission.status.description}</td>
            </tr>
            </#list>

            <#list pendingPermissions as permission >
            <tr>
                <td>${permission.cluster}</td>
                <td>${permission.path}</td>
                <td>${permission.status.description}</td>
            </tr>
            </#list>

            </tbody>
        </table>
    </div>

<#if !authorizedPermissions?has_content && !pendingPermissions?has_content>
    <div class="jumbotron">
        No authorized permissions to any cluster
    </div>
</#if>


<#if isMaster == true>
    <div>
        <button class="btn btn-success btn-sm  pull-right" id="refuse-button"
                onclick="showModal('#applyPermissionModal');return false;">申请权限
        </button>
    </div>
    <#include "apply_permission-modal.ftl">

</#if>
</div>
<!-- /container -->

<#include "../script.ftl">

<script>
    $(document).ready(function () {
        $('#apply-submit').click(function (event) {
            $('#path-error').hide();
            var data = $('#path').val();
            data = $.trim(data);
            if (data.length < 1 || data.charAt(0) != '/') {
                $('#path-div').addClass('has-error');
                $('#path-error').show();
                event.preventDefault();
            } else {
                $('#path-div').removeClass('has-error');
                $('#path-error').hide();
            }
        });

        $('#path').on("input", function () {
            var data = $('#path').val();
            data = $.trim(data);
            if (data.length > 0 && data.charAt(0) == '/') {
                $('#path-div').removeClass('has-error');
                $('#path-error').hide();
            }
        });
    });

</script>
</body>
</html>
