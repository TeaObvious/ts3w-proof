# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e7b0 (ScriptCore.RouteManager::RouteManager_PlaceDestinationPointImpl)
Paired Ghidra pseudocode: 0074E7B0_ScriptCore_RouteManager_RouteManager_PlaceDestinationPointImpl.c
Window: [0x0074e7b0, 0x0074e840) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e7b0: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 10 f3 0f
0074e7c0: 10 45 08 f3 0f 11 4c 24 08 f3 0f 10 4d 0c 8d 04
0074e7d0: 24 f3 0f 11 44 24 0c f3 0f 11 4c 24 04 f3 0f 11
0074e7e0: 04 24 0f 28 04 24 50 8d 4c 24 14 51 0f 29 44 24
0074e7f0: 18 0f 29 44 24 08 e8 15 3d 0d 00 0f 28 44 24 08
0074e800: 8b 4d 14 0f 29 44 24 18 f3 0f 10 4c 24 18 0f 29
0074e810: 44 24 18 f3 0f 11 09 f3 0f 10 4c 24 1c 0f 29 44
0074e820: 24 18 f3 0f 10 44 24 20 83 c4 08 f3 0f 11 49 04
0074e830: f3 0f 11 41 08 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e7b0 <.text+0x34d7b0>:
  74e7b0:	55                                              	push   ebp
  74e7b1:	8b ec                                           	mov    ebp,esp
  74e7b3:	83 e4 f0                                        	and    esp,0xfffffff0
  74e7b6:	83 ec 20                                        	sub    esp,0x20
  74e7b9:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  74e7be:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  74e7c3:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  74e7c9:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  74e7ce:	8d 04 24                                        	lea    eax,[esp]
  74e7d1:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  74e7d7:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  74e7dd:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  74e7e2:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  74e7e6:	50                                              	push   eax
  74e7e7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  74e7eb:	51                                              	push   ecx
  74e7ec:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  74e7f1:	0f 29 44 24 08                                  	movaps XMMWORD PTR [esp+0x8],xmm0
  74e7f6:	e8 15 3d 0d 00                                  	call   0x822510
  74e7fb:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  74e800:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  74e803:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  74e808:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
  74e80e:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  74e813:	f3 0f 11 09                                     	movss  DWORD PTR [ecx],xmm1
  74e817:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
  74e81d:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  74e822:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  74e828:	83 c4 08                                        	add    esp,0x8
  74e82b:	f3 0f 11 49 04                                  	movss  DWORD PTR [ecx+0x4],xmm1
  74e830:	f3 0f 11 41 08                                  	movss  DWORD PTR [ecx+0x8],xmm0
  74e835:	8b e5                                           	mov    esp,ebp
  74e837:	5d                                              	pop    ebp
  74e838:	c3                                              	ret
  74e839:	cc                                              	int3
  74e83a:	cc                                              	int3
  74e83b:	cc                                              	int3
  74e83c:	cc                                              	int3
  74e83d:	cc                                              	int3
  74e83e:	cc                                              	int3
  74e83f:	cc                                              	int3
