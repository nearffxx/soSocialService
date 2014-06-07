//
//  ViewController.m
//  soSocialService
//
//  Created by nearffx on 06/06/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "GTLServiceSmuapi.h"
#import "GTLQuerySmuapi.h"
#import "GTMHTTPFetcherLogging.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (GTLServiceSmuapi *)smuService
{
    static GTLServiceSmuapi *service = nil;
    if (!service) {
        service = [[GTLServiceSmuapi alloc] init];
        service.retryEnabled = YES;
        [GTMHTTPFetcher setLoggingEnabled:YES];
    }
    return service;
}

- (void)query1
{
    GTLServiceSmuapi *service = [self smuService];
    GTLQuerySmuapi *query = [GTLQuerySmuapi queryForGetAllFriends];
    [service executeQuery:query completionHandler:^(GTLServiceTicket *ticket, id object, NSError *error) {
        NSArray *items = [object items];
    }];
}

@end
