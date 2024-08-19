#import <UIKit/UIKit.h>
#import "IFKForwardDeclarations.h"

@class IFKPostProcessor;

@interface IFKFilterableImage : NSObject

- (nonnull instancetype)initWithTarget:(nonnull RCTImageView *)target
                        originalImage:(nonnull UIImage *)originalImage
                               config:(nonnull NSObject *)config
                       postProcessors:(nonnull NSArray<IFKPostProcessor *> *)postProcessors;

- (nonnull RCTImageView *)target;
- (nonnull UIImage *)originalImage;
- (nonnull NSString *)config;
- (nonnull NSArray<IFKPostProcessor *> *)postProcessors;

@end