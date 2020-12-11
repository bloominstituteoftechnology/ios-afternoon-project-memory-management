//
//  ContactController.m
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import "ContactController.h"

@implementation ContactController

+ (instancetype)sharedInstance {
    static ContactController *contactController = nil;
    contactController = [[super allocWithZone:NULL] init];
    return contactController;
}

- (instancetype)initSharedInstance
{
    if (self = [super init]) {
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

+ (id)allocWithZone:(NSZone*)zone {
    return [[self sharedInstance] retain];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)retain {
    return self;
}

- (NSUInteger)retainCount {
    return NSUIntegerMax;
}

- (oneway void)release {

}

- (id)autorelease {
    return self;
}

@end
