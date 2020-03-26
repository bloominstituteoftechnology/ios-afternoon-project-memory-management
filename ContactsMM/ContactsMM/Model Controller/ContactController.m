//
//  ContactController.m
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import "ContactController.h"
#import "Contact.h"

@interface ContactController()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation ContactController

- (instancetype)init {
    
    if (self = [super init]) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)contacts {
    return self.internalContacts;
}

- (void)addContactWithName:(NSString *)name
                     email:(NSString *)email
                     phone:(NSString *)phone {
    
    Contact *newContact = [[Contact alloc] initWithName:name
                                                  email:email
                                                  phone:phone];
    
    [self.internalContacts addObject:newContact];
}

@end
