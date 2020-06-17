//
//  ViewController.m
//  OC-BasePrinciple
//
//  Created by Delin Meng 孟德林 on 2020/5/27.
//  Copyright © 2020 D.M. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface Person1 : NSObject
{
    @public
    int _age;
}

@property (nonatomic, assign) int no;

- (void)personInstanceMethod;

+ (void)personClassMethod;

@end

@implementation Person1

- (void)personInstanceMethod {
    
    
}

+ (void)personClassMethod {
    
    
}

@end


@interface Student : Person1
{
    int _time;
}

@property (nonatomic,copy) NSMutableString *str;

@end


@implementation Student


- (void)personInstanceMethod {
    
    _time = 100;
}

- (void)setStr:(NSMutableString *)str {
    if (str != _str) {
        [self willChangeValueForKey:@"str"];
        _str = str;
        [self didChangeValueForKey:@"str"];
    }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key {
    
    return true;
    
}


@end






#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) Person1 *person1;
@property (nonatomic, strong) Person1 *person2;

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
    
    
    self.person1 = [[Person1 alloc] init];
    self.person2 = [[Person1 alloc] init];
    
    [self.person1 addObserver:self forKeyPath:@"no" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
    
    [self printClassMethods:self.person1];
    
}

- (void)printClassMethods:(NSObject*)objc {
    unsigned int outCount = 0;
    Method *methods = class_copyMethodList(object_getClass(objc), &outCount);
    for (int i = 0; i < outCount; i++) {
        SEL sel = method_getName(methods[i]);
        NSString *methodName = NSStringFromSelector(sel);
        NSLog(@"\n %d === %@", i ,methodName);
    }
    free(methods);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    self.person1.no = 1;
    [self.person1 setValue:@(1) forKey:@"no"];
//    self.person2.no = 10;
    
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    
    NSLog(@"ewwerwqe");
    
}





@end
