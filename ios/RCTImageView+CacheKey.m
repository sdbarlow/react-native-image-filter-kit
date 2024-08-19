#import "RCTImageView+CacheKey.h"
#import <React/RCTImageSource.h>
#import "NSArray+FilterMapReduce.h"

@implementation RCTImageView (CacheKey)

- (nonnull NSString *)cacheKey
{
    // Assuming imageSources and resizeMode are properties of RCTImageView
    // If they're not, you may need to adjust this implementation
    NSArray<RCTImageSource *> *imageSources = [self valueForKey:@"imageSources"];
    NSInteger resizeMode = [[self valueForKey:@"resizeMode"] integerValue];
    
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