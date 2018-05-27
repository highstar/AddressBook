//
//  AddressCard.h
//  AddressBook
//
//  Created by Gao Xing on 2018/5/23.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard: NSObject

@property (copy, nonatomic) NSString *name, *email;

- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
- (void) print;

@end
