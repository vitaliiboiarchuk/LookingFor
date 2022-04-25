package pl.coderslab.Admin;

public interface UserService {
    User findByUserName(String name);

    void saveUser(User user);
}
