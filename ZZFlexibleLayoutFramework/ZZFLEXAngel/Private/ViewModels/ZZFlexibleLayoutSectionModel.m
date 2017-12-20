//
//  ZZFlexibleLayoutSectionModel.m
//  ZZFlexibleLayoutFrameworkDemo
//
//  Created by 李伯坤 on 2016/12/27.
//  Copyright © 2016年 李伯坤. All rights reserved.
//

#import "ZZFlexibleLayoutSectionModel.h"

@implementation ZZFlexibleLayoutSectionModel

- (id)init
{
    if (self = [super init]) {
        _itemsArray = [[NSMutableArray alloc] init];
        self.minimumLineSpacing = 0.0f;
        self.minimumInteritemSpacing = 0.0f;
        self.sectionInsets = UIEdgeInsetsZero;
    }
    return self;
}

#pragma mark - # Section Header
- (CGSize)headerViewSize
{
    return [self.headerViewModel viewSize];
}

#pragma mark - # Section Footer
- (CGSize)footerViewSize
{
    return [self.footerViewModel viewSize];
}

#pragma mark - # Items
- (NSUInteger)count
{
    return self.itemsArray.count;
}

- (void)addObject:(ZZFlexibleLayoutViewModel *)object
{
    if (!object) {
        object = (ZZFlexibleLayoutViewModel *)[NSNull null];
    }
    [self.itemsArray addObject:object];
}

- (void)addObjectsFromArray:(NSArray<ZZFlexibleLayoutViewModel *> *)otherArray
{
    [self.itemsArray addObjectsFromArray:otherArray];
}

- (void)insertObject:(ZZFlexibleLayoutViewModel *)object atIndex:(NSUInteger)objectIndex;
{
    [self.itemsArray insertObject:object atIndex:objectIndex];
}

- (void)insertObjects:(NSArray<ZZFlexibleLayoutViewModel *> *)objects atIndexes:(NSIndexSet *)indexes
{
    [self.itemsArray insertObjects:objects atIndexes:indexes];
}

- (id)objectAtIndex:(NSUInteger)index
{
    return index < self.itemsArray.count ? self.itemsArray[index] : nil;
}

- (void)removeObjectAtIndex:(NSUInteger)index
{
    index < self.itemsArray.count ? [self.itemsArray removeObjectAtIndex:index] : nil;
}

- (void)removeObject:(ZZFlexibleLayoutViewModel *)object
{
    if ([self.itemsArray containsObject:object]) {
        [self.itemsArray removeObject:object];
    }
}

@end