//
//  NSMutableDictionary+BLSafe.h
//  PandaTV-HD
//
//  Created by sunwanhua on 16/9/16.
//  Copyright © 2016年 zuowenping. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (BLSafe)

- (void)safe_setObject:(id)anObject forKey:(id<NSCopying>)aKey;

- (void)safe_removeObjectForKey:(id<NSCopying>)key;

@end
