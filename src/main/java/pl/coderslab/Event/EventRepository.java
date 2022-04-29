package pl.coderslab.Event;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.Admin.User;
import pl.coderslab.Category.Category;
import pl.coderslab.City.City;



import java.util.List;


public interface EventRepository extends JpaRepository<Event, Long> {

    long countAllByCategoryAndDate(Category category, String date);

    List<Event> findAllByCategoryAndDate(Category category, String date);

    @Query("select e from Event e where e.city = ?1 and e.date between ?2 and ?3 order by e.date asc")
    List<Event> findAllByCityByDateBetweenDate1AndDate2(City city, String date1, String date2);

    @Query("select e from Event e where e.category = ?1 and e.date between ?2 and ?3 order by e.date asc")
    List<Event> findAllByCategoryByDateBetweenDate1AndDate2(Category category, String date1, String date2);

    @Query("select e from Event e where e.user = ?1 order by e.date asc")
    List<Event> findAllMyEvents(User user);

    List<Event> getAllByArtistsOrderByDateAsc(User user);

    List<Event> getFirst5AllByArtistsOrderByDateAsc(User user);

}


