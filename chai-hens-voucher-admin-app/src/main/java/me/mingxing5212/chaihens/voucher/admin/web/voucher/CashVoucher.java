package me.mingxing5212.chaihens.voucher.admin.web.voucher;

import me.mingxing5212.chaihens.domain.Voucher;

/**
 * 前端定义的交互代金券
 *
 * @author Mingxing Li
 * @date 13/3/16
 */
public class CashVoucher {

    private Voucher voucher;

    public Voucher getVoucher() {
        return voucher;
    }

    public void setVoucher(Voucher voucher) {
        this.voucher = voucher;
    }
}
