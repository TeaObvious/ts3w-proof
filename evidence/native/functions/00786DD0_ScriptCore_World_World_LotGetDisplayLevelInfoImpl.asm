# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786dd0 (ScriptCore.World::World_LotGetDisplayLevelInfoImpl)
Paired Ghidra pseudocode: 00786DD0_ScriptCore_World_World_LotGetDisplayLevelInfoImpl.c
Window: [0x00786dd0, 0x00786e70) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786dd0: 8b 0d c4 db 1e 01 85 c9 56 8b 74 24 08 c7 46 0c
00786de0: 00 00 00 00 c7 46 08 00 00 00 00 c7 46 04 00 00
00786df0: 00 00 c7 06 00 00 00 00 74 67 8b 44 24 10 8b 54
00786e00: 24 0c 6a 00 50 52 e8 05 ba 4d 00 85 c0 74 52 8b
00786e10: 88 9c 03 00 00 8b 90 7c 01 00 00 89 0e 8b 88 84
00786e20: 01 00 00 89 56 04 8b 90 80 01 00 00 89 4e 0c 8b
00786e30: 88 a0 03 00 00 8b 80 ac 02 00 00 85 c0 89 56 08
00786e40: 89 4e 10 89 56 14 74 19 52 8b c8 e8 40 d8 40 00
00786e50: 84 c0 8b c6 74 0d 8b 56 08 83 c2 01 89 56 14 5e
00786e60: c3 8b c6 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786dd0 <.text+0x385dd0>:
  786dd0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786dd6:	85 c9                                           	test   ecx,ecx
  786dd8:	56                                              	push   esi
  786dd9:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  786ddd:	c7 46 0c 00 00 00 00                            	mov    DWORD PTR [esi+0xc],0x0
  786de4:	c7 46 08 00 00 00 00                            	mov    DWORD PTR [esi+0x8],0x0
  786deb:	c7 46 04 00 00 00 00                            	mov    DWORD PTR [esi+0x4],0x0
  786df2:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  786df8:	74 67                                           	je     0x786e61
  786dfa:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  786dfe:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  786e02:	6a 00                                           	push   0x0
  786e04:	50                                              	push   eax
  786e05:	52                                              	push   edx
  786e06:	e8 05 ba 4d 00                                  	call   0xc62810
  786e0b:	85 c0                                           	test   eax,eax
  786e0d:	74 52                                           	je     0x786e61
  786e0f:	8b 88 9c 03 00 00                               	mov    ecx,DWORD PTR [eax+0x39c]
  786e15:	8b 90 7c 01 00 00                               	mov    edx,DWORD PTR [eax+0x17c]
  786e1b:	89 0e                                           	mov    DWORD PTR [esi],ecx
  786e1d:	8b 88 84 01 00 00                               	mov    ecx,DWORD PTR [eax+0x184]
  786e23:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  786e26:	8b 90 80 01 00 00                               	mov    edx,DWORD PTR [eax+0x180]
  786e2c:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
  786e2f:	8b 88 a0 03 00 00                               	mov    ecx,DWORD PTR [eax+0x3a0]
  786e35:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  786e3b:	85 c0                                           	test   eax,eax
  786e3d:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  786e40:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
  786e43:	89 56 14                                        	mov    DWORD PTR [esi+0x14],edx
  786e46:	74 19                                           	je     0x786e61
  786e48:	52                                              	push   edx
  786e49:	8b c8                                           	mov    ecx,eax
  786e4b:	e8 40 d8 40 00                                  	call   0xb94690
  786e50:	84 c0                                           	test   al,al
  786e52:	8b c6                                           	mov    eax,esi
  786e54:	74 0d                                           	je     0x786e63
  786e56:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  786e59:	83 c2 01                                        	add    edx,0x1
  786e5c:	89 56 14                                        	mov    DWORD PTR [esi+0x14],edx
  786e5f:	5e                                              	pop    esi
  786e60:	c3                                              	ret
  786e61:	8b c6                                           	mov    eax,esi
  786e63:	5e                                              	pop    esi
  786e64:	c3                                              	ret
  786e65:	cc                                              	int3
  786e66:	cc                                              	int3
  786e67:	cc                                              	int3
  786e68:	cc                                              	int3
  786e69:	cc                                              	int3
  786e6a:	cc                                              	int3
  786e6b:	cc                                              	int3
  786e6c:	cc                                              	int3
  786e6d:	cc                                              	int3
  786e6e:	cc                                              	int3
  786e6f:	cc                                              	int3
