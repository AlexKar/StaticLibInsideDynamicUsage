//
//  EKObjectMapping+MRUtils.h
//  Shared
//
//  Created by alexander.senchenkov on 17.12.2021.
//

//#pragma clang diagnostic push
//#pragma clang diagnostic ignored "-Wnon-modular-include-in-framework-module"
//#import "EKObjectMapping.h"
#import "EKObjectMapping.h"
//#pragma clang diagnostic pop

NS_ASSUME_NONNULL_BEGIN

@interface EKObjectMapping (MRUtils)

- (void)mrutils_mapArrayWithKey:(NSString *)key
                        mapping:(EKObjectMapping *)mapping
                        toField:(NSString *)field;

@end

NS_ASSUME_NONNULL_END
