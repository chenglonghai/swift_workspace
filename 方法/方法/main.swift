//
//  main.swift
//  方法
//
//  Created by longhai on 2018/3/20.
//  Copyright © 2018年 study. All rights reserved.
//

import Foundation

print("方法")
/*枚举、结构体中方法使用static修饰，类中用class修饰,属于类方法
 其他的为实例方法
 */

/*********将方法转出函数**********/
/*
class SomeClass {
    func test() {
        print("=== test() 方法===")
    }
    class func bar(msg:String){
        print("== bar 类型方法==，传入参数 \(msg)")
        
    }
}
//将test方法转成函数
var sc = SomeClass();
var f1:()->() = sc.test;
var f2:(String) ->() = SomeClass.bar;
f1();
f2("火星");

*/
/**************方法外部形参名***************/
//class Person{
//    var name:String;
//    init(name:String) {
//        self.name = name;
//    }
//
//    func eat(food:String, drink:String, cigarette:String)  {
//
//        print("\(self.name)吃着\(food),喝着\(drink),抽着\(cigarette)");
//
//    }
//
//
//
//}
//var person = Person(name: "张三");
//person.eat(food: "沙拉", drink:"柠檬汁", cigarette: "七匹狼");

/***********值类型的可变方法*************/
//将mutating关键字放在func之前，即将该方法声明为可变方法
struct JKRect {
    var x:Int;
    var y :Int;
    var width:Int;
    var height:Int;
    mutating func moveByX(x:Int, y:Int){
        self.x += x;
        self.y += y;
    }
}
//创建实例
var rect = JKRect(x: 100, y: 200, width: 300, height: 400);
rect.moveByX(x: 10, y: 20);
print(rect.x);
print(rect.y);

/*******下标******/
struct JKRect2 {
    var x:Int
    var y : Int
    var width :Int
    var height :Int
    
    subscript(index:Int)->Int{
        get{
        switch(index){
        case 0 : return self.x
        case 1 : return self.y
        case 2 : return self.width
        case 3 : return self.height
        default:
            print("不支持该引用类型")
            return 0;
            
        }
        }
        
   
        set {
            switch(index){
            case 0 : self.x = newValue;
            case 1 : self.y = newValue;
            case 2 : self.width = newValue;
            case 3 : self.height = newValue;
            default:
                print("不支持该引用类型")
        
                
            }
        }
        
        
    }
    
}
//创建实例
var rect3 = JKRect2(x: 1, y: 2, width: 3, height: 4);
rect3[0] = 11;
rect3[1] = 22;
print(rect3[0])
print(rect3[1])
print(rect3[2])
print(rect3[3])
print(rect3[4])




