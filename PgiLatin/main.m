//
//  main.m
//  PgiLatin
//
//  Created by Raman Singh on 2018-04-13.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+pigLatin.h"
#import "test.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
       
        NSString *givenString = @"Hello World";
        
        [givenString stringByPigLatinization:givenString];
        
   
       
    }
    return 0;
}
