# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786c20 (ScriptCore.World::World_TreesWithinRadialRangeImpl)
Paired Ghidra pseudocode: 00786C20_ScriptCore_World_World_TreesWithinRadialRangeImpl.c
Window: [0x00786c20, 0x00786c80) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786c20: 55 8b ec 83 e4 f0 83 ec 10 d9 45 1c f3 0f 10 4d
00786c30: 18 f3 0f 10 45 10 8b 55 08 51 8b 4d 0c d9 1c 24
00786c40: 8d 44 24 04 f3 0f 11 4c 24 0c f3 0f 10 4d 14 50
00786c50: f3 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44
00786c60: 24 08 0f 28 44 24 08 51 52 0f 29 44 24 10 e8 1d
00786c70: 40 1d 00 83 c4 10 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786c20 <.text+0x385c20>:
  786c20:	55                                              	push   ebp
  786c21:	8b ec                                           	mov    ebp,esp
  786c23:	83 e4 f0                                        	and    esp,0xfffffff0
  786c26:	83 ec 10                                        	sub    esp,0x10
  786c29:	d9 45 1c                                        	fld    DWORD PTR [ebp+0x1c]
  786c2c:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  786c31:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  786c36:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  786c39:	51                                              	push   ecx
  786c3a:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  786c3d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  786c40:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  786c44:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  786c4a:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  786c4f:	50                                              	push   eax
  786c50:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  786c56:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  786c5c:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  786c62:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  786c67:	51                                              	push   ecx
  786c68:	52                                              	push   edx
  786c69:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  786c6e:	e8 1d 40 1d 00                                  	call   0x95ac90
  786c73:	83 c4 10                                        	add    esp,0x10
  786c76:	8b e5                                           	mov    esp,ebp
  786c78:	5d                                              	pop    ebp
  786c79:	c3                                              	ret
  786c7a:	cc                                              	int3
  786c7b:	cc                                              	int3
  786c7c:	cc                                              	int3
  786c7d:	cc                                              	int3
  786c7e:	cc                                              	int3
  786c7f:	cc                                              	int3
