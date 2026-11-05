# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787900 (ScriptCore.World::World_HandToolGetObjectHeld)
Paired Ghidra pseudocode: 00787900_ScriptCore_World_World_HandToolGetObjectHeld.c
Window: [0x00787900, 0x00787920) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787900: e8 6b 6a 57 00 8b c8 85 c9 74 07 8b 41 08 8b 51
00787910: 0c c3 33 c0 33 d2 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787900 <.text+0x386900>:
  787900:	e8 6b 6a 57 00                                  	call   0xcfe370
  787905:	8b c8                                           	mov    ecx,eax
  787907:	85 c9                                           	test   ecx,ecx
  787909:	74 07                                           	je     0x787912
  78790b:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  78790e:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
  787911:	c3                                              	ret
  787912:	33 c0                                           	xor    eax,eax
  787914:	33 d2                                           	xor    edx,edx
  787916:	c3                                              	ret
  787917:	cc                                              	int3
  787918:	cc                                              	int3
  787919:	cc                                              	int3
  78791a:	cc                                              	int3
  78791b:	cc                                              	int3
  78791c:	cc                                              	int3
  78791d:	cc                                              	int3
  78791e:	cc                                              	int3
  78791f:	cc                                              	int3
