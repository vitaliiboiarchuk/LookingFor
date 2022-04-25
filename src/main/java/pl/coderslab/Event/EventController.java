package pl.coderslab.Event;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.Admin.CurrentUser;
import pl.coderslab.Admin.User;
import pl.coderslab.Admin.UserRepository;
import pl.coderslab.Category.CategoryRepository;
import pl.coderslab.City.CityRepository;
import pl.coderslab.Job.JobRepository;


import javax.validation.Valid;
import java.time.LocalDate;
import java.time.LocalTime;

@Controller
@RequestMapping("/event")

public class EventController {

    private final EventRepository eventRepository;

    private final CategoryRepository categoryRepository;

    private final CityRepository cityRepository;

    private final UserRepository userRepository;

    private final JobRepository jobRepository;


    public EventController(EventRepository eventRepository, CategoryRepository categoryRepository, CityRepository cityRepository, UserRepository userRepository, JobRepository jobRepository) {
        this.eventRepository = eventRepository;
        this.categoryRepository = categoryRepository;
        this.cityRepository = cityRepository;
        this.userRepository = userRepository;
        this.jobRepository = jobRepository;
    }

    @Secured("ROLE_ADMIN")
    @GetMapping("/deleteAll")
    public String deleteAll() {
        eventRepository.deleteAll();
        return "redirect:/event/all";
    }


    @Secured("ROLE_USER")
    @GetMapping("/add")
    public String eventForm(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        User entityUser = currentUser.getUser();
        model.addAttribute("categories", categoryRepository.findAll());
        model.addAttribute("cities", cityRepository.findAll());
        model.addAttribute("user", userRepository.getById(entityUser.getId()));
        model.addAttribute("event", new Event());
        model.addAttribute("users", userRepository.findAllByJobIdQuery(jobRepository.getById(2L)));

        if (entityUser.getJob().getId() == 2L) {
            return "403";
        }
        return "add";
    }

    @Secured("ROLE_USER")
    @PostMapping("/add")
    public String eventAdd(@AuthenticationPrincipal CurrentUser currentUser, @Valid Event event, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("categories", categoryRepository.findAll());
            model.addAttribute("cities", cityRepository.findAll());
            model.addAttribute("users", userRepository.findAllByJobIdQuery(jobRepository.getById(2L)));
            return "add";
        }
        LocalDate localDate = LocalDate.parse(event.getDate());
        LocalTime localTime = LocalTime.parse(event.getTime());

        if (localDate.isBefore(LocalDate.now())) {
            model.addAttribute("categories", categoryRepository.findAll());
            model.addAttribute("cities", cityRepository.findAll());
            model.addAttribute("users", userRepository.findAllByJobIdQuery(jobRepository.getById(2L)));
            result.rejectValue("date", "FutureOrPresent.message", "Nieprawidłowa data");
            return "add";
        }
        eventRepository.save(event);
        model.addAttribute("id", event.getId());
        model.addAttribute("event", event);
        User entityUser = currentUser.getUser();
        if (entityUser.getJob().getId() == 1L) {
            model.addAttribute("show", true);
        }

