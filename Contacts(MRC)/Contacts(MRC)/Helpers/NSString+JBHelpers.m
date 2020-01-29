//
//  NSString+JBHelpers.m
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "NSString+JBHelpers.h"


@implementation NSString (JBHelpers)

// TODO: allow format for different regions, no area code, etc
// not actually going to do... will be much much easier in Swift
- (NSString *)formattedAsPhoneNumber
{
    if (self.length <= 2) { return self; }
    NSString *bareNumber = self.strippingNonDecimalCharacters;
    NSMutableString *formattedNumber = [[@"(" mutableCopy] autorelease];
    for (int i = 0; i < bareNumber.length; i++) {
        [formattedNumber appendFormat:@"%c", [bareNumber characterAtIndex:i]];
        if (i == 2) {
            [formattedNumber appendString:@") "];
        } else if (i == 5) {
            [formattedNumber appendString:@"-"];
        } else if (i == 9) {
            break;
        }
    }
    return [[formattedNumber copy] autorelease];
}

- (NSString *)strippingNonDecimalCharacters
{
    return [self stringByTrimmingCharactersInSet:
            [[NSCharacterSet decimalDigitCharacterSet] invertedSet]];
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

- (BOOL)isEmpty
{
    return [self isEqualToString:@""];
}

@end
