package leondon.bean;

/**
 * @Autor:leondon
 * @Date:19-4-16下午9:40
 * @Version 1.0
 */
public class Office {
    private int office_id;
    private String office_num;
    private String office_name;
    private String office_manager;//办公室负责人（审批）

    @Override
    public String toString() {
        return "Office{" +
                "office_id=" + office_id +
                ", office_num='" + office_num + '\'' +
                ", office_name='" + office_name + '\'' +
                ", office_manager='" + office_manager + '\'' +
                '}';
    }



    public int getOffice_id() {
        return office_id;
    }

    public void setOffice_id(int office_id) {
        this.office_id = office_id;
    }

    public String getOffice_num() {
        return office_num;
    }

    public void setOffice_num(String office_num) {
        this.office_num = office_num;
    }

    public String getOffice_name() {
        return office_name;
    }

    public void setOffice_name(String office_name) {
        this.office_name = office_name;
    }


    public String getOffice_manager() {
        return office_manager;
    }

    public void setOffice_manager(String office_manager) {
        this.office_manager = office_manager;
    }
}