        return "showMyEvents";
    }

    @GetMapping("/city")
    public String city(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        return "city";
    }

    @Secured("ROLE_ADMIN")
    @GetMapping("/all")
    public String all(Model model) {
        model.addAttribute("events", eventRepository.findAllByOrderByDateAsc());
        return "all";
    }


    @GetMapping("/concerts")
    public String concerts(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCategoryByDateBetweenDate1AndDate2(categoryRepository.getById(1L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/concerts/today")
    public String concertsToday(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("events", eventRepository.findAllByCategoryAndDate(categoryRepository.getById(1L), LocalDate.now().toString()));

        return "all";
    }

    @GetMapping("/parties")
    public String parties(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCategoryByDateBetweenDate1AndDate2(categoryRepository.getById(2L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/parties/today")
    public String partiesToday(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("events", eventRepository.findAllByCategoryAndDate(categoryRepository.getById(2L), LocalDate.now().toString()));
        return "all";
    }

    @GetMapping("/festivals")
    public String festivals(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCategoryByDateBetweenDate1AndDate2(categoryRepository.getById(3L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/festivals/today")
    public String festivalsToday(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("events", eventRepository.findAllByCategoryAndDate(categoryRepository.getById(3L), LocalDate.now().toString()));
        return "all";
    }

    @GetMapping("/theatre")
    public String theatre(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCategoryByDateBetweenDate1AndDate2(categoryRepository.getById(4L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/theatre/today")
    public String theatreToday(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("events", eventRepository.findAllByCategoryAndDate(categoryRepository.getById(4L), LocalDate.now().toString()));
        return "all";
    }

    @GetMapping("/exhibitions")
    public String exhibitions(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCategoryByDateBetweenDate1AndDate2(categoryRepository.getById(5L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/exhibitions/today")
    public String exhibitionsToday(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("events", eventRepository.findAllByCategoryAndDate(categoryRepository.getById(5L), LocalDate.now().toString()));
        return "all";
    }

    @GetMapping("/movies")
    public String movies(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCategoryByDateBetweenDate1AndDate2(categoryRepository.getById(6L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/movies/today")
    public String moviesToday(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("events", eventRepository.findAllByCategoryAndDate(categoryRepository.getById(6L), LocalDate.now().toString()));
        return "all";
    }

    @GetMapping("/warsaw")
    public String warsaw(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCityByDateBetweenDate1AndDate2(cityRepository.getById(1L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/krakow")
    public String krakow(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCityByDateBetweenDate1AndDate2(cityRepository.getById(2L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/gdansk")
    public String gdansk(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCityByDateBetweenDate1AndDate2(cityRepository.getById(3L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/wroclaw")
    public String wroclaw(@AuthenticationPrincipal CurrentUser currentUser, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        LocalDate date = LocalDate.now();
        LocalDate after = date.plusYears(1);
        model.addAttribute("events", eventRepository.findAllByCityByDateBetweenDate1AndDate2(cityRepository.getById(4L), date.toString(), after.toString()));
        return "all";
    }

    @GetMapping("/show/{id}")
    public String show(@AuthenticationPrincipal CurrentUser currentUser, @PathVariable long id, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("event", eventRepository.getById(id));
        return "show";
    }

    @GetMapping("/eventManager/{id}")
    public String eventManager(@AuthenticationPrincipal CurrentUser currentUser, @PathVariable long id, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("manager", userRepository.getById(id));
        return "eventManager";
    }

    @GetMapping("/artist/{id}")
    public String artist(@AuthenticationPrincipal CurrentUser currentUser, @PathVariable long id, Model model) {
        if (currentUser != null) {
            User entityUser = currentUser.getUser();
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
        }
        model.addAttribute("artist", userRepository.getById(id));
        model.addAttribute("events", eventRepository.getFirst5AllByArtistsOrderByDateAsc(userRepository.getById(id)));
        return "artist";
    }

    @Secured("ROLE_USER")
    @GetMapping("/showMyEvents/{id}")
    public String showMyEvents(@AuthenticationPrincipal CurrentUser currentUser, @PathVariable long id, Model model) {

            User entityUser = currentUser.getUser();
            model.addAttribute("event", eventRepository.getById(id));
            model.addAttribute("user", userRepository.getById(entityUser.getId()));

            if (entityUser.getJob().getId() == 1L) {
                model.addAttribute("show", true);
            }
            return "showMyEvents";
            
    }

    @Secured("ROLE_USER")
    @GetMapping("/edit/{id}")
    public String edit(@AuthenticationPrincipal CurrentUser currentUser, @PathVariable long id, Model model) {
        User entityUser = currentUser.getUser();
        model.addAttribute("categories", categoryRepository.findAll());
        model.addAttribute("cities", cityRepository.findAll());
        model.addAttribute("event", eventRepository.findById(id));
        model.addAttribute("user", userRepository.getById(entityUser.getId()));
        model.addAttribute("users", userRepository.findAllByJobIdQuery(jobRepository.getById(2L)));

        if (entityUser.getId() != eventRepository.findById(id).get().getUser().getId()) {
            return "403";
        }
        return "edit";


    }

    @Secured("ROLE_USER")
    @PostMapping("/update")
    public String updateAdd(@AuthenticationPrincipal CurrentUser currentUser, @Valid Event event, BindingResult result, Model model) {

        User entityUser = currentUser.getUser();

        if (result.hasErrors()) {
            model.addAttribute("categories", categoryRepository.findAll());
            model.addAttribute("cities", cityRepository.findAll());
            model.addAttribute("users", userRepository.findAllByJobIdQuery(jobRepository.getById(2L)));
            model.addAttribute("user", userRepository.getById(entityUser.getId()));

            return "edit";
        }
        eventRepository.save(event);
        model.addAttribute("user", userRepository.getById(entityUser.getId()));
        model.addAttribute("id", event.getId());
        model.addAttribute("event", event);

        if (entityUser.getJob().getId() == 1L) {
            model.addAttribute("show", true);
        }
        return "showMyEvents";
    }

    @Secured("ROLE_USER")
    @GetMapping("/delete/{id}")
    public String deleteEvent(@AuthenticationPrincipal CurrentUser currentUser, @PathVariable long id, Model model) {
        User entityUser = currentUser.getUser();
        if (entityUser.getId().equals(eventRepository.findById(id).get().getUser().getId())) {
            eventRepository.deleteById(id);
            model.addAttribute("user", userRepository.getById(entityUser.getId()));
            return "deleted";
        }
        return "403";
    }
}
