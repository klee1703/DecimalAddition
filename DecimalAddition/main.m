//
//  main.m
//  DecimalAdder
//
//  Created by Keith Lee on 4/2/13.
//  Copyright (c) 2013 Keith Lee. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are
//  permitted provided that the following conditions are met:
//
//   1. Redistributions of source code must retain the above copyright notice, this list of
//      conditions and the following disclaimer.
//
//   2. Redistributions in binary form must reproduce the above copyright notice, this list
//      of conditions and the following disclaimer in the documentation and/or other materials
//      provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY Keith Lee ''AS IS'' AND ANY EXPRESS OR IMPLIED
//  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
//  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Keith Lee OR
//  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
//  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
//  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//  The views and conclusions contained in the software and documentation are those of the
//  authors and should not be interpreted as representing official policies, either expressed
//  or implied, of Keith Lee.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    // Create two NSDecimal numbers using the NSDecimalNumber class
    NSDecimal dec1 = [[NSDecimalNumber decimalNumberWithString:@"1.534"] decimalValue];
    NSDecimal dec2 = [[NSDecimalNumber decimalNumberWithString:@"2.011"] decimalValue];
    
    // Declare result and rounded result variables for the calculations
    NSDecimal result;
    NSDecimal roundedResult;
    
    // Now perform the decimal addition
    NSDecimalAdd(&result, &dec1, &dec2, NSRoundPlain);
    NSLog(@"Sum = %@", NSDecimalString(&result, nil));
    
    // Demonstrate rounding the result using the available rounding modes
    NSDecimalRound(&roundedResult, &result, 2, NSRoundUp);
    NSLog(@"Sum (round up) = %@", NSDecimalString(&roundedResult, nil));
    NSDecimalRound(&roundedResult, &result, 2, NSRoundDown);
    NSLog(@"Sum (round down) = %@", NSDecimalString(&roundedResult, nil));
    NSDecimalRound(&roundedResult, &result, 2, NSRoundPlain);
    NSLog(@"Sum (round plain) = %@", NSDecimalString(&roundedResult, nil));
    NSDecimalRound(&roundedResult, &result, 2, NSRoundBankers);
    NSLog(@"Sum (round bankers) = %@", NSDecimalString(&roundedResult, nil));
  }
  return 0;
}

