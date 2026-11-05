# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740470 (ScriptCore.DebugDraw::DebugDraw_DrawCircle)
Paired Ghidra pseudocode: 00740470_ScriptCore_DebugDraw_DebugDraw_DrawCircle.c
Window: [0x00740470, 0x007404d0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x007404d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740470: 55 8b ec 83 e4 f0 83 ec 10 8b 45 18 d9 45 14 f3
00740480: 0f 10 4d 10 f3 0f 10 45 08 50 f3 0f 11 4c 24 0c
00740490: f3 0f 10 4d 0c 51 f3 0f 11 44 24 14 d9 1c 24 f3
007404a0: 0f 11 4c 24 0c f3 0f 11 44 24 08 0f 28 44 24 08
007404b0: 8d 4c 24 08 51 0f 29 44 24 0c e8 71 fe ff ff 83
007404c0: c4 0c 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740470 <.text+0x33f470>:
  740470:	55                                              	push   ebp
  740471:	8b ec                                           	mov    ebp,esp
  740473:	83 e4 f0                                        	and    esp,0xfffffff0
  740476:	83 ec 10                                        	sub    esp,0x10
  740479:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  74047c:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  74047f:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  740484:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  740489:	50                                              	push   eax
  74048a:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  740490:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  740495:	51                                              	push   ecx
  740496:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  74049c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74049f:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  7404a5:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7404ab:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  7404b0:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7404b4:	51                                              	push   ecx
  7404b5:	0f 29 44 24 0c                                  	movaps XMMWORD PTR [esp+0xc],xmm0
  7404ba:	e8 71 fe ff ff                                  	call   0x740330
  7404bf:	83 c4 0c                                        	add    esp,0xc
  7404c2:	8b e5                                           	mov    esp,ebp
  7404c4:	5d                                              	pop    ebp
  7404c5:	c3                                              	ret
  7404c6:	cc                                              	int3
  7404c7:	cc                                              	int3
  7404c8:	cc                                              	int3
  7404c9:	cc                                              	int3
  7404ca:	cc                                              	int3
  7404cb:	cc                                              	int3
  7404cc:	cc                                              	int3
  7404cd:	cc                                              	int3
  7404ce:	cc                                              	int3
  7404cf:	cc                                              	int3
