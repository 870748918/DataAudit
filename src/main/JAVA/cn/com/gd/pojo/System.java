package cn.com.gd.pojo;

/**
 * Created by AMD on 2017/7/05 0005.
 */
public class System {
    private int staffID ;//登陆编号
    private String operTime;//操作时间
    private String operType;//操作类型  1:网络连接  2:网络断开 3:系统开启 4:系统关闭
    private String loginName;//登陆用户
    public int getStaffID() {
        return staffID;
    }
    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }
    public String getOperTime() {
        return operTime;
    }
    public void setOperTime(String operTime) {
        this.operTime = operTime;
    }
    public String getOperType() {
        return operType;
    }
    public void setOperType(String operType) {
        this.operType = operType;
    }
    public String getLoginName() {
        return loginName;
    }
    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }
    @Override
    public String toString() {
        return "System [staffID=" + staffID + ", operTime=" + operTime
                + ", operType=" + operType + ", loginName=" + loginName + "]";
    }


}
