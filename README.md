Welcome to the second edition of the ruby ports. by Rick Flores (nanotechz9l). 
==============
I'm starting to port all perl exploits used in Corelans "Exploit writing tutorial part 2 : Stack Based Overflows – 
jumping to shellcode" from perl to Ruby. I am just taking credit for porting his scripts from perl to ruby, ***AND nothing else.
Everything else is his original work.

I'm doing it to allow those interested in Ruby to move along quicker, by already having a ref.
This is purely done for educational purposes and to aide those new to Ruby exploit dev.

BEFORE YOU BEGIN :
These exploits have been verified to work with EasyRMtoMP3Converter.exe v2.7.3.700. If you havent done so already, you may download it here
You may need to create an account and login for the download.

If a register is loaded with an address that directly points at the shellcode, then you can do a call [reg] to jump directly to 
the shellcode. In other words, if ESP directly points at the shellcode (so the first byte of ESP is the first byte of your 
shellcode), then you can overwrite EIP with the address of “call esp”, and the shellcode will be executed. 
This works with all registers and is quite popular because kernel32.dll contains a lot of call [reg] addresses.
=end


![Screenshot](http://img515.imageshack.us/img515/9945/screenshot20130429at104.png)

## Pre Reqs

You *MUST have the following environment and software installed:

	EasyRMtoMP3Converter.exe v2.7.3.700
	
	Windows XP

## Usage
	N/A
	

## Features
	N/A

## Requirements
* See Pre Reqs above

## History
* 04/29/2013 - I will finish tutorial 2 as time permits. Finish meaning I will port it to ruby ofcourse.  

## To Do
* Port the remainder of COrelans tutorial from perl to ruby (as time permits).

## Credits
* Rick Flores (nanotechz9l) -- 0xnanoquetz9l[--at--]gmail.com

## Original Author and Ref:
	Corelanc0d3r
	*https://www.corelan.be/index.php/2009/07/23/writing-buffer-overflow-exploits-a-quick-and-basic-tutorial-part-2/


## License
This code is free software; you can redistribute it and/or modify it under the
terms of the new BSD License.
