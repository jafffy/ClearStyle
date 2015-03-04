//
//  ToDoItem.m
//  ClearStyle
//
//  Created by Jaewon Choi on 2015. 3. 4..
//  Copyright (c) 2015년 Jaewon Choi. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

-(id)initWithText:(NSString *)text {
    if (self = [super init]) {
        self.text = text;
    }
    
    return self;
}

+(id)toDoItemWithText:(NSString *)text {
    return [[ToDoItem alloc] initWithText:text];
}

@end
