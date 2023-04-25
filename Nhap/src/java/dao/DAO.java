/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.DBContext;
import entity.Student;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trung
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Student> getAllStudent() {
        List<Student> list = new ArrayList<>();
        String query = "  SELECT * FROM Student \n"
                + "INNER JOIN Dept ON Student.did = Dept.did;";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Student(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Student> list = dao.getAllStudent();
        for (Student s : list) {
            System.out.println(s);
        }

    }
}
