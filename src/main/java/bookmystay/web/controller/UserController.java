package bookmystay.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {


    @RequestMapping(value = "/LoginPage.html", method = RequestMethod.GET)
    public ModelAndView login() {
        return new ModelAndView("/User/LoginPage", "command", null);
    }

    @RequestMapping(value = "/HomeView.html", method = RequestMethod.GET)
    public ModelAndView homeView() {
        return new ModelAndView("/User/HomeView", "command", null);
    }

    @RequestMapping(value = "/ForgotPasswordView.html", method = RequestMethod.GET)
    public ModelAndView forgotPassword() {
        return new ModelAndView("/User/ForgotPasswordView", "command", null);
    }

    @RequestMapping(value = "/ContactView.html", method = RequestMethod.GET)
    public ModelAndView contactView() {
        return new ModelAndView("/User/ContactView", "command", null);
    }

    @RequestMapping(value = "/ReservationDetailView.html", method = RequestMethod.GET)
    public ModelAndView reservationDetailView() {
        return new ModelAndView("/User/ReservationDetailView", "command", null);
    }

    @RequestMapping(value = "/SignUp.html", method = RequestMethod.GET)
    public ModelAndView signUp() {
        return new ModelAndView("/User/SignUp", "command", null);
    }

    @RequestMapping(value = "/ReservationView.html", method = RequestMethod.GET)
    public ModelAndView reservationView() {
        return new ModelAndView("/User/ReservationView", "command", null);
    }

    @RequestMapping(value = "/AmenitiesView.html", method = RequestMethod.GET)
    public ModelAndView amenitiesView() {
        return new ModelAndView("/User/AmenitiesView", "command", null);
    }

    @RequestMapping(value = "/ReservationConfirmView.html", method = RequestMethod.GET)
    public ModelAndView reservationConfirmView() {
        return new ModelAndView("/User/ReservationConfirmView", "command", null);
    }

    @RequestMapping(value = "/ReservationSelectionView.html", method = RequestMethod.GET)
    public ModelAndView reservationSelectionView() {
        return new ModelAndView("/User/ReservationSelectionView", "command", null);
    }

}
