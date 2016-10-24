package bookmystay.web.controller;

import bookmystay.model.Room;
import bookmystay.model.dao.RoomDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller

public class AdminController
{

    @Autowired
    RoomDao roomManager;

    @RequestMapping(value = "/addRoom.html", method = RequestMethod.GET)
    public ModelAndView room() {
        return new ModelAndView("/Admin/Action/RoomAdd", "command", new Room());
    }

    @RequestMapping(value = "/addRoom1.html", method = RequestMethod.POST)

    public ModelAndView addRoom(@ModelAttribute("SpringWeb")Room room,
                                ModelMap model) {
        roomManager.addRoom(room);
        model.addAttribute("SpringWeb", roomManager.getAllRoom());
        return new ModelAndView("/Admin/Action/AdminViewRoom",model);
    }

    @RequestMapping(value = "/update.html", method = RequestMethod.GET)
    public ModelAndView roomUpdate(@RequestParam int id,ModelMap model) {
        Room room=roomManager.getRoomById(id);
        model.addAttribute("SpringWeb", room);
        return new ModelAndView("/Admin/Action/AdminEditRoom",model);
    }

    @RequestMapping(value = "/updateRoom.html", method = RequestMethod.POST)

    public ModelAndView updateRoom(@ModelAttribute("SpringWeb")Room room,
                                   ModelMap model) {
        roomManager.update(room);
        model.addAttribute("SpringWeb", roomManager.getAllRoom());
        return new ModelAndView("/Admin/Action/AdminViewRoom",model);
    }

}
