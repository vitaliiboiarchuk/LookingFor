package pl.coderslab.Admin;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.Event.Event;
import pl.coderslab.Job.Job;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    @Query("select u from User u where u.job = ?1 order by u.name asc")
    List<User> findAllByJobIdQuery(Job job);

}
