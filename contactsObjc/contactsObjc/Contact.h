//
//  Contact.h
//  contactsObjc
//
//  Created by Clayton Watkins on 10/7/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *phoneNumber;
@property (nonatomic, readonly, copy) NSString *email;

- (instancetype) initWithName:(NSString *)aName phoneNumber:(NSString *)aPhoneNumber email:(NSString *)anEmail;

@end

NS_ASSUME_NONNULL_END
