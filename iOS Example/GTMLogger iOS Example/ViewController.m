//
//  ViewController.m
//  GTMLogger iOS Example
//
//  Created by wangchen on 12-11-28.
//  Copyright (c) 2012年 小西科技. All rights reserved.
//

#import "ViewController.h"
#import "GTMLogger.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction)outputDebug:(id)sender {
    GTMLoggerDebug(@"Output Debug");
    NSLog(@"%d",__LINE__);
    NSLog(@"%s",__func__);
    
}

- (IBAction)outputInfo:(id)sender {
    GTMLoggerInfo(@"Output Info");
}

- (IBAction)outputError:(id)sender {
    GTMLoggerError(@"Output Error");
}

- (IBAction)outputAssert:(id)sender {
    GTMLoggerAssert(@"Output Assert");
}
@end
