# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785de0 (ScriptCore.World::World_HasDiagonalWallImpl)
Paired Ghidra pseudocode: 00785DE0_ScriptCore_World_World_HasDiagonalWallImpl.c
Window: [0x00785de0, 0x00785e40) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785de0: 51 8b 0d c4 db 1e 01 85 c9 74 43 8b 44 24 0c 8b
00785df0: 54 24 08 6a 00 50 52 e8 14 ca 4d 00 85 c0 74 2e
00785e00: 8b 80 98 02 00 00 85 c0 74 24 8a 4c 24 10 8a 54
00785e10: 24 14 88 0c 24 8a 4c 24 18 88 54 24 01 8d 14 24
00785e20: 88 4c 24 02 52 8b c8 e8 14 39 3c 00 59 c3 32 c0
00785e30: 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785de0 <.text+0x384de0>:
  785de0:	51                                              	push   ecx
  785de1:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785de7:	85 c9                                           	test   ecx,ecx
  785de9:	74 43                                           	je     0x785e2e
  785deb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  785def:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  785df3:	6a 00                                           	push   0x0
  785df5:	50                                              	push   eax
  785df6:	52                                              	push   edx
  785df7:	e8 14 ca 4d 00                                  	call   0xc62810
  785dfc:	85 c0                                           	test   eax,eax
  785dfe:	74 2e                                           	je     0x785e2e
  785e00:	8b 80 98 02 00 00                               	mov    eax,DWORD PTR [eax+0x298]
  785e06:	85 c0                                           	test   eax,eax
  785e08:	74 24                                           	je     0x785e2e
  785e0a:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
  785e0e:	8a 54 24 14                                     	mov    dl,BYTE PTR [esp+0x14]
  785e12:	88 0c 24                                        	mov    BYTE PTR [esp],cl
  785e15:	8a 4c 24 18                                     	mov    cl,BYTE PTR [esp+0x18]
  785e19:	88 54 24 01                                     	mov    BYTE PTR [esp+0x1],dl
  785e1d:	8d 14 24                                        	lea    edx,[esp]
  785e20:	88 4c 24 02                                     	mov    BYTE PTR [esp+0x2],cl
  785e24:	52                                              	push   edx
  785e25:	8b c8                                           	mov    ecx,eax
  785e27:	e8 14 39 3c 00                                  	call   0xb49740
  785e2c:	59                                              	pop    ecx
  785e2d:	c3                                              	ret
  785e2e:	32 c0                                           	xor    al,al
  785e30:	59                                              	pop    ecx
  785e31:	c3                                              	ret
  785e32:	cc                                              	int3
  785e33:	cc                                              	int3
  785e34:	cc                                              	int3
  785e35:	cc                                              	int3
  785e36:	cc                                              	int3
  785e37:	cc                                              	int3
  785e38:	cc                                              	int3
  785e39:	cc                                              	int3
  785e3a:	cc                                              	int3
  785e3b:	cc                                              	int3
  785e3c:	cc                                              	int3
  785e3d:	cc                                              	int3
  785e3e:	cc                                              	int3
  785e3f:	cc                                              	int3
