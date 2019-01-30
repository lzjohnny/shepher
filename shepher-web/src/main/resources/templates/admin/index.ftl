<!DOCTYPE html>
<html lang="en">
<#include "../header.ftl">
<body>
<#include "../nav.ftl">

<div class="container">
    <table class="table table-striped">
        <caption class="caption"><h4>Zookeeper集群管理</h4></caption>
        <thead>
        <tr>
            <th class="col-md-2">集群名称</th>
            <th class="col-md-8">Host:Port</th>
            <th class="col-md-2">管理</th>
        </tr>
        </thead>
        <tbody>
        <#list clusters as cluster>
        <tr>
            <td><a href="/clusters/${cluster.name}/nodes">${cluster.name}</a></td>
            <td>${cluster.config}</td>
            <td>
                <button class="btn btn-primary btn-xs" onclick="showUpdateModal('${cluster.name}'); return false;">
                    Update
                </button>
                <button class="btn btn-danger btn-xs" onclick="showDeleteModal('${cluster.name}'); return false;">
                    Delete
                </button>
            </td>
        </tr>
        </#list>
        <tr>
            <td></td>
            <td></td>
            <td>
                <button class="btn btn-success btn-xs" href="#" onclick="showCreateModal(); return false;">添加集群</button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<!-- /container -->
<!-- 模态框（Modal） -->
<#include "create-modal.ftl">
<#include "update-modal.ftl">
<#include "delete-modal.ftl">

<#include "../script.ftl">
<script>
    function onButtonClick(form, action, method) {
        form.action = action;
        form.method = method;

        form.submit();
    }

    function showCreateModal() {
        $('#createModal').modal({
            keyboard: true
        })
    }
    function showUpdateModal(clusterName) {
        $('#update-name').attr('value', clusterName);
        $('#updateModal').modal({
            keyboard: true
        })
    }

    function showDeleteModal(clusterName) {
        $('#delete-name').attr('value', clusterName);
        $('#deleteModal').modal({
            keyboard: true
        })
    }
</script>

</body>
</html>
