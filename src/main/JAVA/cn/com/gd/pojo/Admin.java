package cn.com.gd.pojo;

/**
 * Created by AMD on 2017/7/05 0005.
 */
public class Admin {
    String userID;//账号
    String userName;//用户名
    String userPass;//密码

    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getUserID() {
        return userID;
    }
    public void setUserID(String userID) {
        this.userID = userID;
    }
    public String getUserPass() {
        return userPass;
    }
    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }
    @Override
    public String toString() {
        return "Admin [userID=" + userID + ", userPass=" + userPass + "]";
    }


}