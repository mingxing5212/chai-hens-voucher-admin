package me.mingxing5212.chaihens.voucher.admin.web;

import me.mingxing5212.chaihens.domain.Merchant;
import me.mingxing5212.chaihens.domain.MerchantUser;
import me.mingxing5212.chaihens.domain.Store;

/**
 * Web层基类
 *
 * @author Mingxing Li
 * @date 4/4/16
 */
public class BaseController {
    protected MerchantUser getSessionMerchantUser(){
        MerchantUser user = new MerchantUser();
        user.setName("Admin");
        user.setId(1l);
        user.setMerchant(getSessionMerchant());
        return user;
    }

    protected Merchant getSessionMerchant(){
        Merchant merchant = new Merchant();
        merchant.setId(1l);
        return merchant;
    }

    protected Store getSessionStore(){
        Store store = new Store();
        store.setId(1l);
        return store;
    }
}
