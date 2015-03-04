//
//  ToDoItem.h
//  ClearStyle
//
//  Created by Jaewon Choi on 2015. 3. 4..
//  Copyright (c) 2015년 Jaewon Choi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic) BOOL completed;

-(id)initWithText:(NSString*)text;

+(id)toDoItemWithText:(NSString*)text;

@end
