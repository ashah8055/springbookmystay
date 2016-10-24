package bookmystay.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StaticPageController {

    @RequestMapping(value = "/AdminHomeView.html", method = RequestMethod.GET)
    public ModelAndView home() {


        return new ModelAndView("Admin/AdminHomeView", "command", null);
    }


    @RequestMapping(value = "/AdminOverview.html", method = RequestMethod.GET)
    public ModelAndView adminOverview() {


        return new ModelAndView("Admin/AdminOverviewView", "command", null);
    }



    @RequestMapping(value = "/adminContentManagement.html", method = RequestMethod.GET)
    public ModelAndView adminContentManagement() {


        return new ModelAndView("Admin/AdminContentManagementView", "command", null);
    }


    @RequestMapping(value = "/adminFeedbackManagement.html", method = RequestMethod.GET)
    public ModelAndView adminFeedbackManagement() {


        return new ModelAndView("Admin/AdminFeedbackManagementView", "command", null);
    }


    @RequestMapping(value = "/AdminReports.html", method = RequestMethod.GET)
    public ModelAndView adminReports() {


        return new ModelAndView("Admin/AdminReportsView", "command", null);
    }

    @RequestMapping(value = "/AdminManageReservation.html", method = RequestMethod.GET)
    public ModelAndView adminManageReservation() {


        return new ModelAndView("Admin/AdminManageReservationView", "command", null);
    }


    @RequestMapping(value = "/AdminRateCategory.html", method = RequestMethod.GET)
    public ModelAndView adminRateCategory() {


        return new ModelAndView("Admin/AdminRateCategory", "command",null);
    }

}
