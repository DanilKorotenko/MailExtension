//
//  ComposeSessionHandler.m
//  MailExtension
//
//  Created by Danil Korotenko on 5/19/23.
//

#import "ComposeSessionHandler.h"
#import "ComposeSessionViewController.h"
#import <dispatch/dispatch.h>

@implementation ComposeSessionHandler

- (void)mailComposeSessionDidBegin:(MEComposeSession *)session
{
    // Perform any setup necessary for handling the compose session.
}

- (void)mailComposeSessionDidEnd:(MEComposeSession *)session
{
    // Perform any cleanup now that the compose session is over.
}

#pragma mark -

- (nonnull MEExtensionViewController *)viewControllerForSession:(nonnull MEComposeSession *)session
{
    return [[ComposeSessionViewController alloc] initWithNibName:@"ComposeSessionViewController" bundle:[NSBundle mainBundle]];
}

#pragma mark -

- (void)session:(MEComposeSession *)session canSendMessageWithCompletionHandler:
    (void (^)(NSError * _Nullable))completion
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC), queue,
    ^{
        completion(nil);
    });
}

@end

