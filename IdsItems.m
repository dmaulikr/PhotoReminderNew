//------------------------------------------------------------------------------
// <wsdl2code-generated>
// This code was generated by http://www.wsdl2code.com iPhone version 2.0
// Date Of Creation: 8/27/2014 3:43:10 PM
//
//  Please dont change this code, regeneration will override your changes
//</wsdl2code-generated>
//
//------------------------------------------------------------------------------
//
//This source code was auto-generated by Wsdl2Code Version
//

#import "IdsItems.h" 


@implementation IdsItems

-(id)initWithArray:(NSArray*)array {
    self = [super init];
    if (self) {
        @try {
            for (int i0 = 0; i0 < [array count]; i0++)
            {
                if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"clientItemID"]==NSOrderedSame)){
                    NSString *nodeContentValue = [[NSString alloc]initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    [self setClientItemID:[nodeContentValue intValue]];
                }
                else if ( ([[array objectAtIndex:i0] objectForKey:@"nodeContent"] !=nil) &&  ([[[array objectAtIndex:i0]objectForKey:@"nodeName"]caseInsensitiveCompare:@"serverItemID"]==NSOrderedSame)){
                    NSString *nodeContentValue = [[NSString alloc]initWithString:[[array objectAtIndex:i0] objectForKey:@"nodeContent"]];
                    [self setServerItemID:[nodeContentValue intValue]];
                }
            }
        }
        @catch(NSException *ex){
        }
    }
    return self;
}
-(NSString*)toString:(BOOL)addNameWrap {
    NSMutableString *nsString = [NSMutableString string];
    if (addNameWrap == YES)
        [nsString appendString:@"<IdsItems>" ];
    [nsString appendFormat:@"<clientItemID>%d</clientItemID>" , [self clientItemID]];
    [nsString appendFormat:@"<serverItemID>%d</serverItemID>" , [self serverItemID]];
    if (addNameWrap == YES)
        [nsString appendString:@"</IdsItems>" ];
    return nsString;
}
#pragma mark - NSCoding
-(id)initWithCoder:(NSCoder *)decoder{
    self = [super init];
    if (self){
        self.clientItemID = [decoder decodeInt32ForKey:@"clientItemID"];
        self.serverItemID = [decoder decodeInt32ForKey:@"serverItemID"];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeInt32:self.clientItemID forKey:@"clientItemID"];
    [encoder encodeInt32:self.serverItemID forKey:@"serverItemID"];
}
-(id)copyWithZone:(NSZone *)zone {
    IdsItems *finalCopy = [[[self class] allocWithZone: zone] init];
    
    finalCopy.clientItemID = self.clientItemID;
    
    finalCopy.serverItemID = self.serverItemID;
    
    return finalCopy;
}

@end