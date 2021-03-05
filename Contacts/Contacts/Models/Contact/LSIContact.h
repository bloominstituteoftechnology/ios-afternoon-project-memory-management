//
//  LSIContact.h
//  Contacts
//
//  Created by James McDougall on 3/5/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIContact : NSObject

/// Properties
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSNumber *phoneNumber;

/// Methods
- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSNumber *)phoneNumber;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)returnDictionary;

@end

NS_ASSUME_NONNULL_END
