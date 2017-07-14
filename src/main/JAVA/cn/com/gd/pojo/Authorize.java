package cn.com.gd.pojo;

import org.springframework.stereotype.Service;

/**
 * Created by AMD on 2017/7/05 0005.
 */
public class Authorize {

    private String userID;
    private int userManage;
    private int depManage;
    private int nodeManage;

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public void setUserManage(int userManage) {
        this.userManage = userManage;
    }

    public void setDepManage(int depManage) {
        this.depManage = depManage;
    }

    public void setNodeManage(int nodeManage) {
        this.nodeManage = nodeManage;
    }

    public String getUserID() {

        return userID;
    }

    public int getUserManage() {
        return userManage;
    }

    public int getDepManage() {
        return depManage;
    }

    public int getNodeManage() {
        return nodeManage;
    }

    @Override
    public String toString() {
        return "Authorize{" +
                "userID='" + userID + '\'' +
                ", userManage=" + userManage +
                ", depManage=" + depManage +
                ", nodeManage=" + nodeManage +
                '}';
    }
}
