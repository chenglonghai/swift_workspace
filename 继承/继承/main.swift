//
//  main.swift
//  继承
//
//  Created by longhai on 2018/3/24.
//  Copyright © 2018年 study. All rights reserved.
//

import Foundation

class Fruit
{
    var weight = 0.0
 
      init() {
        print("我是一个水果，重\(weight)");
    }
}

class Apple: Fruit {
    var name:String!
    func taste() {
        print("\(name)吃起来很好吃！！")
    }
    
}

var apple = Apple()
apple.weight = 100.0;
apple.name = "hello"
apple.taste()

/** 重写父类的方法**/
class Bird {
    //Bird类的fly()方法
    func fly() {
        print("我再天空自由自在的飞翔....")
    }
}
class Ostrich: Bird {
    override func fly() {
        print("我是一只鸟，我跑不起来")
    }
}

var os = Ostrich();
os.fly()

class Base {
    subscript(idx:Int)->Int{
        
        get{
            print("重写前的下标的get")
            return idx + 10;
        }
    }
}

class Sub: Base {
    //重写Base下标
  override   subscript (idx:Int)->Int{
    
    get{
    print("重写后的下标的get方法")
    print("通过super访问被重写之前的下标:\(super[idx])")
    return idx * idx;
    }
    set{
        print("重写下标setter方法，传入参数为:\(newValue)");
    }
    
    }
    
}
var base = Base();
print(base[7]);
var sub = Sub();
print(sub[7])
sub[1] = 100
//重写父类属性
class Fish{
    var speed:Double = 0.0;
}
class GoldFish: Fish {
    override var speed: Double{
        get{
            return super.speed;
        }
        set{
            if newValue < 0 {
                super.speed = 0;
            }else{
            super.speed = newValue;
            }
        }
        
    }
}

var goldFish = GoldFish();
goldFish.speed = -10;
print(goldFish.speed)
goldFish.speed = 10.1
print(goldFish.speed)


//重写父类属性观察者
class Animal{
    var age :Int = 0;
    
}
class Dog: Animal {
    override var age: Int{
            //属性值被改变后，将会自动执行该方法
        didSet{
            print("执行之前的老值:\(oldValue)")
            super.age  = age+10;
        }
        
    }
}

var dog = Dog();
dog.age = 99;
print(dog.age);
dog.age = 100;
print(dog.age)

//final 防止重写
final class Person{
    final var name:String = "";
    final func say(content:String){
        print("person说:\(content)")
    }
    
    final subscript(idx:Int)->Int{
        get{
            return 100 + idx;
        }
        
    }
}






