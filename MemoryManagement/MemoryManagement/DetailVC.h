//
//  DetailVC.h
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import <UIKit/UIKit.h>

@class Contact;
@class ContactController;

@interface DetailVC : UIViewController

@property (nonatomic, retain, nonnull) ContactController *contactController;
@property (nonatomic, retain, nullable) Contact *contact;

@end
