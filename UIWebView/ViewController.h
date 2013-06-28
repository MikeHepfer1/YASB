//
//  ViewController.h
//  UIWebView
//
//  Created by iD Student on 6/28/13.
//  Copyright (c) 2013 Mike Hepfer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIWebView *webView;
    IBOutlet UITextField *addressBar;
}
@property(nonatomic, retain) IBOutlet UIWebView *webView;
@property(nonatomic, retain) IBOutlet UITextField *addressBar;

-(IBAction)goAddress: (id)sender;
-(IBAction)goBack: (id)sender;
-(IBAction)goForward: (id)sender;


@end
