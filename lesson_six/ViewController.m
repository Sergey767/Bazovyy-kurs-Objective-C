//
//  ViewController.m
//  lesson_six
//
//  Created by Сергей Горячев on 14.05.2021.
//

#import "ViewController.h"
#import "StudentsList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    NameStudent nameStudentBlock = ^(NSString* firstName, NSString* lastName) {
        return [NSString stringWithFormat:@"Фамилия и Имя первого студента %@ %@", firstName, lastName];
    };
     
    NSString *nameOneStudent = [StudentsList  createListStudents:nameStudentBlock firstName:@"Марина" withLastName:@"Анянова"];
    
    dispatch_sync(globalQueue, ^{
        NSLog(@"%@", nameOneStudent);
    });
    
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    
    displayStudentName nameTwoStudent = ^{
        NSLog(@"Фамилия и Имя второго студента - Кирилл Миронов");
    };
    
    dispatch_async(mainQueue, ^{
        nameTwoStudent();
    });
    
    NSString* (^nameStudent)(NSString*, NSString*) = ^(NSString* firstName, NSString* lastName) {
        
        return [NSString stringWithFormat:@"Фамилия и Имя третьего студента %@ %@", firstName, lastName];
    };
    
    __block NSString* nameThreeStudent = @"";
    
    NameStudentBlock nameFourStudent = ^(NSString* firstName, NSString* lastName) {
        return [NSString stringWithFormat:@"Фамилия и Имя четвертого студента %@ %@", firstName, lastName];
    };
    
    __block NSString *fourStudent = @"";
    
    dispatch_group_t group = dispatch_group_create();
    dispatch_queue_t queue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
    dispatch_group_async(group, queue, ^{
        nameThreeStudent = nameStudent(@"Андрей", @"Савельев");
    });
    dispatch_group_async(group, queue, ^{
        fourStudent = [StudentsList  createListStudents:nameFourStudent firstName:@"Лиана" withLastName:@"Фаизова"];
    });
    
    dispatch_group_notify(group, queue, ^{
        NSLog(@"%@ %@", nameThreeStudent, fourStudent);
    });
    
    NSString* firstName = @"Анастасия";
    NSString* lastName = @"Шевцова";
    
    NSString*(^nameFiveStudentBlock) (void) = ^(void) {
        return [NSString stringWithFormat:@"Фамилия и Имя пятого студента %@ %@", firstName, lastName];
    };
    
    NSString* nameFiveStudent = nameFiveStudentBlock();
    
    __block NSString* nameSixStudent = @"";
    
    void(^studentBlock) (NSString*, NSString*) = ^(NSString* firstName, NSString* lastName) {
        nameSixStudent = [NSString stringWithFormat:@"Фамилия и Имя шестого студента %@ %@", firstName, lastName];
    };
    
    studentBlock(@"Максим", @"Волков");
    
    dispatch_queue_t queueSerial = dispatch_queue_create("ru.example.queueSerial", NULL);
    dispatch_barrier_async(queueSerial, ^{
        NSLog(@"%@", nameSixStudent);
    });
    
    dispatch_async(queueSerial, ^{
        NSLog(@"%@", nameFiveStudent);
    });
    
    NSOperationQueue *mainQueueBlock = [NSOperationQueue mainQueue];
    [mainQueueBlock addOperationWithBlock:^{
        NSLog(@"%@", nameSixStudent);
    }];
    
    NSOperationQueue *currentQueue = [NSOperationQueue currentQueue];
    [currentQueue addOperationWithBlock:^{
        NSLog(@"%@", nameOneStudent);
    }];  
}


@end
