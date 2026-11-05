# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e640 (ScriptCore.World::World_GetLotMainEntranceLocationImpl)
Paired Ghidra pseudocode: 0078E640_ScriptCore_World_World_GetLotMainEntranceLocationImpl.c
Window: [0x0078e640, 0x0078e6c0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e640: 55 8b ec 83 e4 f0 83 ec 10 e8 a2 a6 09 00 85 c0
0078e650: 74 5a 8b c8 e8 67 af 09 00 85 c0 74 4f 8b 55 0c
0078e660: 8d 0c 24 51 8b 4d 08 52 51 8b c8 e8 d0 38 ea ff
0078e670: 84 c0 74 38 0f 28 04 24 8b 45 10 0f 29 04 24 f3
0078e680: 0f 10 0c 24 0f 29 04 24 f3 0f 11 08 f3 0f 10 4c
0078e690: 24 04 0f 29 04 24 f3 0f 10 44 24 08 f3 0f 11 48
0078e6a0: 04 f3 0f 11 40 08 b0 01 8b e5 5d c3 32 c0 8b e5
0078e6b0: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e640 <.text+0x38d640>:
  78e640:	55                                              	push   ebp
  78e641:	8b ec                                           	mov    ebp,esp
  78e643:	83 e4 f0                                        	and    esp,0xfffffff0
  78e646:	83 ec 10                                        	sub    esp,0x10
  78e649:	e8 a2 a6 09 00                                  	call   0x828cf0
  78e64e:	85 c0                                           	test   eax,eax
  78e650:	74 5a                                           	je     0x78e6ac
  78e652:	8b c8                                           	mov    ecx,eax
  78e654:	e8 67 af 09 00                                  	call   0x8295c0
  78e659:	85 c0                                           	test   eax,eax
  78e65b:	74 4f                                           	je     0x78e6ac
  78e65d:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  78e660:	8d 0c 24                                        	lea    ecx,[esp]
  78e663:	51                                              	push   ecx
  78e664:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  78e667:	52                                              	push   edx
  78e668:	51                                              	push   ecx
  78e669:	8b c8                                           	mov    ecx,eax
  78e66b:	e8 d0 38 ea ff                                  	call   0x631f40
  78e670:	84 c0                                           	test   al,al
  78e672:	74 38                                           	je     0x78e6ac
  78e674:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  78e678:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  78e67b:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  78e67f:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
  78e684:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  78e688:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  78e68c:	f3 0f 10 4c 24 04                               	movss  xmm1,DWORD PTR [esp+0x4]
  78e692:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  78e696:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  78e69c:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  78e6a1:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  78e6a6:	b0 01                                           	mov    al,0x1
  78e6a8:	8b e5                                           	mov    esp,ebp
  78e6aa:	5d                                              	pop    ebp
  78e6ab:	c3                                              	ret
  78e6ac:	32 c0                                           	xor    al,al
  78e6ae:	8b e5                                           	mov    esp,ebp
  78e6b0:	5d                                              	pop    ebp
  78e6b1:	c3                                              	ret
  78e6b2:	cc                                              	int3
  78e6b3:	cc                                              	int3
  78e6b4:	cc                                              	int3
  78e6b5:	cc                                              	int3
  78e6b6:	cc                                              	int3
  78e6b7:	cc                                              	int3
  78e6b8:	cc                                              	int3
  78e6b9:	cc                                              	int3
  78e6ba:	cc                                              	int3
  78e6bb:	cc                                              	int3
  78e6bc:	cc                                              	int3
  78e6bd:	cc                                              	int3
  78e6be:	cc                                              	int3
  78e6bf:	cc                                              	int3
