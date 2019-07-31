package leondon.service;

import leondon.bean.Expense;
import leondon.dao.ApprovalDao;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-5-7上午10:40
 * @Version 1.0
 * 审批管理service
 */

public class ApprovalService {

    public List<Expense> approvalList(String office_num) throws SQLException {
        ApprovalDao approvalDao = new ApprovalDao();
        return  approvalDao.approvalList(office_num);
    }

    public int changeShenpiStatus(String expense_num,int agreeStatus) throws SQLException {
        ApprovalDao approvalDao = new ApprovalDao();
        return approvalDao.changeShenpiStatus(expense_num,agreeStatus);

    }
}
