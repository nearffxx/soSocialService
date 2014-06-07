/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLSmuapiSocialMessaggio.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   smuapi/1.5
// Description:
//   Social mashup API
// Classes:
//   GTLSmuapiSocialMessaggio (0 custom class methods, 15 custom properties)

#import "GTLSmuapiSocialMessaggio.h"

#import "GTLSmuapiSocialCommento.h"

// ----------------------------------------------------------------------------
//
//   GTLSmuapiSocialMessaggio
//

@implementation GTLSmuapiSocialMessaggio
@dynamic action, caption, comment, commenti, createAt, from, identifier, like,
         link, photo, resend, text, type, user, valid;

+ (NSDictionary *)propertyToJSONKeyMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:@"id"
                                forKey:@"identifier"];
  return map;
}

+ (NSDictionary *)arrayPropertyToClassMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:[GTLSmuapiSocialCommento class]
                                forKey:@"commenti"];
  return map;
}

@end
