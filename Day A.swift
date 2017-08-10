import Foundation

// Enter your code here 
var i = Int(readLine()!)
var n,rem,count,x: Int
var new1 = 0
var flag = 1
n=i!
count=0
while(n != 0){
    rem=n%2
    x = Int(pow(Double(10),Double(count)))
    new1=new1+rem*x  
    n = n / 2    
    count+=1
}
var prev=0
count=1
var large=1
while(new1 != 0){
    rem=new1%10
    if(rem==prev&&rem==1){
        count+=1
         if(count>large){
             large=count
        }
    }      
    else{
        count=1
    }
    prev=rem
    new1=new1/10
}
print(large)
