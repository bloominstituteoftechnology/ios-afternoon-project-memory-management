//
//  ContactController.h
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import <Foundation/Foundation.h>

@class Contact;

@interface ContactController : NSObject

@property (nonatomic, copy, nullable) NSMutableArray<Contact *> *contacts;

+ (instancetype _Nullable)contactController;

@end
