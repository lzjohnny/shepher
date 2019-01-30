<div class="modal fade" id="rejectModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    Confirm Operation
                </h4>
            </div>
            <div class="modal-body">
                <fieldset>
                    <div class="form-group">
                        Reject review for path: ${reviewRequest.path}
                    </div>
                </fieldset>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success"
                        onclick="onButtonClick($('#diff-form'), '/reviews/${reviewRequest.id?c}/reject', 'POST'); return false;">
                    Confirm
                </button>
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">Cancel
                </button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->