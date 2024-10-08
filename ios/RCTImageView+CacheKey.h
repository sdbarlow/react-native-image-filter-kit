#ifndef RCTImageView_CacheKey_h
#define RCTImageView_CacheKey_h

#import <React/RCTView.h>
#import "IFKCacheable.h"
#import "IFKForwardDeclarations.h"

@interface RCTImageView (CacheKey) <IFKCacheable>
- (nonnull NSString *)cacheKey;
@end

#endif /* RCTImageView_CacheKey_h */