//
//  EKObjectMapping+MRUtils.m
//  Shared
//
//  Created by alexander.senchenkov on 17.12.2021.
//

#import "EKObjectMapping+MRUtils.h"

@implementation EKObjectMapping (MRUtils)

- (void)mrutils_mapArrayWithKey:(NSString *)key
                        mapping:(EKObjectMapping *)mapping
                        toField:(NSString *)field {
    [self mapKeyPath:key toProperty:field withValueBlock:^id(NSString *aKey, id value) {
        if (![value isKindOfClass:[NSArray class]]) {
            return (id)nil;
        }
        return (id)[EKMapper arrayOfObjectsFromExternalRepresentation:value
                                                          withMapping:mapping];
    } reverseBlock:^id(NSArray *array) {
        if (![array isKindOfClass:[NSArray class]]) {
            return nil;
        }
        return [EKSerializer serializeCollection:array withMapping:mapping];
    }];
}

@end
