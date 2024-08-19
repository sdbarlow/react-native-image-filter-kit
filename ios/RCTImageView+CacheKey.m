#import "RCTImageView+CacheKey.h"
#import <React/RCTImageSource.h>
#import "NSArray+FilterMapReduce.h"

@implementation RCTImageViewCacheKey

- (instancetype)initWithImageView:(RCTView *)imageView {
    self = [super init];
    if (self) {
        _imageView = imageView;
    }
    return self;
}

- (nonnull NSString *)cacheKey
{
    // Assuming imageSources and resizeMode are properties of RCTImageView
    NSArray<RCTImageSource *> *imageSources = [self.imageView valueForKey:@"imageSources"];
    NSInteger resizeMode = [[self.imageView valueForKey:@"resizeMode"] integerValue];
    
    return [imageSources reduce:^id(NSString *key, RCTImageSource *source, int idx) {
        return [NSString stringWithFormat:
                @"%@(%@_%f_%@)",
                key,
                [NSValue valueWithCGSize:source.size],
                source.scale,
                source.request.URL.absoluteString];
        
    } init:[NSString stringWithFormat:@"%ld", (long)resizeMode]];
}

@end

// Category to add the cacheKey method to RCTImageView
@implementation RCTView (CacheKey)

- (nonnull NSString *)cacheKey
{
    RCTImageViewCacheKey *cacheKey = [[RCTImageViewCacheKey alloc] initWithImageView:self];
    return [cacheKey cacheKey];
}

@end