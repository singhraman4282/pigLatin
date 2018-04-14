//
//  NSString+pigLatin.m
//  PgiLatin
//
//  Created by Raman Singh on 2018-04-13.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "NSString+pigLatin.h"

@implementation NSString (pigLatin)
-(NSString *)stringByPigLatinization:(NSString *)givenString {
    
    NSMutableString *pigSpeak;
    pigSpeak = [[NSMutableString alloc] initWithString:@""];
    
    NSArray *givenStringArray;
    givenStringArray = [givenString componentsSeparatedByString:@" "];
    for (int i = 0; i < givenStringArray.count; i++) {
        NSString *someString = [givenStringArray objectAtIndex:i];
        
        NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
        
        NSRange range = [someString rangeOfCharacterFromSet:vowels];
        NSLog(@"%@", NSStringFromRange(range));
        
        NSLog(@"The first vowel is %@", [someString substringWithRange:range]);
        
        //        NSRange newRange = NSMakeRange(, someString.length);
        NSRange range2 = NSMakeRange(range.location, someString.length - 1);
        NSLog(@"%@", [someString substringWithRange:range2]);
        NSRange range3 = NSMakeRange(0, range2.location);
        NSLog(@"%@", NSStringFromRange(range3));
        NSLog(@"%@", [someString substringWithRange:range3]);
        
        NSString *outputWord = [NSString stringWithFormat:@"%@%@ay", [someString substringWithRange:range2], [someString substringWithRange:range3]];
        
        //            NSLog(@"The final word is: %@", outputWord);
        pigSpeak = [NSMutableString stringWithFormat:@"%@ %@", pigSpeak, outputWord];
        
        
        
    }//forLoop
    
    NSLog(@"The final word is: %@", pigSpeak);
    
    
    return pigSpeak;
}
@end
