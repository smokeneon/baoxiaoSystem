package leondon.dao;

import leondon.bean.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import java.sql.SQLException;
import java.util.List;

import leondon.utils.DataSourceUtils;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class UserDao {


    public boolean checkUser(String username) {

        User user = null;
        try {

            QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
            String sql = "select * from user where username = ?";
            user = queryRunner.query(sql, new BeanHandler<User>(User.class), username);
            if (user==null){
                return  true;
            }else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
    public User findUserByUid(String username) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from user where username =?";
        User user=queryRunner.query(sql, new BeanHandler<User>(User.class),username);
        return  user;

    }

    public List<User> findUserList() throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        return queryRunner.query("select * from user ", new BeanListHandler<User>(User.class));
    }

    public int addUser(User user) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        return queryRunner.update("insert into user(username,password,user_num,user_name,work_city,office_num,department_num,director_name,process_num,role,user_telephone,alipay) values(?,?,?,?,?,?,?,?,?,?,?,?)", user.getUsername(),user.getPassword(),user.getUser_num(),user.getUser_name(),user.getWork_city(),user.getOffice_num(),user.getDepartment_num(),user.getDirector_name(),user.getProcess_num(),user.getRole(),user.getUser_telephone(),user.getAlipay());
    }


    public int updateUser(User user) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "update user set user_num = ? , user_name = ? ,work_city = ? ,office_num = ?,department_num = ?,director_name = ? , process_num = ?, password = ? ,role = ?,user_telephone = ?, alipay = ? where username = ?";
        int result = queryRunner.update(sql,user.getUser_num(),user.getUser_name(),user.getWork_city(),user.getOffice_num(),user.getDepartment_num(),user.getDirector_name(),user.getProcess_num(),user.getPassword(),user.getRole(),user.getUser_telephone(),user.getAlipay(),user.getUsername());
        return result;
    }

    public int deleteUser(String username) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        int update = queryRunner.update("delete from user where username = ?", username);
        return  update;
    }


    public int deleteExpense(String expense_num) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        int deleteResult = queryRunner.update("delete from expense where expense_num = ?", expense_num);
        return  deleteResult;
    }
}
