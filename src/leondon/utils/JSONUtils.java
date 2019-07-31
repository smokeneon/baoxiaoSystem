package leondon.utils;
import org.json.JSONObject;

import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-19下午3:27
 * @Version 1.0
 */


public class JSONUtils {
    // obj to json string
    public static String objToJsonString(Object obj){

        JSONObject jsonObj = new JSONObject(obj);

        return jsonObj == null ? "":jsonObj.toString();
    }


}
