//
//  class1.h
//  countDown
//
//  t.me/UltimateEngine
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CountDownClass : NSObject
@property unsigned int PlayerKey;
@property unsigned int Counter;
-(instancetype)initWithKey:(unsigned int)playerKey WithCountr:(unsigned int)counter;

@end

NS_ASSUME_NONNULL_END
