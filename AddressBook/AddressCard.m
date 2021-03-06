//
//  AddressCard.m
//  AddressBook
//
//  Created by Gao Xing on 2018/5/23.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

- (void) print {
    NSLog(@"============================");
    NSLog(@"|                          |");
    NSLog(@"|   %-31s |", [name UTF8String]);
    NSLog(@"|   %-31s |", [email UTF8String]);
    NSLog(@"|                          |");
    NSLog(@"|                          |");
    NSLog(@"|                          |");
    NSLog(@"|    O                  O  |");
    NSLog(@"============================");
}

- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail {
    self.name = theName;
    self.email = theEmail;
}

- (BOOL) isEqual: (AddressCard *) theCard {
    if ([name isEqualToString: theCard.name] == YES && [email isEqualToString:theCard.email] == YES)
        return YES;
    else return NO;
}

- (void) encodeWithCoder:(NSCoder *) encoder {
    [encoder encodeObject:name forKey:@"AddressCardName"];
    [encoder encodeObject:email forKey:@"AddressCardEmail"];
}

- (id) initWithCoder:(NSCoder *) decoder {
    name = [decoder decodeObjectForKey:@"AddressCardName"];
    email = [decoder decodeObjectForKey:@"AddressCardEmail"];
    
    return self;
}
@end
