package DataAccessLayer;

import Model.User;

/**
 * The purpose of UserMapper is to...
 * @author kasper
 */
public class UserMapper {
    public User getUserByName(String name){
        String sql = "select * from User where name=?";
        ///....
        return null;
    }
}
