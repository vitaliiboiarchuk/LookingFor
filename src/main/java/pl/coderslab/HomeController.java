package pl.coderslab;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.Admin.CurrentUser;
import pl.coderslab.Admin.User;
import pl.coderslab.Admin.UserRepository;
import pl.coderslab.Category.CategoryRepository;
import pl.coderslab.Event.EventRepository;

import java.time.LocalDate;

@Controller
public class HomeController {

    private final EventRepository eventRepository;
    private final CategoryRepository categoryRepository;
    private final UserRepository userRepository;

    public HomeController(EventRepository eventRepository, CategoryRepository categoryRepository, UserRepository userRepository) {
        this.eventRepository = eventRepository;
        this.categoryRepository = categoryRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("/")
    public String dashboard(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("concerts", eventRepository.countAllByCategoryAndDate(categoryRepository.getById(1L), LocalDate.now().toString()));
        model.addAttribute("parties", eventRepository.countAllByCategoryAndDate(categoryRepository.getById(2L), LocalDate.now().toString()));
        model.addAttribute("festivals", eventRepository.countAllByCategoryAndDate(categoryRepository.getById(3L), LocalDate.now().toString()));
        model.addAttribute("theatre", eventRepository.countAllByCategoryAndDate(categoryRepository.getById(4L), LocalDate.now().toString()));
        model.addAttribute("exhibitions", eventRepository.countAllByCategoryAndDate(categoryRepository.getById(5L), LocalDate.now().toString()));
        model.addAttribute("movies", eventRepository.countAllByCategoryAndDate(categoryRepository.getById(6L), LocalDate.now().toString()));
        return "dashboard";
    }


}
