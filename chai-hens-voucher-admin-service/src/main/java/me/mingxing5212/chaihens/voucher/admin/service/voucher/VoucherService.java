package me.mingxing5212.chaihens.voucher.admin.service.voucher;

import me.mingxing5212.chaihens.component.VoucherSearchComponent;
import me.mingxing5212.chaihens.domain.Voucher;
import me.mingxing5212.chaihens.domain.VoucherStatus;
import me.mingxing5212.chaihens.domain.VoucherType;
import me.mingxing5212.chaihens.voucher.api.IVoucherAPI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

/**
 * 代金券
 *
 * @author Mingxing Li
 * @date 21/2/16
 */
@Service
public class VoucherService {

    @Autowired
    protected IVoucherAPI voucherAPI;

    /**
     * 查找处于草稿状态的代金券
     * @param merchantId
     * @return
     */
    public List<Voucher> getDraftCashVouchers(Long merchantId){
        VoucherSearchComponent voucherSearchComponent = new VoucherSearchComponent();
        voucherSearchComponent.setVoucherStatus(Optional.of(Arrays.asList(VoucherStatus.CREATED)));
        voucherSearchComponent.setVoucherTypes(Optional.of(Arrays.asList(VoucherType.CASH)));
        return this.getVouchers(merchantId, voucherSearchComponent);
    }

    /**
     * 查找优惠券
     * @param merchantId
     * @param voucherSearchComponent
     * @return
     */
    public List<Voucher> getVouchers(Long merchantId, VoucherSearchComponent voucherSearchComponent){
        voucherSearchComponent.setMerchantId(Optional.of(merchantId));
        return voucherAPI.getVouchers(voucherSearchComponent);
    }
}
