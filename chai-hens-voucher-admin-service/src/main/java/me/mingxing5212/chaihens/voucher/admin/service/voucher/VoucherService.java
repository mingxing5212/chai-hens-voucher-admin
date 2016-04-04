package me.mingxing5212.chaihens.voucher.admin.service.voucher;

import me.mingxing5212.chaihens.component.VoucherResultComponent;
import me.mingxing5212.chaihens.component.VoucherSearchComponent;
import me.mingxing5212.chaihens.domain.MerchantUser;
import me.mingxing5212.chaihens.domain.Voucher;
import me.mingxing5212.chaihens.domain.VoucherStatus;
import me.mingxing5212.chaihens.domain.VoucherType;
import me.mingxing5212.chaihens.voucher.api.IVoucherAPI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
    public VoucherResultComponent getCashVouchers(Long merchantId, Integer startIndex, Integer endIndex){
        VoucherSearchComponent voucherSearchComponent = new VoucherSearchComponent();
        List<VoucherStatus> voucherStatuses = new ArrayList<VoucherStatus>();
        voucherStatuses.add(VoucherStatus.CREATED);
        voucherSearchComponent.setVoucherStatus(voucherStatuses);
        List<VoucherType> voucherTypes = new ArrayList<VoucherType>();
        voucherTypes.add(VoucherType.CASH);
        voucherSearchComponent.setVoucherStatus(voucherStatuses);
        voucherSearchComponent.setVoucherTypes(voucherTypes);
        voucherSearchComponent.setStart(startIndex);
        voucherSearchComponent.setEnd(endIndex);
        return this.getVouchers(merchantId, voucherSearchComponent);
    }

    /**
     * 创建代金券
     * @param voucher
     * @return
     */
    public Long createCashVoucher(Voucher voucher, MerchantUser merchantUser){
        return voucherAPI.addVoucher(voucher, merchantUser);
    }

    /**
     * 更新代金券
     * @param voucher
     * @param merchantUser
     */
    public void updateCashVoucher(Voucher voucher, MerchantUser merchantUser){
        voucherAPI.modifyVoucher(voucher, merchantUser);
    }

    /**
     * 移除代金券
     * @param voucherId
     * @param merchantUser
     */
    public void deleteCashVoucher(Long voucherId, MerchantUser merchantUser){
        voucherAPI.removeVoucher(voucherId, merchantUser);
    }

    /**
     * 查找优惠券
     * @param merchantId
     * @param voucherSearchComponent
     * @return
     */
    public VoucherResultComponent getVouchers(Long merchantId, VoucherSearchComponent voucherSearchComponent){
        voucherSearchComponent.setMerchantId(merchantId);
        return voucherAPI.getVouchers(voucherSearchComponent);
    }
}
