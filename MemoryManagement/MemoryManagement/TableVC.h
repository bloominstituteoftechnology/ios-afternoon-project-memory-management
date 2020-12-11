//
//  TableVC.h
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import <UIKit/UIKit.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface TableVC : UITableViewController

@property (nonatomic, retain) NSMutableArray <Contact *> *contacts;

@end

NS_ASSUME_NONNULL_END
