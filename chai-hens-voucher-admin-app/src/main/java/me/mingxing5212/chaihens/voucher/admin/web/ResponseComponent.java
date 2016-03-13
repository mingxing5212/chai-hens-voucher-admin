package me.mingxing5212.chaihens.voucher.admin.web;

/**
 * 返回前端组件
 *
 * @author Mingxing Li
 * @date 13/3/16
 */
public class ResponseComponent {
    private Boolean success = Boolean.TRUE;

    public ResponseComponent(){}
    public ResponseComponent(Boolean success){
        this.success = success;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }
}
