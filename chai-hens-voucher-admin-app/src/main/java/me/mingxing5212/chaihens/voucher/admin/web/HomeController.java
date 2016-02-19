package me.mingxing5212.chaihens.voucher.admin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * HomeController
 *
 * @author Mingxing Li
 * @date 31/1/16
 */
@Controller
@RequestMapping(value = "/admin")
public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        return "index";
    }
}
