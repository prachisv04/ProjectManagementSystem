

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.util.Date;
import java.sql.ResultSet;
 
@MultipartConfig
/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		final Part filePart = request.getPart("file");
        String id = request.getParameter("gid");
        System.out.println("HEY");
        InputStream pdfFileBytes = null;
        final PrintWriter writer = response.getWriter();
 
        try {
        	String guide="";
        	System.out.println("HEY2");
          if (!filePart.getContentType().equals("application/pdf"))
            {
                       writer.println("<br/> Invalid File");
                       return;
            }
 
           else if (filePart.getSize()>1048576 ) { //2mb
               {
              writer.println("<br/> File size too big");
              return;
               }
           }
          System.out.println("HEY4");
          	
            pdfFileBytes = filePart.getInputStream();  // to get the body of the request as binary data
 
            final byte[] bytes = new byte[pdfFileBytes.available()];
             pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
             System.out.print("HHHEEEYYY");
            
             Connection  con=null;
             Statement st=null;
             System.out.print("HEY1");
             
             
            
               try {
                     Class.forName("com.mysql.jdbc.Driver");
                     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
                     st=con.createStatement();
                     System.out.print("CONNECTION DONE");
               } catch (Exception e) {
                        System.out.println(e);
                        System.exit(0);
                              }
                int success=0;
                
               java.sql.ResultSet rs= st.executeQuery("select Guide_id from association where group_id='"+id+"'");
               		if(rs.next())
               		{
               			guide=rs.getString(1);
               		}
               PreparedStatement pstmt = con.prepareStatement("INSERT INTO Submission VALUES(?,?,?)");
               pstmt.setString(1, id);
               pstmt.setString(2, guide);
               pstmt.setBytes(3,bytes);    //Storing binary data in blob field.
              
                success = pstmt.executeUpdate();
                if(success>=1)  System.out.println("Data Stored");
                con.close(); 
 
                 writer.println("<br/> Successfully Stored");
 
        } catch (FileNotFoundException fnf) {
            writer.println("You  did not specify a file to upload");
            writer.println("<br/> ERROR: " + fnf.getMessage());
 
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
 
            if (pdfFileBytes != null) {
                pdfFileBytes.close();
            }
            if (writer != null) {
                writer.close();
            }
        }
 
    }
	}




