//
//  test132456.m
//  ContactsMRC
//
//  Created by Kelson Hartle on 8/6/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "test132456.h"

@implementation test132456


- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = [name copy];
        
    }
    return self;
}

- (NSString *)name {
    return [[_name copy]autorelease];
}




@end
