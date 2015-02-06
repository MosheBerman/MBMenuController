//
//  PDButtonMenuViewController.h
//  MBMenuController
//
//  Created by Moshe Berman on 3/11/13.
//  Copyright (c) 2013 Moshe Berman. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MBMenuControllerDelegate;

@interface MBMenuController : UIViewController

@property (nonatomic, readonly, getter = isVisible) BOOL visible;
@property (nonatomic, assign) BOOL shrinksParentView;

@property (nonatomic, strong) UIColor *backgroundColor UI_APPEARANCE_SELECTOR;

@property (nonatomic, strong) NSArray *buttonTitles;
@property (nonatomic, assign) NSInteger cancelButtonIndex;

@property (nonatomic, assign) id<MBMenuControllerDelegate> delegate;


- (id)initWithButtonTitles:(NSArray *) buttonTitles;

- (void) showInView:(UIView*)view;
- (void) hide;

@end

@protocol MBMenuControllerDelegate <NSObject>

- (void) buttonMenuViewController:(MBMenuController *)buttonMenu buttonTappedAtIndex:(NSUInteger)index;
- (void) buttonMenuViewControllerDidCancel:(MBMenuController *)buttonMenu;

@end
