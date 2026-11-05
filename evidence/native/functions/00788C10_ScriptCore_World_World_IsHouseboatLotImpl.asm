# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788c10 (ScriptCore.World::World_IsHouseboatLotImpl)
Paired Ghidra pseudocode: 00788C10_ScriptCore_World_World_IsHouseboatLotImpl.c
Window: [0x00788c10, 0x00788c40) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788c10: 8b 0d c4 db 1e 01 85 c9 74 21 8b 44 24 08 8b 54
00788c20: 24 04 6a 00 50 52 e8 e5 9b 4d 00 85 c0 74 0c 80
00788c30: b8 bc 04 00 00 00 74 03 b0 01 c3 32 c0 c3 cc cc

LINEAR DISASSEMBLY
00788c10 <.text+0x387c10>:
  788c10:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788c16:	85 c9                                           	test   ecx,ecx
  788c18:	74 21                                           	je     0x788c3b
  788c1a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  788c1e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788c22:	6a 00                                           	push   0x0
  788c24:	50                                              	push   eax
  788c25:	52                                              	push   edx
  788c26:	e8 e5 9b 4d 00                                  	call   0xc62810
  788c2b:	85 c0                                           	test   eax,eax
  788c2d:	74 0c                                           	je     0x788c3b
  788c2f:	80 b8 bc 04 00 00 00                            	cmp    BYTE PTR [eax+0x4bc],0x0
  788c36:	74 03                                           	je     0x788c3b
  788c38:	b0 01                                           	mov    al,0x1
  788c3a:	c3                                              	ret
  788c3b:	32 c0                                           	xor    al,al
  788c3d:	c3                                              	ret
  788c3e:	cc                                              	int3
  788c3f:	cc                                              	int3
