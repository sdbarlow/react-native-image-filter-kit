#ifndef RCTImageView_CacheKey_h
#define RCTImageView_CacheKey_h

#import <React/RCTView.h>
#import "IFKCacheable.h"

@interface RCTImageViewCacheKey : NSObject <IFKCacheable>

@property (nonatomic, weak) RCTView *imageView;

- (instancetype)initWithImageView:(RCTView *)imageView;
- (nonnull NSString *)cacheKey;

@end

#endif /* RCTImageView_CacheKey_h */