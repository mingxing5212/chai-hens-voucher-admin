package me.mingxing5212.chaihens.voucher.admin.web.voucher;

import me.mingxing5212.chaihens.component.VoucherResultComponent;
import me.mingxing5212.chaihens.domain.*;
import me.mingxing5212.chaihens.eggs.Seed;
import me.mingxing5212.chaihens.eggs.annotation.SeedParam;
import me.mingxing5212.chaihens.voucher.admin.service.voucher.VoucherService;
import me.mingxing5212.chaihens.voucher.admin.web.ResponseComponent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 代金券
 *
 * @author Mingxing Li
 * @date 21/2/16
 */
@Controller
@RequestMapping(value = "vouchers/cash")
public class CashVoucherController {

    @Autowired
    protected VoucherService voucherService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model, @SeedParam Seed<Voucher> seed){
        seed.setActionPath("vouchers/cash");
        //seed.getStart()
        VoucherResultComponent voucherResultComponent = voucherService.getCashVouchers(1l, seed.getStartPosition(), seed.getEndPosition());
        seed.setResult(voucherResultComponent.getVouchers());
        seed.setTotalSize(voucherResultComponent.getTotalCount());
        model.addAttribute("seed", seed);
        return "voucher/cash";
    }

    @RequestMapping(method = RequestMethod.POST, value = "create")
    public @ResponseBody
    ResponseComponent create(@RequestBody CashVoucher cashVoucher){
        cashVoucher.getVoucher().setCode("22222");
        cashVoucher.getVoucher().setType(VoucherType.CASH);
        cashVoucher.getVoucher().setStatus(VoucherStatus.CREATED);
        cashVoucher.getVoucher().setEffectiveStartTime(System.currentTimeMillis());
        cashVoucher.getVoucher().setEffectiveEndTime(System.currentTimeMillis());
        MerchantUser user = new MerchantUser();
        user.setName("12");
        user.setId(1l);
        user.setMerchant(new Merchant());
        voucherService.createCashVouchers(cashVoucher.getVoucher(), user);
        return new ResponseComponent();
    }
}
