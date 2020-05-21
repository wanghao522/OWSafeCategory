//
//  NSMutableDictionary+PTVSafe.m
//  PandaTV-HD
//
//  Created by sunwanhua on 16/9/16.
//  Copyright © 2016年 zuowenping. All rights reserved.
//

#import "NSMutableDictionary+BLSafe.h"

@implementation NSMutableDictionary (BLSafe)

- (void)safe_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject && aKey) {
        [self setObject:anObject forKey:aKey];
    }
}

- (void)safe_removeObjectForKey:(id<NSCopying>)key {
    if (key) {
        [self removeObjectForKey:key];
    }
}

@end
