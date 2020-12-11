//
//  Contact.h
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;

- (instancetype)initWithName:(NSString *)aName
                       email:(NSString *)anEmail
                       phone:(NSString *)aPhone;

+ (instancetype)contact;
+ (instancetype)contactWithName:(NSString *)aName
                          email:(NSString *)anEmail
                          phone:(NSString *)aPhone;

@end
