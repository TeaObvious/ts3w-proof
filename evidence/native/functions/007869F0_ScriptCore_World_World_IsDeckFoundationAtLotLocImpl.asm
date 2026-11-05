# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007869f0 (ScriptCore.World::World_IsDeckFoundationAtLotLocImpl)
Paired Ghidra pseudocode: 007869F0_ScriptCore_World_World_IsDeckFoundationAtLotLocImpl.c
Window: [0x007869f0, 0x00786a50) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007869f0: 8b 0d c4 db 1e 01 83 ec 0c 85 c9 74 46 8b 44 24
00786a00: 14 8b 54 24 10 6a 00 50 52 e8 02 be 4d 00 85 c0
00786a10: 74 31 f3 0f 10 44 24 18 8b 4c 24 20 8d 14 24 52
00786a20: f3 0f 11 44 24 04 f3 0f 10 44 24 20 50 f3 0f 11
00786a30: 44 24 0c 89 4c 24 10 e8 d4 83 37 00 83 c4 08 83
00786a40: c4 0c c3 32 c0 83 c4 0c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007869f0 <.text+0x3859f0>:
  7869f0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7869f6:	83 ec 0c                                        	sub    esp,0xc
  7869f9:	85 c9                                           	test   ecx,ecx
  7869fb:	74 46                                           	je     0x786a43
  7869fd:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  786a01:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  786a05:	6a 00                                           	push   0x0
  786a07:	50                                              	push   eax
  786a08:	52                                              	push   edx
  786a09:	e8 02 be 4d 00                                  	call   0xc62810
  786a0e:	85 c0                                           	test   eax,eax
  786a10:	74 31                                           	je     0x786a43
  786a12:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  786a18:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  786a1c:	8d 14 24                                        	lea    edx,[esp]
  786a1f:	52                                              	push   edx
  786a20:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
  786a26:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  786a2c:	50                                              	push   eax
  786a2d:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  786a33:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  786a37:	e8 d4 83 37 00                                  	call   0xafee10
  786a3c:	83 c4 08                                        	add    esp,0x8
  786a3f:	83 c4 0c                                        	add    esp,0xc
  786a42:	c3                                              	ret
  786a43:	32 c0                                           	xor    al,al
  786a45:	83 c4 0c                                        	add    esp,0xc
  786a48:	c3                                              	ret
  786a49:	cc                                              	int3
  786a4a:	cc                                              	int3
  786a4b:	cc                                              	int3
  786a4c:	cc                                              	int3
  786a4d:	cc                                              	int3
  786a4e:	cc                                              	int3
  786a4f:	cc                                              	int3
