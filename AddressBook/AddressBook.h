//
//  AddressBook.h
//  AddressBook
//
//  Created by Gao Xing on 2018/5/24.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook: NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

- (instancetype) initWithName: (NSString *) name;
- (void) addCard: (AddressCard *) theCard;
- (NSUInteger) entries;
- (void) list;
-（AddressCard *) lookup: (NSString *) theName;

@end
