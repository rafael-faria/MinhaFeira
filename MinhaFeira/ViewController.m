//
//  ViewController.m
//  MinhaFeira
//
//  Created by Rafael Alexandre Faria1 on 3/4/15.
//  Copyright (c) 2015 Rafael Alexandre Faria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)Entra:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta=0.1;
    span.longitudeDelta=0.1;
    
    CLLocationCoordinate2D location= CLLocationCoordinate2DMake(-25.4503449, -49.2546796);
    
    region.span=span;
    region.center=location;
    
    [_mapView setRegion:region animated:TRUE];
    [_mapView regionThatFits:region];
    _mapView.showsUserLocation = YES;
    _mapView.userTrackingMode = MKUserTrackingModeFollow;
    
   // [_mapView set]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
