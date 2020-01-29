//
//  NSString+JBHelpers.h
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface NSString (JBHelpers)

@property (nonatomic, readonly) NSString *strippingNonDecimalCharacters;
@property (nonatomic, readonly) NSString *formattedAsPhoneNumber;
@property (nonatomic, readonly) BOOL isValidEmail;
@property (nonatomic, readonly) BOOL isEmpty;

@end

NS_ASSUME_NONNULL_END
