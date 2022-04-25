//
//  TestModel.m
//  TestFramework
//
//  Created by alexander.senchenkov on 17.12.2021.
//

#import "TestModel.h"
#import <Shared/Shared.h>

@implementation TestModel

- (instancetype)init {
    self = [super init];
    if (self) {
        [self privateInit];
    }
    return self;
}

- (void)privateInit {
    __auto_type mapping = [EKObjectMapping new];
    [mapping mrutils_mapArrayWithKey:@"test"
                             mapping:mapping
                             toField:@"test"];

    [EKPropertyHelper propertyNameIsNativeProperty:@"test" fromObject:mapping];
}

@end
