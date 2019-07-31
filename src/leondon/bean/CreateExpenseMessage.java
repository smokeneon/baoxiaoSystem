package leondon.bean;

/**
 * @Autor:leondon
 * @Date:19-4-22下午11:16
 * @Version 1.0 该bean用于普通用户创建报销单时上面表格显示用户所属办公室和部门
 */
public class CreateExpenseMessage {
    private String office_name;//办公室名
    private String department_name;//部门名

    @Override
    public String toString() {
        return "CreateExpenseMessage{" +
                "office_name='" + office_name + '\'' +
                ", department_name='" + department_name + '\'' +
                '}';
    }


    public String getOffice_name() {
        return office_name;
    }

    public void setOffice_name(String office_name) {
        this.office_name = office_name;
    }

    public String getDepartment_name() {
        return department_name;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }



}
