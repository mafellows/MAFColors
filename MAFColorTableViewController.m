//
//  MAFColorTableViewController.m
//  MAFColors
//
//  Created by Michael Fellows on 5/12/14.
//  Copyright (c) 2014 broadwaylab. All rights reserved.
//

#import "MAFColorTableViewController.h"
#import "MAFColorStore.h"

@interface MAFColorTableViewController ()

@property (nonatomic, copy) NSArray *colors;

@end

@implementation MAFColorTableViewController

#pragma mark - Object Lifecycle

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        [self _initialize]; 
    }
    return self;
}

- (id)init
{
    if ((self = [super init])) {
        [self _initialize];
    }
    return self;
}

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"iOS 7 Colors";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.colors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.selectionStyle = cell.selectionStyle = UITableViewCellSeparatorStyleNone; 
    cell.backgroundColor = [self.colors objectAtIndex:indexPath.row]; 
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150.0f;
}

#pragma mark - Properties

- (NSArray *)colors
{
    if (!_colors) {
        _colors = [[MAFColorStore sharedStore] allColors];
    }
    return _colors;
}

#pragma mark - Private

- (void)_initialize
{
    // Custom initialization
}

@end
