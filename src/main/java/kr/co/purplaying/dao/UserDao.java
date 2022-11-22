package kr.co.purplaying.dao;

import java.util.List;
import java.util.Map;
import kr.co.purplaying.domain.BoardDto;
import kr.co.purplaying.domain.UserDto;

public interface UserDao {


    int updateName(UserDto userDto) throws Exception;
    UserDto selectUser(String user_id) throws Exception;
    int deleteAll() throws Exception ;
    int count() throws Exception;
    int insertUser(UserDto userDto) throws Exception;
    int signUpUser(String user_id, String user_pwd, String user_name, String user_phone) throws Exception;
    int userCheck(int user_no,boolean agree1,boolean agree2,boolean agree3,boolean agree4, boolean agree5) throws Exception;
    UserDto searchUser_no(String user_id) throws Exception;
    int updateUserActivate(int user_no) throws Exception;
    int findUserData(UserDto userDto) throws Exception;
    String findUserId(UserDto userDto) throws Exception;
    int updateUserPwd(UserDto userDto) throws Exception;

}