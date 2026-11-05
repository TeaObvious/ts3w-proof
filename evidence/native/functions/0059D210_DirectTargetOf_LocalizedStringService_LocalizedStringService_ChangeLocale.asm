# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0059d210 (DirectTargetOf_LocalizedStringService_LocalizedStringService_ChangeLocale)
Paired Ghidra pseudocode: 0059D210_DirectTargetOf_LocalizedStringService_LocalizedStringService_ChangeLocale.c
Window: [0x0059d210, 0x0059d230) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0059d230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0059d210: 8b 0d d0 f2 1c 01 85 c9 74 15 8b 44 24 04 50 e8
0059d220: ac fb ff ff 8b 0d d0 f2 1c 01 e9 61 e4 ff ff c3

LINEAR DISASSEMBLY
0059d210 <.text+0x19c210>:
  59d210:	8b 0d d0 f2 1c 01                               	mov    ecx,DWORD PTR ds:0x11cf2d0
  59d216:	85 c9                                           	test   ecx,ecx
  59d218:	74 15                                           	je     0x59d22f
  59d21a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  59d21e:	50                                              	push   eax
  59d21f:	e8 ac fb ff ff                                  	call   0x59cdd0
  59d224:	8b 0d d0 f2 1c 01                               	mov    ecx,DWORD PTR ds:0x11cf2d0
  59d22a:	e9 61 e4 ff ff                                  	jmp    0x59b690
  59d22f:	c3                                              	ret
