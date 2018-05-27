//
//  main.m
//  AddressBook
//
//  Created by Gao Xing on 2018/5/23.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"jtony.iannino@techfitness.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        
        // Set up a new address book
        
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Address Book"];
        
        AddressCard *myCard;
        
        // Now set up four address cards
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        
        // Add the cards to the address book
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        
       // List the unsorted book
        
        [myBook list];
        
        // Sort it and list it again
        
        [myBook sort];
        [myBook list];
    }
    return 0;
}
