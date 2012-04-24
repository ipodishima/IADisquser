//
// IADisqusComment.m
// Disquser
// 
// Copyright (c) 2011 Ikhsan Assaat. All Rights Reserved 
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//


#import "IADisqusComment.h"

@implementation IADisqusComment

@synthesize forumName, authorName, authorAvatar, authorEmail, authorURL, rawMessage, htmlMessage, date, likes, dislikes, ipAddress, threadID;

- (id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self)
    {
        self.forumName = [aDecoder decodeObjectForKey:@"forumName"];
        self.authorName = [aDecoder decodeObjectForKey:@"authorName"];
        self.authorAvatar = [aDecoder decodeObjectForKey:@"authorAvatar"];
        self.authorEmail = [aDecoder decodeObjectForKey:@"authorEmail"];
        self.authorURL = [aDecoder decodeObjectForKey:@"authorURL"];
        self.rawMessage = [aDecoder decodeObjectForKey:@"rawMessage"];
        self.htmlMessage = [aDecoder decodeObjectForKey:@"htmlMessage"];
        self.date = [aDecoder decodeObjectForKey:@"date"];
        self.likes = [aDecoder decodeObjectForKey:@"likes"];
        self.dislikes = [aDecoder decodeObjectForKey:@"dislikes"];
        self.ipAddress = [aDecoder decodeObjectForKey:@"ipAddress"];
        self.threadID = [aDecoder decodeObjectForKey:@"threadID"];
    }
    return self;
}


- (void) encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.forumName forKey:@"forumName"];
    [aCoder encodeObject:self.authorName forKey:@"authorName"];
    [aCoder encodeObject:self.authorAvatar forKey:@"authorAvatar"];
    [aCoder encodeObject:self.authorEmail forKey:@"authorEmail"];
    [aCoder encodeObject:self.authorURL forKey:@"authorURL"];
    [aCoder encodeObject:self.rawMessage forKey:@"rawMessage"];
    [aCoder encodeObject:self.htmlMessage forKey:@"htmlMessage"];
    [aCoder encodeObject:self.date forKey:@"date"];
    [aCoder encodeObject:self.likes forKey:@"likes"];
    [aCoder encodeObject:self.dislikes forKey:@"dislikes"];
    [aCoder encodeObject:self.ipAddress forKey:@"ipAddress"];
    [aCoder encodeObject:self.threadID forKey:@"threadID"];
}

- (void)dealloc {
    [forumName release];
    [authorName release];
    [authorAvatar release];
    [authorEmail release];
    [authorURL release];
    [rawMessage release];
    [htmlMessage release];
    [likes release];
    [dislikes release];
    [ipAddress release];
    [date release];
    [threadID release];
    
    [super dealloc];
}

@end
