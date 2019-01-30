<div class="modal fade" id="replaceModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    复制节点及其子节点<span id="select-path"></span>
                </h4>
            </div>
            <form class="form-horizontal" id="replace-node" action="?">
                <div class="modal-body">
                    <fieldset>
                        <div class="form-group">
                            <label for="cluster-name" class="col-lg-2 control-label">源集群r</label>
                            <div class="col-lg-8">
                                <select class="form-control input-sm" id="srcCluster" name="srcCluster">
                                    <#list clusters as cluster>
                                        <option value="${cluster.name}">${cluster.name}</option>
                                    </#list>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="node-name" class="col-lg-2 control-label">源节点路径</label>
                            <div class="col-lg-8" id="user-name-div">
                                <input name="srcPath" id="srcPath" type="text"
                                    class="form-control input-sm placeholder="Node Path">
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="form-group">
                            <label for="cluster-name" class="col-lg-2 control-label">目标集群</label>
                            <div class="col-lg-8">
                                <select class="form-control input-sm" id="dstCluster" name="dstCluster">
                                    <#list clusters as cluster>
                                        <option value="${cluster.name}">${cluster.name}</option>
                                    </#list>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="node-name" class="col-lg-2 control-label">目标节点路径</label>
                            <div class="col-lg-8" id="user-name-div">
                                <input name="dstPath" id="dstPath" type="text"
                                    class="form-control input-sm placeholder="Node Path">
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <button type="submit" id="select-path-submit" class="btn btn-success"
                        onclick="onReplaceButtonClick(this.form, '/clusters/${cluster}/nodes/replace', 'POST'); return false;">
                        确定
                    </button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        取消
                    </button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
