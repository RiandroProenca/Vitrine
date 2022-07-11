package vitrine.database;

import vitrine.models.Product;
import java.util.ArrayList;

public class Products {
    public static ArrayList<Product> data = Products.startData();
    
    public static ArrayList<Product> startData(){
        ArrayList<Product> products;
        products = new ArrayList<Product>();
        ArrayList<String> images = new ArrayList<>();
        
      
        images.add("https://a-static.mlcdn.com.br/280x210/conjunto-4-cadeiras-eames-eiffel-amarela-travel-max/devintex/20117/1cc81fe5382dd4194cc7b4bda1c5636f.jpg");
        images.add("https://m.media-amazon.com/images/I/61PWkWC-VCL._AC_SL1200_.jpg");
        images.add("https://a-static.mlcdn.com.br/800x560/kit-04-cadeiras-charles-eames-eiffel-slim-wood-estofada-preta-imperio-brazil-business/magazinedecor2/4378/633f94d83b39d1e1853df054c561cfe9.jpg");

        for(int count = 1; count <= 3; count++){
            int indexImage = (int)Math.floor(Math.random()*((images.size() - 1)+1));
            String image = images.get(indexImage);
            
            Product product = new Product();
            product.setId(count);
            product.setImage(image);
            product.setName("Cadeira"+count);
            product.setPrice(((indexImage + 1) * (count + 1)) * 10.30);
            product.setDescription("Cadeiras com 1 ano de garantia. ");

            
            products.add(product);
        }
        
        return products;
    }
    
    public static Product getProduct(int id){
        Product product = new Product();
        for(Product currentProduct: Products.data){
            if(id == currentProduct.getId()){
                product = currentProduct;
                break;
            }
        }
        
        return product;
    }
}
