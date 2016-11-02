package bookmystay.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class StaticPageController {
	

	
    @GetMapping("/AdminHomeView.html")
    public ModelAndView home() {


        return new ModelAndView("Admin/AdminHomeView", "command", null);
    }


    @GetMapping("/AdminOverview.html")
    public ModelAndView adminOverview() {


        return new ModelAndView("Admin/AdminOverviewView", "command", null);
    }



    @GetMapping("/adminContentManagement.html")
    public ModelAndView adminContentManagement() {


        return new ModelAndView("Admin/AdminContentManagementView", "command", null);
    }


    @GetMapping("/adminFeedbackManagement.html")
    public ModelAndView adminFeedbackManagement() {


        return new ModelAndView("Admin/AdminFeedbackManagementView", "command", null);
    }


    @GetMapping("/AdminReports.html")
    public ModelAndView adminReports() {


        return new ModelAndView("Admin/AdminReportsView", "command", null);
    }

    @GetMapping(value = "/AdminManageReservation.html")
    public ModelAndView adminManageReservation() {


        return new ModelAndView("Admin/AdminManageReservationView", "command", null);
    }


    @GetMapping( "/AdminRateCategory.html")
    public ModelAndView adminRateCategory() {


        return new ModelAndView("Admin/AdminRateCategory", "command",null);
    }

}
