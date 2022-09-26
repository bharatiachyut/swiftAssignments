import Foundation
class Item{
    var itemName: String = ""
    var itemQuantity: Int = 1
    var itemPrice: Double = 0.0
    var itemType: String = ""
    func salesTax() -> Double {
        return 0.0
    }
    var finalPrice: Double {
        return itemPrice * Double(itemQuantity)
    }
    
    init(){}
    
    init(_ itemName: String, _ itemQuantity: Int, _ itemPrice: Double, _ itemType: String){
        self.itemName = itemName
        self.itemQuantity = itemQuantity
        self.itemPrice = itemPrice
        self.itemType = itemType
    }
}

class raw: Item {
    override func salesTax() -> Double {
        return (12.5/100) * finalPrice
    }
}

class manufactured: Item {
    override func salesTax() -> Double {
        return ((12.5/100 * finalPrice) + 0.02 * (finalPrice + (12.5/100 * finalPrice)))
    }
}

class imported: Item {
    
    var saleTax: Double{
        return 0.1 * finalPrice
    }
    var total: Double{
        return saleTax + finalPrice
    }
    
    override func salesTax() -> Double {
        if(total <= 100)
        {
            return (total + 5)
        }
        
        else if(total > 100 && total <= 200)
        {
            return (total + 10)
        }
        
       
        return (total + (total * 0.05))
            
    }
    
}
    
var a = Item ("Apple",2,40.0,"raw")
print(a.itemName)
print(a.itemQuantity)
print(a.itemPrice)
print(a.itemType)
print(a.finalPrice)
var b = manufactured()
print(b.salesTax())
if(a.itemType == "raw"){
    let result = raw()
    print("Sales Tax raw : \(result.salesTax())" )
}

else if(a.itemType == "manufactured"){
    let result = manufactured()
    print("Sales Tax manufactured : \(result.salesTax())" )
}

else if(a.itemType == "imported"){
    let result = imported()
    print("Sales Tax imported : \(result.salesTax())" )
}




    
    

     
    
   
    
     
        
     
