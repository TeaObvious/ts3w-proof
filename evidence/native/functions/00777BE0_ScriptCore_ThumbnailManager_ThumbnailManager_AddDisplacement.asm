# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777be0 (ScriptCore.ThumbnailManager::ThumbnailManager_AddDisplacement)
Paired Ghidra pseudocode: 00777BE0_ScriptCore_ThumbnailManager_ThumbnailManager_AddDisplacement.c
Window: [0x00777be0, 0x00777c30) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777be0: 55 8b ec 83 e4 f0 8b 0d 30 ec 1e 01 83 ec 10 85
00777bf0: c9 74 38 f3 0f 10 4d 10 f3 0f 10 45 08 f3 0f 11
00777c00: 4c 24 08 f3 0f 10 4d 0c f3 0f 11 44 24 0c f3 0f
00777c10: 11 4c 24 04 f3 0f 11 04 24 0f 28 04 24 8d 04 24
00777c20: 50 0f 29 44 24 04 e8 55 a8 5d 00 8b e5 5d c3 cc

LINEAR DISASSEMBLY
00777be0 <.text+0x376be0>:
  777be0:	55                                              	push   ebp
  777be1:	8b ec                                           	mov    ebp,esp
  777be3:	83 e4 f0                                        	and    esp,0xfffffff0
  777be6:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777bec:	83 ec 10                                        	sub    esp,0x10
  777bef:	85 c9                                           	test   ecx,ecx
  777bf1:	74 38                                           	je     0x777c2b
  777bf3:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  777bf8:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  777bfd:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  777c03:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  777c08:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  777c0e:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  777c14:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  777c19:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  777c1d:	8d 04 24                                        	lea    eax,[esp]
  777c20:	50                                              	push   eax
  777c21:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
  777c26:	e8 55 a8 5d 00                                  	call   0xd52480
  777c2b:	8b e5                                           	mov    esp,ebp
  777c2d:	5d                                              	pop    ebp
  777c2e:	c3                                              	ret
  777c2f:	cc                                              	int3
