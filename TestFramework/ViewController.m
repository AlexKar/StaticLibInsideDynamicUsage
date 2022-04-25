//
//  ViewController.m
//  TestFramework
//
//  Created by alexander.senchenkov on 17.12.2021.
//

#import "ViewController.h"
#import "TestModel.h"

@interface ViewController ()

@property (nonatomic, strong) TestModel *model;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.model = [TestModel new];
}


@end
