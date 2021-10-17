/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Blogs;

/**
 *
 * @author admin
 */
public class BlogsDAO extends DBContext{
    
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Blogs getBlogByBlogID(int blogID){
        String sql ="Select * FROM Blogs Where blog_id=?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, blogID);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Blogs b = new Blogs();
                b.setBlogID(rs.getInt(1));
                b.setTitle(rs.getString(2));
                b.setDate(rs.getString(3));
                b.setImage(rs.getString(4));
                b.setDescription(rs.getString(5));
                return b;    
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    
    public List<Blogs> getAllBlogs(){
        List<Blogs> list = new ArrayList<>();
        String sql ="Select blog_id,title,date,image,description FROM Blogs";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Blogs bl = new Blogs();
                bl.setBlogID(rs.getInt(1));
                bl.setTitle(rs.getString(2));
                bl.setDate(rs.getString(3));
                bl.setImage(rs.getString(4));
                bl.setDescription(rs.getString(5));
                list.add(bl);
            }
        }catch(SQLException e){
            
        }
        return list;
    }
    public List<Blogs> getAllBlogsSearched(String name){
        List<Blogs> list = new ArrayList<>();
        String sql="Select [blog_id],[title],[date],[image],[description]\n"
                +"FROM [Blogs] where [title] like ? ";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + name + "%");
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new Blogs(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)));
            }
        }catch(SQLException e){
            
        }
        return list;
    }   
    public static void main(String[] args) {
        BlogsDAO bl = new BlogsDAO();
        List<Blogs> b = bl.getAllBlogsSearched("pe");
        System.out.println(b);
//        Blogs b = bl.getBlogByBlogID(1);
//        System.out.println(b);
//        List<Blogs> blog = bl.getAllBlogs();
//        System.out.println(blog);
    }
}
