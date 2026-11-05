# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007403e0 (ScriptCore.DebugDraw::DebugDraw_DrawLine)
Paired Ghidra pseudocode: 007403E0_ScriptCore_DebugDraw_DebugDraw_DrawLine.c
Window: [0x007403e0, 0x00740470) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007403e0: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 1c f3 0f
007403f0: 10 45 14 8b 45 20 f3 0f 11 4c 24 08 f3 0f 10 4d
00740400: 18 f3 0f 11 4c 24 04 f3 0f 10 4d 10 f3 0f 11 44
00740410: 24 0c f3 0f 11 04 24 0f 28 04 24 f3 0f 11 4c 24
00740420: 08 f3 0f 10 4d 0c 50 0f 29 44 24 14 f3 0f 10 45
00740430: 08 8d 4c 24 14 f3 0f 11 44 24 10 f3 0f 11 4c 24
00740440: 08 f3 0f 11 44 24 04 0f 28 44 24 04 51 8d 54 24
00740450: 08 52 0f 29 44 24 0c e8 34 fe ff ff 83 c4 0c 8b
00740460: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007403e0 <.text+0x33f3e0>:
  7403e0:	55                                              	push   ebp
  7403e1:	8b ec                                           	mov    ebp,esp
  7403e3:	83 e4 f0                                        	and    esp,0xfffffff0
  7403e6:	83 ec 20                                        	sub    esp,0x20
  7403e9:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
  7403ee:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  7403f3:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
  7403f6:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  7403fc:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  740401:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  740407:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  74040c:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  740412:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  740417:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  74041b:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  740421:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  740426:	50                                              	push   eax
  740427:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  74042c:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  740431:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  740435:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  74043b:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  740441:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
  740447:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
  74044c:	51                                              	push   ecx
  74044d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  740451:	52                                              	push   edx
  740452:	0f 29 44 24 0c                                  	movaps XMMWORD PTR [esp+0xc],xmm0
  740457:	e8 34 fe ff ff                                  	call   0x740290
  74045c:	83 c4 0c                                        	add    esp,0xc
  74045f:	8b e5                                           	mov    esp,ebp
  740461:	5d                                              	pop    ebp
  740462:	c3                                              	ret
  740463:	cc                                              	int3
  740464:	cc                                              	int3
  740465:	cc                                              	int3
  740466:	cc                                              	int3
  740467:	cc                                              	int3
  740468:	cc                                              	int3
  740469:	cc                                              	int3
  74046a:	cc                                              	int3
  74046b:	cc                                              	int3
  74046c:	cc                                              	int3
  74046d:	cc                                              	int3
  74046e:	cc                                              	int3
  74046f:	cc                                              	int3
