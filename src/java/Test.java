
import com.farhana.manager.Manager;
import com.farhana.model.ProductModel;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Solaiman
 */
public class Test {

    public static void main(String[] args) {
        Manager manager = new Manager();
        List<ProductModel> productModels = new ArrayList<>();
        productModels.clear();
        manager.getDemoProducts(productModels);
        System.out.println(productModels.size());
    }
}
