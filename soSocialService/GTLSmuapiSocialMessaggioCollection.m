/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLSmuapiSocialMessaggioCollection.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   smuapi/1.5
// Description:
//   Social mashup API
// Classes:
//   GTLSmuapiSocialMessaggioCollection (0 custom class methods, 1 custom properties)

#import "GTLSmuapiSocialMessaggioCollection.h"

#import "GTLSmuapiSocialMessaggio.h"

// ----------------------------------------------------------------------------
//
//   GTLSmuapiSocialMessaggioCollection
//

@implementation GTLSmuapiSocialMessaggioCollection
@dynamic items;

+ (NSDictionary *)arrayPropertyToClassMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:[GTLSmuapiSocialMessaggio class]
                                forKey:@"items"];
  return map;
}

@end
