/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author trung
 */
public class Course {
    private int id;
    private String name;
    private String image ;
    private double price;
    private String comment;
    private String descrption ;

    public Course() {
    }

    public Course(int id, String name, String image, double price, String comment, String descrption) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.comment = comment;
        this.descrption = descrption;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getDescrption() {
        return descrption;
    }

    public void setDescrption(String descrption) {
        this.descrption = descrption;
    }

    @Override
    public String toString() {
        return "Course{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", comment=" + comment + ", descrption=" + descrption + '}';
    }
    
}
