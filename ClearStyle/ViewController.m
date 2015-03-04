//
//  ViewController.m
//  ClearStyle
//
//  Created by Jaewon Choi on 2015. 3. 4..
//  Copyright (c) 2015년 Jaewon Choi. All rights reserved.
//

#import "ViewController.h"
#import "ToDoItem.h"
#include "TableViewCell.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController {
    NSMutableArray* _toDoItems;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self) {
        _toDoItems = [[NSMutableArray alloc] init];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed the cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed the cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed  cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed the cat"]];
        [_toDoItems addObject:[ToDoItem toDoItemWithText:@"Feed the cat"]];
    }
    
    self.tableView.dataSource = self;
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    
    self.tableView.delegate = self;
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableviewDataSource protocol methods
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
    return _toDoItems.count;
}

- (UITableViewCell *)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *ident = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ident forIndexPath:indexPath];
    NSInteger index = [indexPath row];
    ToDoItem *item = _toDoItems[index];
    
    cell.textLabel.text = item .text;
    cell.textLabel.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (UIColor*)colorForIndex:(NSInteger) index {
    NSInteger itemCount = _toDoItems.count - 1;
    float val = ((float)index / (float)itemCount) * 0.6;
    
    return [UIColor colorWithRed:1.0 green:val blue:0.0 alpha:1.0f];
}

#pragma mark - UITableViewDataDelegate protocol methods
- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0f;
}

- (void)tableView:(UITableView*)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [self colorForIndex:indexPath.row];
}

@end
