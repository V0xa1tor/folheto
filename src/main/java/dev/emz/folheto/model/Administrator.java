package dev.emz.folheto.model;

public class Administrator {
    
    private String username = "";
    private String password = "";
    private String fullname = "";



    public Administrator() { }

    public Administrator(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Administrator(String username, String password, String fullname) {
        this(username, password);
        this.fullname = fullname;
    }

    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

}
