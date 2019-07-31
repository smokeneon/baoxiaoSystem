package leondon.dao;

import leondon.bean.CreateExpenseMessage;
import leondon.bean.Expense;
import leondon.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.jms.Session;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-22下午6:12
 * @Version 1.0
 */
public class CreateExpenseDao {

    public CreateExpenseMessage getCreateExpenseMessage(String username) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select office_name,department_name from user,office,department where user.office_num = office.office_num and user.department_num = department.department_num and username = ?";
        CreateExpenseMessage query = queryRunner.query(sql, new BeanHandler<CreateExpenseMessage>(CreateExpenseMessage.class), username);
        return query;
    }


    public int createExpense(Expense expense) throws SQLException {
        //添加报销单号
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
//        String format = dateFormat.format(new Date());
//        String expense_num = "BXD_"+expense.getUsername()+format;
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "insert into expense(create_current_date,create_consumption_date,create_cost_category,create_fee,create_invoice_type,create_reimbursement_reasons,create_file,username,expense_num) values(?,?,?,?,?,?,?,?,?)";
        int result = queryRunner.update(sql,expense.getCreate_current_date(),expense.getCreate_consumption_date(),expense.getCreate_cost_category(),expense.getCreate_fee(),expense.getCreate_invoice_type(),expense.getCreate_reimbursement_reasons(),expense.getCreate_file(),expense.getUsername(),expense.getExpense_num());
        return  result;
    }

    public List<Expense> myExpenseList(String usernameid) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        return queryRunner.query("select * from expense where username=? ", new BeanListHandler<Expense>(Expense.class),usernameid);
    }
}
