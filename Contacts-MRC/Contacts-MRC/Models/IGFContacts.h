//
//  IGFContacts.h
//  Contacts-MRC
//
//  Created by Ian French on 12/8/20.
//

#import <Foundation/Foundation.h>


@interface IGFContacts : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *number;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email number:(NSString *)number;

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)email number:(NSString *)number;
+ (instancetype)contactWithDictionary:(NSDictionary *)dictionary;

@end


