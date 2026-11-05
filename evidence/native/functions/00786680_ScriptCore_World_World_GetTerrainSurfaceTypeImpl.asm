# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786680 (ScriptCore.World::World_GetTerrainSurfaceTypeImpl)
Paired Ghidra pseudocode: 00786680_ScriptCore_World_World_GetTerrainSurfaceTypeImpl.c
Window: [0x00786680, 0x007866b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007866b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786680: 8b 0d c4 db 1e 01 85 c9 74 22 8b 44 24 0c d9 44
00786690: 24 08 68 ff ff 00 00 50 83 ec 08 d9 5c 24 04 d9
007866a0: 44 24 14 d9 1c 24 e8 55 58 4e 00 c3 33 c0 c3 cc

LINEAR DISASSEMBLY
00786680 <.text+0x385680>:
  786680:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786686:	85 c9                                           	test   ecx,ecx
  786688:	74 22                                           	je     0x7866ac
  78668a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78668e:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  786692:	68 ff ff 00 00                                  	push   0xffff
  786697:	50                                              	push   eax
  786698:	83 ec 08                                        	sub    esp,0x8
  78669b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78669f:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  7866a3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7866a6:	e8 55 58 4e 00                                  	call   0xc6bf00
  7866ab:	c3                                              	ret
  7866ac:	33 c0                                           	xor    eax,eax
  7866ae:	c3                                              	ret
  7866af:	cc                                              	int3
