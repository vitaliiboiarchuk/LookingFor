package pl.coderslab.Profile;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.Admin.CurrentUser;
import pl.coderslab.Admin.User;
import pl.coderslab.Admin.UserRepository;
import pl.coderslab.Admin.UserService;
import pl.coderslab.Event.EventRepository;

import javax.validation.Valid;


@Controller
public class ProfileController {

    private final UserRepository userRepository;

    private final EventRepository eventRepository;

    private final PasswordEncoder passwordEncoder;

    private final UserService userService;


    public ProfileController(UserRepository userRepository, EventRepository eventRepository, PasswordEncoder passwordEncoder, UserService userService) {
        this.userRepository = userRepository;
        this.eventRepository = eventRepository;
        this.passwordEncoder = passwordEncoder;
        this.userService = userService;
    }


    @Secured("ROLE_USER")
    @GetMapping("/profile")
    public String profile(@AuthenticationPrincipal CurrentUser customUser, Model model) {
        User entityUser = customUser.getUser();
        model.addAttribute("user", userRepository.getById(entityUser.getId()));
        return "profile";
    }

    @Secured("ROLE_USER")
    @PostMapping("/profile")
    public String profilePost(@Valid User user, BindingResult result, Model model) {

        if (!result.hasErrors()) {
            userRepository.save(user);
            model.addAttribute("user", user);
        }
        return "profile";
    }

    @Secured("ROLE_USER")
    @GetMapping("/newLogin")
    public String settings(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        User entityUser = currentUser.getUser();
        model.addAttribute("user", userRepository.getById(entityUser.getId()));
        return "newLogin";
    }

    @Secured("ROLE_USER")
    @PostMapping("/newLogin")
    public String settingsPost(@Valid User user, BindingResult result, Model model) {

        User userExists = userService.findByUserName(user.getUsername());
        if (userExists != null) {
            result.rejectValue("username", "error.user",
                    "Użytkownik z taką nazwą już istnieje");
        }
        if (user.getUsername().isEmpty()) {
            result.rejectValue("username","error.user","Pole nie może być puste");
        }
        if (result.hasErrors()) {
            return "newLogin";
        } else {
            userRepository.save(user);
            model.addAttribute("user", user);
            return "profile";
        }
    }

    @Secured("ROLE_USER")
    @GetMapping("/newPassword")
    public String newPassword(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        User entityUser = currentUser.getUser();
        model.addAttribute("user", userRepository.getById(entityUser.getId()));
        return "newPassword";
    }

    @Secured("ROLE_USER")
    @PostMapping("/newPassword")
    public String newPassPost(@Valid User user, BindingResult result, Model model) {

        if (user.getPassword().isEmpty()) {
            result.rejectValue("password","error.user","Pole nie może być puste");
        }

        if (result.hasErrors()) {
            return "newPassword";
        } else {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            userRepository.save(user);
            model.addAttribute("user", user);
            return "profile";
        }
    }

    @Secured("ROLE_USER")
    @GetMapping("/myEvents")
    public String myEvents(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        User entityUser = currentUser.getUser();
        model.addAttribute("user", userRepository.getById(entityUser.getId()));
        if (entityUser.getJob().getId() == 2L) {
            model.addAttribute("events",eventRepository.getAllByArtistsOrderByDateAsc(entityUser));
            model.addAttribute("show",false);
        } else {
            model.addAttribute("events", eventRepository.findAllMyEvents(userRepository.getById(entityUser.getId())));
            model.addAttribute("show",true);
        }
        return "myEvents";
    }


}
