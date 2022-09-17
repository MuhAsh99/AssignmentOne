//
//  ImageModel.m
//  AssignmentOne
//
//  Created by Kas Taghavi on 9/15/22.
//

#import "ImageModel.h"

@interface ImageModel ()

@property (strong, nonatomic) NSArray* imageNames;
@property (strong, nonatomic) NSDictionary* images;

@end

@implementation ImageModel
@synthesize imageNames = _imageNames;
@synthesize images = _images;

+(ImageModel*)sharedInstance{
    static ImageModel* _sharedInstance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        _sharedInstance = [[ImageModel alloc] init];
    } );
    return _sharedInstance;
}

-(NSArray*) imageNames{
    if(!_imageNames)
        _imageNames = @[@"DallasM",@"LAM",@"LondonM", @"NYCM", @"TokyoM", @"DallasN",@"LAN",@"LondonN", @"NYCN",@"TokyoN"];
    
    return _imageNames;
}

-(NSDictionary*) images{
    if (!_images)
        _images = @{@"DallasM" : [UIImage imageNamed:@"DallasM"], @"LAM" : [UIImage imageNamed:@"LAM"], @"LondonM" : [UIImage imageNamed:@"LondonM"], @"NYCM" : [UIImage imageNamed:@"NYCM"], @"TokyoM" : [UIImage imageNamed:@"TokyoM"], @"DallasN" : [UIImage imageNamed:@"DallasN"], @"LAN" : [UIImage imageNamed:@"LAN"], @"LondonN" : [UIImage imageNamed:@"LondonN"], @"NYCN" : [UIImage imageNamed:@"NYCN"], @"TokyoN" : [UIImage imageNamed:@"TokyoN"]};
    return _images;
}


-(UIImage*)getImageWithName:(NSString*)name{
    return [self.images objectForKey:name];
}

-(UIImage*)getImageWithIndex:(NSInteger)index{
    return [self.images objectForKey:self.imageNames[index]];
}

-(NSInteger) numberOfImages{
    return [self.images count];
}

-(NSString*) getImageNameForIndex:(NSInteger)index {
    return self.imageNames[index];
}
//
//

@end
