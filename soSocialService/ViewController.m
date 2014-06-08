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
@property (weak, nonatomic) IBOutlet UITextField *tTo;
@property (weak, nonatomic) IBOutlet UITextField *tTokenFB;
@property (weak, nonatomic) IBOutlet UITextField *tTokenTW1;
@property (weak, nonatomic) IBOutlet UITextField *tTokenTW2;
@property (weak, nonatomic) IBOutlet UITextView *tMsg;
@end

@implementation ViewController

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if([textField tag] == 1)
        [self animateTextView:YES :108];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if([textField tag] == 1)
        [self animateTextView:NO :108];
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    [self animateTextView:YES :216];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    [self animateTextView:NO :216];
}

- (void) animateTextView:(BOOL) up :(int) dist
{
    const int movementDistance = dist; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    int movement = (up ? -movementDistance : movementDistance);
    NSLog(@"%d",movement);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView
{
    [textView resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
 replacementText:(NSString *)text
{
    // Any new character added is passed in as the "text" parameter
    if ([text isEqualToString:@"\n"]) {
        // Be sure to test for equality using the "isEqualToString" message
        [textView resignFirstResponder];
        
        // Return FALSE so that the final '\n' character doesn't get added
        return FALSE;
    }
    // For any other character return TRUE so that the text gets added to the view
    return TRUE;
}

- (void)viewDidLoad
{
    self.tTo.delegate = self;
    self.tTokenFB.delegate = self;
    self.tTokenTW1.delegate = self;
    self.tTokenTW2.delegate = self;
    self.tMsg.delegate = self;
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

- (IBAction)SendMsg:(id)sender
{
    GTLServiceSmuapi *service = [self smuService];
    GTLQuerySmuapi *query = [GTLQuerySmuapi queryForPostStatusWithMessage:self.tMsg.text to:self.tTo.text];
    query.tokenFb = self.tTokenFB.text;
    query.tokenTw1 = self.tTokenTW1.text;
    query.tokenTw2 = self.tTokenTW2.text;
    [service executeQuery:query completionHandler:^(GTLServiceTicket *ticket, id object, NSError *error) {}];
     UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Message Status:"
                  message: @"Sent:"
                  delegate: self
                  cancelButtonTitle:@"Cancel"
                  otherButtonTitles:@"OK",nil];


    [alert show];
 }

@end
