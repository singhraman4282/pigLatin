//
//  test.m
//  PgiLatin
//
//  Created by Raman Singh on 2018-04-13.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "test.h"

@implementation test
-(NSString *)output:(NSString *)input {
    NSString *abc;
    abc = [NSString stringWithFormat:@" this is %@ ", input];
    return abc;
}
@end
