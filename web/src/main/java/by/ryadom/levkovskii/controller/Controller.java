package by.ryadom.levkovskii.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Сергей on 08.08.2017.
 */
@org.springframework.stereotype.Controller
public class Controller {

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String welcome() {
        return "index";
    }
}
