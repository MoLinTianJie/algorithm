//
//  ViewController.m
//  OC-BasePrinciple
//
//  Created by Delin Meng 孟德林 on 2020/5/27.
//  Copyright © 2020 D.M. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface Person : NSObject
{
    @public
    int _age;
}

@property (nonatomic, assign) int no;

- (void)personInstanceMethod;

+ (void)personClassMethod;

@end

@implementation Person

- (void)personInstanceMethod {
    
    
}

+ (void)personClassMethod {
    
    
}


- (void)didChangeValueForKey:(NSString *)key {
    
    
    
}

@end


@interface Student : Person
{
    int _time;
}

@property (nonatomic,copy) NSMutableString *str;

@end


@implementation Student


- (void)personInstanceMethod {
    
    _time = 100;
    
    NSString *name = @"my name is clees";
    self.str = @"7980900-0";
    
//    NSLog(@"这是student 调用的类%d",_time);
    
    NSLog(self.str);
}


@end






#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) Person *person1;
@property (nonatomic, strong) Person *person2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
//    Person *person = [[Person alloc] init];  // 实例化内存地址
//    person->_age = 10;
//    Class personClass = [Person class]; // 类的isa 内存地址
//    Class personMetaClass = object_getClass(personClass); // 元类的 内存地址
//    NSLog(@"%p %p %p",person, personClass ,personMetaClass);
//    Person *per = [[Student alloc] init];
//    [per personInstanceMethod];
//
//    Student *stu = [[Person alloc] init];
//    [stu personInstanceMethod];
    
    
    self.person1 = [[Person alloc] init];
    self.person2 = [[Person alloc] init];
    
//    [self.person1 addObserver:self forKeyPath:@"no" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.person1.no = 1;
    self.person2.no = 10;
    
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    
    NSLog(@"ewwerwqe");
    
}





@end
