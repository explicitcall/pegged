//
//  Action.m
//  pegged
//
//  Created by Matt Diephouse on 12/29/09.
//  This code is in the public domain.
//

#import "Action.h"


@implementation Action

//==================================================================================================
#pragma mark -
#pragma mark NSObject Methods
//==================================================================================================



//==================================================================================================
#pragma mark -
#pragma mark Node Methods
//==================================================================================================

- (NSString *) compile:(NSString *)parserClassName
{
    NSMutableString *code = [NSMutableString string];
    
    [code appendFormat:@"    [parser performAction:^(%@ *self, NSString *text){", parserClassName];
    [code appendString:_code];
    [code appendString:@"    }];"];
    
    return code;
}


//==================================================================================================
#pragma mark -
#pragma mark Public Methods
//==================================================================================================

+ (id) actionWithCode:(NSString *)code
{
    return [[[self class] alloc] initWithCode:code];
}


- (id) initWithCode:(NSString *)code
{
    self = [super init];
    
    if (self)
    {
        _code = [code copy];
    }
    
    return self;
}


@end
