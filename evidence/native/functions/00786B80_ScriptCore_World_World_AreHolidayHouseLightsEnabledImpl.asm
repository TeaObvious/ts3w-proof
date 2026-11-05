# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786b80 (ScriptCore.World::World_AreHolidayHouseLightsEnabledImpl)
Paired Ghidra pseudocode: 00786B80_ScriptCore_World_World_AreHolidayHouseLightsEnabledImpl.c
Window: [0x00786b80, 0x00786bc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786b80: 8b 0d c4 db 1e 01 85 c9 74 26 8b 44 24 08 8b 54
00786b90: 24 04 6a 00 50 52 e8 75 bc 4d 00 85 c0 74 11 8b
00786ba0: 80 ac 02 00 00 85 c0 74 07 8a 80 90 00 00 00 c3
00786bb0: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786b80 <.text+0x385b80>:
  786b80:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786b86:	85 c9                                           	test   ecx,ecx
  786b88:	74 26                                           	je     0x786bb0
  786b8a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  786b8e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786b92:	6a 00                                           	push   0x0
  786b94:	50                                              	push   eax
  786b95:	52                                              	push   edx
  786b96:	e8 75 bc 4d 00                                  	call   0xc62810
  786b9b:	85 c0                                           	test   eax,eax
  786b9d:	74 11                                           	je     0x786bb0
  786b9f:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  786ba5:	85 c0                                           	test   eax,eax
  786ba7:	74 07                                           	je     0x786bb0
  786ba9:	8a 80 90 00 00 00                               	mov    al,BYTE PTR [eax+0x90]
  786baf:	c3                                              	ret
  786bb0:	32 c0                                           	xor    al,al
  786bb2:	c3                                              	ret
  786bb3:	cc                                              	int3
  786bb4:	cc                                              	int3
  786bb5:	cc                                              	int3
  786bb6:	cc                                              	int3
  786bb7:	cc                                              	int3
  786bb8:	cc                                              	int3
  786bb9:	cc                                              	int3
  786bba:	cc                                              	int3
  786bbb:	cc                                              	int3
  786bbc:	cc                                              	int3
  786bbd:	cc                                              	int3
  786bbe:	cc                                              	int3
  786bbf:	cc                                              	int3
