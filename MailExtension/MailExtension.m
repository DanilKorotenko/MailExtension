//
//  MailExtension.m
//  MailExtension
//
//  Created by Danil Korotenko on 5/19/23.
//

#import "MailExtension.h"



#import "ComposeSessionHandler.h"


@interface MailExtension ()





@end

@implementation MailExtension



- (id<MEComposeSessionHandler>)handlerForComposeSession:(MEComposeSession *)session {
    // Create a unique instance, since each compose window is separate.
    return [[ComposeSessionHandler alloc] init];
}



@end

