public class ProductInventoryController {
    public Product_Inventory__c product {get; set;}
    public List<Product_Inventory__c> productList {get; set;}
    
    public ProductInventoryController() {
        product = new Product_Inventory__c();
        loadProducts();
    }

    public void saveProduct() {
        insert product;
        product = new Product_Inventory__c();
        loadProducts();
    }

    public void loadProducts() {
        productList = [
            SELECT
                Id,
                Name,
                Serial_No__c,
                Manufacture_Date__c,
                Expiry_Date__c
            FROM Product_Inventory__c
        ];
    }

    public void deleteProduct() {
        String productId =
            ApexPages.currentPage().getParameters().get('id');

        Product_Inventory__c p = [
            SELECT Id
            FROM Product_Inventory__c
            WHERE Id = :productId
            LIMIT 1
        ];

        delete p;
        loadProducts();
    }
}