package leondon.bean;

/**
 * @Autor:leondon
 * @Date:19-4-16上午8:35
 * @Version 1.0
 */
public class Department {
    private int department_id;//编号自增主键
    private String department_num;//部门编号
    private String department_name;//部门名称
    private String department_manager;//部门负责人（审批）

    public String getDepartment_manager() {
        return department_manager;
    }

    @Override
    public String toString() {
        return "Department{" +
                "department_id=" + department_id +
                ", department_num='" + department_num + '\'' +
                ", department_name='" + department_name + '\'' +
                ", department_manager='" + department_manager + '\'' +
                '}';
    }

    public void setDepartment_manager(String department_manager) {
        this.department_manager = department_manager;
    }



    public String getDepartment_name() {
        return department_name;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }

    public int getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(int department_id) {
        this.department_id = department_id;
    }

    public String getDepartment_num() {
        return department_num;
    }

    public void setDepartment_num(String department_num) {
        this.department_num = department_num;
    }

}
