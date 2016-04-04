package me.mingxing5212.chaihens.voucher.admin.web.voucher;

import me.mingxing5212.chaihens.component.VoucherResultComponent;
import me.mingxing5212.chaihens.domain.*;
import me.mingxing5212.chaihens.eggs.Seed;
import me.mingxing5212.chaihens.eggs.annotation.SeedParam;
import me.mingxing5212.chaihens.voucher.admin.service.voucher.VoucherService;
import me.mingxing5212.chaihens.voucher.admin.utils.VoucherCodeGenerator;
import me.mingxing5212.chaihens.voucher.admin.web.BaseController;
import me.mingxing5212.chaihens.voucher.admin.web.ResponseComponent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * 代金券
 *
 * @author Mingxing Li
 * @date 21/2/16
 */
@Controller
@RequestMapping(value = "vouchers/cash")
public class CashVoucherController extends BaseController {

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
    public @ResponseBody ResponseComponent create(@RequestBody CashVoucher cashVoucher){
        cashVoucher.getVoucher().setCode(VoucherCodeGenerator.generateVoucherCode());
        cashVoucher.getVoucher().setType(VoucherType.CASH);
        cashVoucher.getVoucher().setStatus(VoucherStatus.CREATED);
        cashVoucher.getVoucher().setStore(getSessionStore());
        voucherService.createCashVoucher(cashVoucher.getVoucher(), getSessionMerchantUser());
        return new ResponseComponent();
    }

    @RequestMapping(method = RequestMethod.POST, value = "update")
    public @ResponseBody ResponseComponent update(@RequestBody CashVoucher cashVoucher){
        voucherService.updateCashVoucher(cashVoucher.getVoucher(), getSessionMerchantUser());
        return new ResponseComponent();
    }

    @RequestMapping(method = RequestMethod.POST, value = "delete")
    public @ResponseBody ResponseComponent delete(@RequestParam Long voucherId){
        voucherService.deleteCashVoucher(voucherId, getSessionMerchantUser());
        return new ResponseComponent();
    }
}
