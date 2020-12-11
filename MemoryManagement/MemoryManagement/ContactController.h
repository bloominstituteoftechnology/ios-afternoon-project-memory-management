//
//  ContactController.h
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ContactControllerDelegate;

@interface ContactController : NSObject

@property (nonatomic, retain, nullable) NSMutableArray<Contact *> *contacts;

+ (instancetype)sharedContactController;

@property (nonatomic, weak) id<ContactControllerDelegate> delegate;

@end

@protocol ContactControllerDelegate <NSObject>

- (void)didAddContact;

@end

NS_ASSUME_NONNULL_END
