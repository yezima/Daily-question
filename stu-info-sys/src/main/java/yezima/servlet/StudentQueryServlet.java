package yezima.servlet;

import yezima.dao.StudentDAO;
import yezima.model.Page;
import yezima.model.Student;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet("/student/query")
public class StudentQueryServlet extends AbstractBaseServlet {
    @Override
    protected Object process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        Page p = Page.parse(req);
        List<Student> students = StudentDAO.query(p);
        return students;
    }
}
