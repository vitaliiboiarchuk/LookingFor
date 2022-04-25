package pl.coderslab.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.Job.JobRepository;

import javax.validation.Valid;

@Controller
public class LoginController {

    private final UserService userService;

    private final JobRepository jobRepository;

    public LoginController(UserService userService, JobRepository jobRepository) {
        this.userService = userService;
        this.jobRepository = jobRepository;
    }


    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)

    public String login(@Valid User user, Model model) {
        model.addAttribute("user",user);
        return "admin/login";
    }


    @RequestMapping(value = {"/registration"}, method = RequestMethod.GET)

    public String registration(Model model) {
        model.addAttribute("user",new User());
        model.addAttribute("jobs",jobRepository.findAll());
        return "admin/registration";
    }


    @RequestMapping(value = {"/registration"}, method = RequestMethod.POST)

    public String registrationPost(@Valid User user, BindingResult bindingResult,  Model model) {
        User userExists = userService.findByUserName(user.getUsername());
        if (userExists != null) {
            bindingResult.rejectValue("username", "error.user",
                    "Użytkownik z taką nazwą już istnieje");
        }
        if (user.getUsername().isEmpty()) {
            bindingResult.rejectValue("username","error.user","Pole nie może być puste");
        }
        if (user.getPassword().isEmpty()) {
            bindingResult.rejectValue("password","error.user","Pole nie może być puste");

        }
        if (bindingResult.hasErrors()) {
            model.addAttribute("jobs",jobRepository.findAll());
            return "admin/registration";
        } else {
            userService.saveUser(user);
            model.addAttribute("user",user.getUsername());
            return "success";
        }
    }

}


