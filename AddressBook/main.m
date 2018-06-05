//
//  main.m
//  AddressBook
//
//  Created by Gao Xing on 2018/5/23.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    AddressBook *myBook;
    @autoreleasepool {
        myBook = [NSKeyedUnarchiver unarchiveObjectWithFile:@"addrbook.arch"];
        
        [myBook list];
    }
    return 0;
}
