/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLSmuapiSocialCommento.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   smuapi/1.5
// Description:
//   Social mashup API
// Classes:
//   GTLSmuapiSocialCommento (0 custom class methods, 4 custom properties)

#import "GTLSmuapiSocialCommento.h"

// ----------------------------------------------------------------------------
//
//   GTLSmuapiSocialCommento
//

@implementation GTLSmuapiSocialCommento
@dynamic identifier, link, text, user;

+ (NSDictionary *)propertyToJSONKeyMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:@"id"
                                forKey:@"identifier"];
  return map;
}

@end
