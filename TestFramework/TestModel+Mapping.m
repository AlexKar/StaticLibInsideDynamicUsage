//
//  TestModel+Mapping.m
//  TestFramework
//
//  Created by alexander.senchenkov on 17.12.2021.
//

#import "TestModel+Mapping.h"

@implementation TestModel (Mapping)

+ (EKObjectMapping *)objectMapping {
    return [EKObjectMapping new];
//    return [EKObjectMapping mappingForClass:[self class] withBlock:^(EKObjectMapping *mapping) {
//       /// kek
//    }];
}

@end
