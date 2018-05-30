//
//  main.swift
//  类与结构体
//
//  Created by longhai on 2018/3/19.
//  Copyright © 2018年 study. All rights reserved.
//

import Foundation

print("类与结构体")

//定义类
/*
【修饰符】 class 类名{
    零到多个构造器
    零到多个属性
    零到多个方法
    零到多个下标
}
 修饰符可以是 private public internal final
*/
//定义结构体
/*
【修饰符】 struct 结构体{
}
 修饰符可以是 private public  final
*/
//定义属性语法

/*定义属性的语法
 【修饰符】 var或者let 储存属性名:类型名字 = 初始值
 
 */

/** 定义构造器语法
 【修饰符】 init(形参列表){
   //零到多条可执行语句组成的构造器执行体
 }
 **/


/* 方法的语法
 【修饰符】 func 方法名(形参列表) ->返回值类型{
 //零到多条可执行语句
 }
 */
//定义一个Person类
class Person{
    var name:String = "Jack"
    var age:Int = 0;
    func say(content:String) -> Void {
        print(content);
    }
 
}

struct Dog {
    var name:String
    var age:Int
    func run() {
        print("\(name)")
    }
}

//创建类的实例
var p:Person;
p = Person();
print(p.name)
p.say(content: "hello! everyone")


//创建Dog结构体的实例
    var dog = Dog(name: "梦琪", age: 3);
    dog.run()

// 值类型与引用类型
//内存里的对象可以有多个引用，即多个引用变ti
var p2 = p;
p2.name = "狗屎";
print(p.name)

/*值类型*/
var dog2 = dog;
dog2.name = "Tidy";
print(dog.name);
print(dog2.name);


//存储属性 属性必须要有初始值或者在构造器中

struct LengthRange {
    var start:Int
    //定义常量储存属性
    let length:Int
}
var len = LengthRange(start: 10, length: 20);
print("start:\(len.start),length:\(len.length)")
len.start = 2;
//len.length = 10; 无法修改
print("start:\(len.start),length:\(len.length)")

//结构体常量存储属性
struct LengthRange1 {
    var start:Int
    var length:Int
}
let len1 = LengthRange1(start: 11, length: 22);
//len1.length = 2; 常量无法修改

/**计算属性**/
class User{
    var first:String = ""
    var last:String = ""
    var fullName:String{
        get{
            return first + "-" + last;
        }
        set(newValue){
            var  names  = newValue.split(separator: "-");
            print(names);
            self.first =  String(names[0]);
            self.last =   String(names[1]);
            
        }
        
        
    }
    init(first:String, last:String) {
        self.first = first;
        self.last = last;
    }
    
}

var user  = User(first: "张三", last: "李四");
print(user.fullName);
user.fullName = "王五-赵六";
print(user.first)

/**属性观察者**/
// willSet(newValue):被观察的属性即将被赋值之前自动调用的方法
// didSet(oldValue): 被观察的属性被赋值完成之后自动调用的方法
//参数是可以省略的
class People {
    var name:String = "hi,mary"{
        willSet{
            print("这是newValue-->\(newValue)")//在这里做一些判断
        }
        
        didSet{
            print("这是oldValue-->\(oldValue)")//修改后的值
        }
    }
}

var peo = People();
peo.name = "hello,jack";




