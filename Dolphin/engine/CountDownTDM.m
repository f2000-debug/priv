//
//  class1.m
//  countDown
//
//  t.me/UltimateEngine
//

#import "CountDownTDM.h"

@implementation CountDownClass


- (instancetype)initWithKey:(unsigned int)playerKey WithCountr:(unsigned int)counter
{
    self = [super init];
    if (self) {
        self.PlayerKey = playerKey;
        self.Counter = counter;
    }
    return self;
}
@end
