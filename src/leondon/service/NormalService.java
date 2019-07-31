package leondon.service;

import leondon.bean.CreateExpenseMessage;
import leondon.bean.Expense;
import leondon.dao.CreateExpenseDao;
import leondon.dao.NormalDao;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-22下午6:09
 * @Version 1.0
 */
public class NormalService {

    public CreateExpenseMessage getCreateExpenseMessage(String username) throws SQLException {
        CreateExpenseDao createExpenseMessageDao = new CreateExpenseDao();
        CreateExpenseMessage createExpenseMessage = createExpenseMessageDao.getCreateExpenseMessage(username);
        return createExpenseMessage;
    }

    public boolean createExpense(Expense expense) throws SQLException {
        CreateExpenseDao createExpenseDao = new CreateExpenseDao();
        int result = createExpenseDao.createExpense(expense);
        if (result > 0) {
            return true;
        }
        return false;
    }


    public List<Expense> myExpenseList(String usernameid) throws SQLException {
        CreateExpenseDao createExpenseDao = new CreateExpenseDao();
                return  createExpenseDao.myExpenseList(usernameid);
        }

    public boolean submitShenPi(String expense_num) throws SQLException {
        NormalDao normalDao = new NormalDao();
        int result = normalDao.submitShenPi(expense_num);
        if (result>0) {
            return true;
        }
        return false;

    }

    public boolean updateExpenseAddFile(String expense_num,String filename) throws SQLException {
        System.out.println("normal service updateExpenseAddFile"+expense_num+filename);
        NormalDao normalDao = new NormalDao();
        int flagInt = normalDao.updateExpenseFile(expense_num,filename);
        if(flagInt > 0) {return true;}
        return  false;
    }
}
