/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author trung
 */
public class Student {
   private int sid ;
   private String name;
   private int gender ;
   private String dob ;
   private int did;

    public Student() {
    }

    public Student(int sid, String name, int gender, String dob, int did) {
        this.sid = sid;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
        this.did = did;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    @Override
    public String toString() {
        return "Student{" + "sid=" + sid + ", name=" + name + ", gender=" + gender + ", dob=" + dob + ", did=" + did + '}';
    }
   
   
}
