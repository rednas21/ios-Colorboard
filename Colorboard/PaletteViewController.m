//
//  PaletteViewController.m
//  Colorboard
//
//  Created by Sander Peerna on 5/29/15.
//  Copyright (c) 2015 Sander Peerna. All rights reserved.
//

#import "ColorViewController.h"
#import "PaletteViewController.h"
#import "ColorDescription.h"

@implementation PaletteViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.colors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    ColorDescription *color = self.colors[indexPath.row];
    cell.textLabel.text = color.name;
    
    return cell;
}

- (NSMutableArray *)colors
{
    if (!_colors)
    {
        _colors = [NSMutableArray array];
        ColorDescription *cd = [[ColorDescription alloc] init];
        [_colors addObject:cd];
    }
    return _colors;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"NewColor"])
    {
        ColorDescription *color = [[ColorDescription alloc] init];
        [self.colors addObject:color];
        
        UINavigationController *nc = (UINavigationController *)segue.destinationViewController;
        ColorViewController *mvc = (ColorViewController *)[nc topViewController];
        mvc.colorDescription = color;
    }
    else if ([segue.identifier isEqualToString:@"ExistingColor"])
    {
        NSIndexPath *ip = [self.tableView indexPathForCell:sender];
        ColorDescription *color = self.colors[ip.row];
        ColorViewController *cvc = (ColorViewController *)segue.destinationViewController;
        cvc.colorDescription = color;
        cvc.existingColor = YES;
    }
}

@end
