//
//  LSIContactController.m
//  Contacts
//
//  Created by James McDougall on 3/5/21.
//

#import "LSIContactController.h"

@implementation LSIContactController

- (instancetype)init {
    if (self = [super init]) {
        [self loadContacts];
    }
    return self;
}

- (NSURL *)documentsURL {
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]firstObject];
    return [documentsDirectoryURL URLByAppendingPathComponent: @"FavoriteArtists.json"];
}

- (void)saveContact:(LSIContact *)contact {
    [_contacts addObject:contact];
    NSMutableArray *contactDictionaries = [[NSMutableArray alloc] init];
    
    for (LSIContact *contact in _contacts) {
        [contactDictionaries addObject:[contact returnDictionary]];
    }
    
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:contactDictionaries options:0 error:&error];
    if (error) {
        NSLog(@"Could not convert the saved contacts into Data! %@", error);
    }
    
    [data writeToURL:[self documentsURL] atomically:true];
}

- (void)loadContacts {
    
    NSData *data = [NSData dataWithContentsOfURL:[self documentsURL]];
    if (!data) {
        NSLog(@"ERROR: Data not found!");
        _contacts = [[[NSMutableArray alloc] initWithArray:@[]]autorelease];
        return;
    }
    
    NSError *error = nil;
    NSArray *contactDictionaries = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (error) {
        NSLog(@"ERROR: Could not convert JSON into array, reason: %@", error);
    }
    
    NSMutableArray *contactsArray = [[NSMutableArray alloc] init];
    for (NSDictionary *contactDictionary in contactDictionaries) {
        LSIContact *contact = [[LSIContact alloc] initWithDictionary: contactDictionary];
        [contactsArray addObject:contact];
    }
    _contacts = contactsArray;
}

@end
