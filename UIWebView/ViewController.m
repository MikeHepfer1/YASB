//
//  ViewController.m
//  UIWebView
//
//  Created by iD Student on 6/28/13.
//  Copyright (c) 2013 Mike Hepfer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize addressBar, webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *address = @"http://www.google.com";
    NSURL *url = [NSURL URLWithString:address];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    [addressBar setText:address];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)goAddress: (id)sender
{
    NSURL *url = [NSURL URLWithString:[addressBar text]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    [addressBar resignFirstResponder];
}
-(IBAction)goBack: (id)sender
{
    [webView goBack];
}
-(IBAction)goForward: (id)sender
{
    [webView goForward];
}
-(BOOL)webView: (UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    if (navigationType == UIWebViewNavigationTypeLinkClicked)
        {
            NSURL *url = [request URL];
            if ([[url scheme] isEqualToString:@"http"])
            {
                [addressBar setText:[url absoluteString]];
                [self goAddress:nil];
            }
            return NO;
        }
        return YES;
}



@end
