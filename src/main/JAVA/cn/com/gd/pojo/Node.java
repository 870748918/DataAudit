package cn.com.gd.pojo;

import org.springframework.stereotype.Service;

/**
 * Created by AMD on 2017/7/05 0005.
 */
public class Node {
    private int nodeID;
    private String nodeName;
    private String ipAdress;
    private String userName;
    private String branchName;
    public int getNodeID() {
        return nodeID;
    }
    public void setNodeID(int nodeID) {
        this.nodeID = nodeID;
    }
    public String getNodeName() {
        return nodeName;
    }
    public void setNodeName(String nodeName) {
        this.nodeName = nodeName;
    }
    public String getIpAdress() {
        return ipAdress;
    }
    public void setIpAdress(String ipAdress) {
        this.ipAdress = ipAdress;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getBranchName() {
        return branchName;
    }
    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }
    @Override
    public String toString() {
        return "Node [nodeID=" + nodeID + ", nodeName=" + nodeName
                + ", ipAdress=" + ipAdress + ", userName=" + userName
                + ", branchName=" + branchName + "]";
    }



}