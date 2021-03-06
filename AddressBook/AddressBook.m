//
//  AddressBook.m
//  AddressBook
//
//  Created by Gao Xing on 2018/5/24.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook;

@synthesize bookName, book;

// set up the AddressBook's name and an empty book

- (instancetype) initWithName: (NSString *) name {
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype) init {
    return [self initWithName: @"NoName"];
}

- (void) addCard: (AddressCard *) theCard {
    [book addObject: theCard];
}

- (void) removeCard:(AddressCard *)theCard {
    [book removeObjectIdenticalTo: theCard];
}

- (int)entries {
    return [book count];
}

- (void) list {
    NSLog(@"============ Contents of: %@ ==============", bookName);
    
    for (AddressCard *theCard in book)
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    
    NSLog(@"==========================================");

}

// look address card by name -- assumes an exact match

-(AddressCard *) lookup: (NSString *) theName {
    for (AddressCard *nextCard in book)
        if ([nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
            return nextCard;
    return nil;
}

- (void) sort {
    [book sortUsingComparator:
     ^(id obj1, id obj2) {
         return [[obj1 name] compare: [obj2 name]];
     }];
}

- (void) encodeWithCoder:(NSCoder *) encoder {
    [encoder encodeObject:bookName forKey:@"AddressBookBookName"];
    [encoder encodeObject:book forKey:@"AddressBookBook"];
}

- (id) initWithCoder:(NSCoder *) decoder {
    bookName = [decoder decodeObjectForKey:@"AddressBookBookName"];
    book = [decoder decodeObjectForKey:@"AddressBookBook"];
    
    return self;
}

@end
