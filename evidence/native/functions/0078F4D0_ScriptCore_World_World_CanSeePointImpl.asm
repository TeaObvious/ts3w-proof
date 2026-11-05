# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078f4d0 (ScriptCore.World::World_CanSeePointImpl)
Paired Ghidra pseudocode: 0078F4D0_ScriptCore_World_World_CanSeePointImpl.c
Window: [0x0078f4d0, 0x0078f560) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078f4d0: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 1c 8b 45
0078f4e0: 24 f3 0f 10 45 14 8b 4d 20 f3 0f 11 4c 24 08 f3
0078f4f0: 0f 10 4d 18 f3 0f 11 4c 24 04 f3 0f 10 4d 10 f3
0078f500: 0f 11 44 24 0c f3 0f 11 04 24 0f 28 04 24 50 f3
0078f510: 0f 11 4c 24 0c f3 0f 10 4d 0c 51 0f 29 44 24 18
0078f520: f3 0f 10 45 08 8d 54 24 18 f3 0f 11 44 24 14 f3
0078f530: 0f 11 4c 24 0c f3 0f 11 44 24 08 0f 28 44 24 08
0078f540: 52 8d 44 24 0c 50 0f 29 44 24 10 e8 80 b0 ff ff
0078f550: 83 c4 10 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078f4d0 <.text+0x38e4d0>:
  78f4d0:	55                                              	push   ebp
  78f4d1:	8b ec                                           	mov    ebp,esp
  78f4d3:	83 e4 f0                                        	and    esp,0xfffffff0
  78f4d6:	83 ec 20                                        	sub    esp,0x20
  78f4d9:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
  78f4de:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  78f4e1:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  78f4e6:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
  78f4e9:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  78f4ef:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  78f4f4:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  78f4fa:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  78f4ff:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  78f505:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  78f50a:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  78f50e:	50                                              	push   eax
  78f50f:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  78f515:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  78f51a:	51                                              	push   ecx
  78f51b:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  78f520:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  78f525:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  78f529:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78f52f:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  78f535:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  78f53b:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  78f540:	52                                              	push   edx
  78f541:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  78f545:	50                                              	push   eax
  78f546:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  78f54b:	e8 80 b0 ff ff                                  	call   0x78a5d0
  78f550:	83 c4 10                                        	add    esp,0x10
  78f553:	8b e5                                           	mov    esp,ebp
  78f555:	5d                                              	pop    ebp
  78f556:	c3                                              	ret
  78f557:	cc                                              	int3
  78f558:	cc                                              	int3
  78f559:	cc                                              	int3
  78f55a:	cc                                              	int3
  78f55b:	cc                                              	int3
  78f55c:	cc                                              	int3
  78f55d:	cc                                              	int3
  78f55e:	cc                                              	int3
  78f55f:	cc                                              	int3
