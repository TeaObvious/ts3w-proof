# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787940 (ScriptCore.World::World_HandToolShow)
Paired Ghidra pseudocode: 00787940_ScriptCore_World_World_HandToolShow.c
Window: [0x00787940, 0x00787960) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787940: e8 5b 1a fe ff 8b 10 6a 00 6a 00 8b c8 8b 42 18
00787950: 68 cb 10 69 04 ff d0 b0 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787940 <.text+0x386940>:
  787940:	e8 5b 1a fe ff                                  	call   0x7693a0
  787945:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787947:	6a 00                                           	push   0x0
  787949:	6a 00                                           	push   0x0
  78794b:	8b c8                                           	mov    ecx,eax
  78794d:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  787950:	68 cb 10 69 04                                  	push   0x46910cb
  787955:	ff d0                                           	call   eax
  787957:	b0 01                                           	mov    al,0x1
  787959:	c3                                              	ret
  78795a:	cc                                              	int3
  78795b:	cc                                              	int3
  78795c:	cc                                              	int3
  78795d:	cc                                              	int3
  78795e:	cc                                              	int3
  78795f:	cc                                              	int3
