//
//  NSString+JBHelpers.m
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "NSString+JBHelpers.h"


@interface NSString()

@property (nonatomic, readonly) NSString *as7DigitPhoneNumber;
@property (nonatomic, readonly) NSString *as10DigitPhoneNumber;

@end


@implementation NSString (JBHelpers)

// TODO: improve this method; format for more regions, etc
// not actually going to do... will be much much easier in Swift
- (NSString *)formattedAsPhoneNumber
{
    NSString *bareNumber = self.strippingNonDecimalCharacters;
    if (bareNumber.length == 7) {
        return self.as7DigitPhoneNumber;
    } else if (bareNumber.length == 10) {
        return self.as10DigitPhoneNumber;
    } else {
        return bareNumber;
    }
}

- (NSString *)strippingNonDecimalCharacters
{
    return [self.trimmingWhiteSpace actuallyTrimmingCharactersInSet:
            [[NSCharacterSet decimalDigitCharacterSet] invertedSet]];
}

- (NSString *)trimmingWhiteSpace
{
    return [self actuallyTrimmingCharactersInSet:
            NSCharacterSet.whitespaceAndNewlineCharacterSet];
}

- (NSString *)actuallyTrimmingCharactersInSet:(NSCharacterSet *)set
{
    NSMutableString *newString = [[self mutableCopy] autorelease];
    int i = 0;
    while (i < newString.length) {
        unichar thisChar = [newString characterAtIndex:i];
        if ([set characterIsMember:thisChar]) {
            [newString deleteCharactersInRange:NSMakeRange(i, 1)];
        } else {
            i++;
        }
    }
    return newString;
}

- (BOOL)isValidEmail
{
   BOOL stricterFilter = NO;
   NSString *stricterFilterString = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
   NSString *laxString = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
   NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
   NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
   return [emailTest evaluateWithObject:self];
}

// TODO: improve this method
- (BOOL)isValidPhoneNumber
{
    BOOL is7 = self.length == 7;
    BOOL is10 = self.length == 10;
    return (is7 || is10);
}

- (BOOL)isEmpty
{
    return [self isEqualToString:@""];
}

- (NSString *)as7DigitPhoneNumber
{
    NSString *bareNumber = self.strippingNonDecimalCharacters;
    NSMutableString *formattedNumber = [[@"" mutableCopy] autorelease];

    int i = 0;
    while (i < bareNumber.length) {
        [formattedNumber appendFormat:@"%c", [bareNumber characterAtIndex:i]];
        if (i == 2) {
            [formattedNumber appendString:@"-"];
        }
        i++;
    }
    return [[formattedNumber copy] autorelease];
}

- (NSString *)as10DigitPhoneNumber
{
    NSString *bareNumber = self.strippingNonDecimalCharacters;
    NSMutableString *formattedNumber = [[@"(" mutableCopy] autorelease];

    int i = 0;
    while (i < bareNumber.length) {
        [formattedNumber appendFormat:@"%c", [bareNumber characterAtIndex:i]];
        if (i == 2) {
            [formattedNumber appendString:@") "];
        } else if (i == 5) {
            [formattedNumber appendString:@"-"];
        }
        i++;
    }
    return [[formattedNumber copy] autorelease];
}

@end
