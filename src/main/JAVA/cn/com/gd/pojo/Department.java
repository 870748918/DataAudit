package cn.com.gd.pojo;

import org.springframework.stereotype.Service;

/**
 * Created by AMD on 2017/7/05 0005.
 */
public class Department {
    private String depID;
    private String depName;
    private String userID;
    private String userName;
    private String contract;
    private String email;
    public String getDepID() {
        return depID;
    }
    public void setDepID(String depID) {
        this.depID = depID;
    }
    public String getDepName() {
        return depName;
    }
    public void setDepName(String depName) {
        this.depName = depName;
    }
    public String getUserID() {
        return userID;
    }
    public void setUserID(String userID) {
        this.userID = userID;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getContract() {
        return contract;
    }
    public void setContract(String contract) {
        this.contract = contract;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    @Override
    public String toString() {
        return "Department [depID=" + depID + ", depName=" + depName + ", userID="
                + userID + ", userName=" + userName + ", contract=" + contract
                + ", email=" + email + "]";
    }

}