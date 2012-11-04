//
//  ModalViewController.h
//  ModalViewSample
//
//  Created by okada yuichi on 12/11/04.
//  Copyright (c) 2012年 harusou apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalViewControllerDelegate;

@interface ModalViewController : UIViewController{
    
    id<ModalViewControllerDelegate>   _delegate;
    
}
@property (nonatomic, assign, readwrite) id<ModalViewControllerDelegate> delegate;

@end

@protocol ModalViewControllerDelegate<NSObject>

@required

- (void)didCancel;

@end