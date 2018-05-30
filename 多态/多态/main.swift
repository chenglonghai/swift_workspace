//
//  main.swift
//  多态
//
//  Created by longhai on 2018/3/24.
//  Copyright © 2018年 study. All rights reserved.
//

import Foundation

//swift引用变量有两个类型：编译时类型/运行时类型
//编译时类型由声明该变量时使用类型决定的
//运行时类型由实际给该变量的实例决定
//多态：相同类型的变量，调用同一个方法时呈现出多种不同的行为特征

class BaseClass {
    func base() {
        print("父类的普通方法")
    }
    func test()  {
        print("父类的被覆盖的方法")
    }
}

class SubClass: BaseClass {
    override func test() {
        print("子类覆盖父类的方法")
    }
    func sub()  {
        print("子类的普通方法")
    }
}

//let sc:SubClass = SubClass();
//sc.base();
//sc.test();
//编译时类型为BaseClass，运行时为SubClass
let bsc:BaseClass = SubClass();
bsc.base();
bsc.test();

//使用is运算符检查类型，返回值为布尔类型




//使用as运算符向下转型
//向上转型:把一个子类实例直接赋给一个父类引用变量、不用任何类型转换
//引用变量只能调用其编译时类型的方法，强制转换为其实际类型，可以调用运行时类型方法，这种强制转换为向下转型
//向下转型运算符
// 1> as:强制将运算符前面的引用变量转换成后面的类型
// 2> as?可选形式的向下转型
//向下转型只能在具有继承关系的两个类型之间进行
let obj:NSObject  = "hello" as NSObject;
let objStr:NSString = obj as! NSString;
print(objStr)








