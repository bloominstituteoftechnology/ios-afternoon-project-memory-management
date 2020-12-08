//
//  IGFContactsController.m
//  Contacts-MRC
//
//  Created by Ian French on 12/8/20.
//

#import "IGFContactsController.h"
#import "IGFContacts.h"

@interface IGFContactsController()

@end



@implementation IGFContactsController


- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void)addContact:(IGFContacts *)contact
{
    [self.contacts addObject:contact];
}

- (void)randomUsersContacts:(NSString *)users completion:(void (^)(NSError *_Nullable))completion
{
    NSURL *baseURL = [NSURL URLWithString:@"https://randomuser.me/api/"];
    NSURLComponents *components = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:YES];
    NSURLQueryItem *withItem = [NSURLQueryItem queryItemWithName:@"inc" value:@"name,email,phone"];
    NSURLQueryItem *resultItem = [NSURLQueryItem queryItemWithName:@"results" value:users];
    components.queryItems = @[withItem, resultItem];
    NSURL *url = components.URL;

    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        if (error) {
            NSLog(@"Error: %@", error);
            completion(error);
            return;
        }

        NSError *jsonError = nil;
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];

        if (jsonError) {
            NSLog(@"jsonError: %@", jsonError);
            completion(jsonError);
            return;
        }

        if(![dictionary isKindOfClass:[NSDictionary class]]) {
            NSLog(@"Dictionary error");
            NSString *domain = @"Invalid domain";
            NSString *desc = NSLocalizedString(@"Unable to complete the process", @"");
            NSDictionary *userInfo = @{ NSLocalizedDescriptionKey : desc };
            NSError *dictionaryError = [NSError errorWithDomain:domain code:-101 userInfo:userInfo];
            completion(dictionaryError);
            return;
        }


        NSArray *resultsDictionaries = dictionary[@"results"];
        for (NSDictionary *usersDictionary in resultsDictionaries) {
            IGFContacts *contact = [IGFContacts contactWithDictionary:usersDictionary];
            [self.contacts addObject:contact];
        }
        completion(nil);

    }] resume];



}

- (void)dealloc
{
    [_contacts release];
    [super dealloc];
}
@end
