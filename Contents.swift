
import UIKit

func suffixNumber(number:NSNumber) -> NSString {
    
    var num:Double = number.doubleValue;
    let sign = ((num < 0) ? "-" : "" );
    
    num = fabs(num);
    
    if (num < 1000.0){
        return "\(sign)\(num)" as NSString;
    }
    
    let exp:Int = Int(log10(num) / 3.0 );
    
    let units:[String] = ["K","M","G","T","P","E"];
    
    let roundedNum:Double = round(10 * num / pow(1000.0,Double(exp))) / 10;
    
    return "\(sign)\(roundedNum)\(units[exp-1])" as NSString;
}

print(suffixNumber(number: NSNumber(value: 878099090)))