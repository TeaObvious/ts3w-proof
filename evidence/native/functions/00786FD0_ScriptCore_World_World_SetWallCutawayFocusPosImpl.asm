# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786fd0 (ScriptCore.World::World_SetWallCutawayFocusPosImpl)
Paired Ghidra pseudocode: 00786FD0_ScriptCore_World_World_SetWallCutawayFocusPosImpl.c
Window: [0x00786fd0, 0x00787020) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786fd0: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 10 85
00786fe0: c9 74 38 f3 0f 10 4d 10 f3 0f 10 45 08 f3 0f 11
00786ff0: 4c 24 08 f3 0f 10 4d 0c f3 0f 11 44 24 0c f3 0f
00787000: 11 4c 24 04 f3 0f 11 04 24 0f 28 04 24 8d 04 24
00787010: 50 0f 29 44 24 04 e8 35 2f 4e 00 8b e5 5d c3 cc

LINEAR DISASSEMBLY
00786fd0 <.text+0x385fd0>:
  786fd0:	55                                              	push   ebp
  786fd1:	8b ec                                           	mov    ebp,esp
  786fd3:	83 e4 f0                                        	and    esp,0xfffffff0
  786fd6:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786fdc:	83 ec 10                                        	sub    esp,0x10
  786fdf:	85 c9                                           	test   ecx,ecx
  786fe1:	74 38                                           	je     0x78701b
  786fe3:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  786fe8:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  786fed:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  786ff3:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  786ff8:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  786ffe:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  787004:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  787009:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  78700d:	8d 04 24                                        	lea    eax,[esp]
  787010:	50                                              	push   eax
  787011:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
  787016:	e8 35 2f 4e 00                                  	call   0xc69f50
  78701b:	8b e5                                           	mov    esp,ebp
  78701d:	5d                                              	pop    ebp
  78701e:	c3                                              	ret
  78701f:	cc                                              	int3
