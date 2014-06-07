/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLServiceSmuapi.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   smuapi/1.5
// Description:
//   Social mashup API
// Classes:
//   GTLServiceSmuapi (0 custom class methods, 0 custom properties)

#import "GTLSmuapi.h"

@implementation GTLServiceSmuapi

#if DEBUG
// Method compiled in debug builds just to check that all the needed support
// classes are present at link time.
+ (NSArray *)checkClasses {
  NSArray *classes = [NSArray arrayWithObjects:
                      [GTLQuerySmuapi class],
                      [GTLSmuapiSocialCommento class],
                      [GTLSmuapiSocialMessaggio class],
                      [GTLSmuapiSocialMessaggioCollection class],
                      [GTLSmuapiUtente class],
                      [GTLSmuapiUtenteCollection class],
                      nil];
  return classes;
}
#endif  // DEBUG

- (id)init {
  self = [super init];
  if (self) {
    // Version from discovery.
    self.apiVersion = @"1.5";

    // From discovery.  Where to send JSON-RPC.
    // Turn off prettyPrint for this service to save bandwidth (especially on
    // mobile). The fetcher logging will pretty print.
    self.rpcURL = [NSURL URLWithString:@"https://sosocialmashup.appspot.com/_ah/api/rpc?prettyPrint=false"];
  }
  return self;
}

@end