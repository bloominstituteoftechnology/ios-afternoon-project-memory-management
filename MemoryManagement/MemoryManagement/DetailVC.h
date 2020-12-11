//
//  DetailVC.h
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import <UIKit/UIKit.h>

@class Contact;
@class ContactController;

@protocol ContactDelegate;

@interface DetailVC : UIViewController

@property (nonatomic, retain, nullable) Contact *contact;
@property (nonatomic, weak) id<ContactDelegate> _Nullable delegate;

@end

@protocol ContactDelegate <NSObject>

- (void)didAddContact;
- (void)addContact:(Contact *_Nullable)contact;

@end
