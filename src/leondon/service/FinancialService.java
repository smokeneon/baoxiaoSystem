package leondon.service;

import leondon.bean.Expense;
import leondon.dao.FinancialDao;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-5-7下午11:51
 * @Version 1.0
 */
public class FinancialService {
    public List<Expense> financialList() throws SQLException {
        FinancialDao approvalDao = new FinancialDao();
        return approvalDao.financialList();
    }

    public Expense findExpenseByExpenseNum(String expense_num) throws SQLException {
        return FinancialDao.findExpenseByExpenseNum(expense_num);
    }

    public int changePayStatus(String expense_num, int payStatus2) throws SQLException {
        FinancialDao financialDao = new FinancialDao();
        return  financialDao.changePayStatus(expense_num,payStatus2);

    }
}
