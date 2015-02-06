//
//  MBViewController.m
//  MBMenuController
//
//  Created by Moshe Berman on 3/12/13.
//  Copyright (c) 2013 Moshe Berman. All rights reserved.
//

#import "MBViewController.h"

#import "MBMenuController.h"

@interface MBViewController () <MBMenuControllerDelegate>

@property (nonatomic, strong) MBMenuController *menu;

@end

@implementation MBViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    
    //
    //
    //
    
    [[self button] addTarget:self action:@selector(showMenu) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Menu

- (void) showMenu
{
    if (![self menu]) {
        
        NSArray *titles = @[@"Red",
                            @"Yellow",
                            @"Blue",
                            @"Cancel"];
        _menu = [[MBMenuController alloc] initWithButtonTitles:titles];
        [_menu setDelegate:self];
        [_menu setCancelButtonIndex:[[_menu buttonTitles]count]-1];
    }
    
    [[self menu] showInView:[self view]];
}

#pragma mark - MBButtonMenuViewControllerDelegate

- (void)buttonMenuViewController:(MBMenuController *)buttonMenu buttonTappedAtIndex:(NSUInteger)index
{
    //
    //  Hide the menu
    //
    
    [buttonMenu hide];
    
    //
    //  Create a title
    //
    
    NSString *title = [[self menu] buttonTitles][index];
    
    NSString *message = [NSString stringWithFormat:@"You chose %@", title];
    
    //
    //  Show an alert
    //
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:nil
                          message:message
                          delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles: nil];
    [alert show];
}

- (void)buttonMenuViewControllerDidCancel:(MBMenuController *)buttonMenu
{
    [buttonMenu hide];
}

@end
