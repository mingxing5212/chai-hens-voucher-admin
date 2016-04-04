package me.mingxing5212.chaihens.voucher.admin.utils;

/**
 *
 *  代码生成器
 * @author Mingxing Li
 * @date 4/4/16
 */
public class VoucherCodeGenerator {
    public static String generateVoucherCode(){
        IdWorker worker = new IdWorker(2);
        return String.format("%s", worker.nextId());
    }
}
