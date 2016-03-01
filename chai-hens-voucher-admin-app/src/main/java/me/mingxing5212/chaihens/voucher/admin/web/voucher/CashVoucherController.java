package me.mingxing5212.chaihens.voucher.admin.web.voucher;

import me.mingxing5212.chaihens.domain.Voucher;
import me.mingxing5212.chaihens.voucher.admin.service.voucher.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

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
    public String index(){
        List<Voucher> voucherList = voucherService.getDraftCashVouchers(1l);
        return "voucher/cash";
    }


}
