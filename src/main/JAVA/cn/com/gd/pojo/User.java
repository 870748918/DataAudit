package cn.com.gd.pojo;

/**
 * Created by AMD on 2017/7/05 0005.
 */
public class User {
    private String userID;//员工编号
    private String userName;//用户名
    private String userPass;//用户密码
    private String reUserPass;//重复密码
    private String depID;//部门编号
    private String depName;//部门名称
    private String conTract;//员工的联系方式
    private String email;//员工的电子邮箱
    private String loginTime;//员工的登陆时间
    private String verifyCode;//验证码
    private String registTime;//注册时间
    private Authorize authorize;//权限

    public String getUserID() {
        return userID;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserPass() {
        return userPass;
    }

    public String getReUserPass() {
        return reUserPass;
    }

    public String getDepID() {
        return depID;
    }

    public String getDepName() {
        return depName;
    }

    public String getConTract() {
        return conTract;
    }

    public String getEmail() {
        return email;
    }

    public String getLoginTime() {
        return loginTime;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public String getRegistTime() {
        return registTime;
    }

    public Authorize getAuthorize() {
        return authorize;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public void setReUserPass(String reUserPass) {
        this.reUserPass = reUserPass;
    }

    public void setDepID(String depID) {
        this.depID = depID;
    }

    public void setDepName(String depName) {
        this.depName = depName;
    }

    public void setConTract(String conTract) {
        this.conTract = conTract;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setLoginTime(String loginTime) {
        this.loginTime = loginTime;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public void setRegistTime(String registTime) {
        this.registTime = registTime;
    }

    public void setAuthorize(Authorize authorize) {
        this.authorize = authorize;
    }

    @Override
    public String toString() {
        return "User{" +
                "userID='" + userID + '\'' +
                ", userName='" + userName + '\'' +
                ", userPass='" + userPass + '\'' +
                ", reUserPass='" + reUserPass + '\'' +
                ", depID='" + depID + '\'' +
                ", depName='" + depName + '\'' +
                ", conTract='" + conTract + '\'' +
                ", email='" + email + '\'' +
                ", loginTime='" + loginTime + '\'' +
                ", verifyCode='" + verifyCode + '\'' +
                ", registTime='" + registTime + '\'' +
                ", authorize=" + authorize +
                '}';
    }
}
