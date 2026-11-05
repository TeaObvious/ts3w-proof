# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078f450 (ScriptCore.World::World_CanSeeObjectImpl)
Paired Ghidra pseudocode: 0078F450_ScriptCore_World_World_CanSeeObjectImpl.c
Window: [0x0078f450, 0x0078f4d0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f4d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078f450: 55 8b ec 83 e4 f0 83 ec 20 8b 4d 1c 8b 55 18 f3
0078f460: 0f 10 4d 10 f3 0f 10 45 08 33 c0 50 89 44 24 14
0078f470: 89 44 24 18 89 44 24 1c 8d 44 24 14 50 8b 45 14
0078f480: 51 f3 0f 11 4c 24 14 f3 0f 10 4d 0c 52 f3 0f 11
0078f490: 44 24 1c f3 0f 11 4c 24 14 f3 0f 11 44 24 10 0f
0078f4a0: 28 44 24 10 50 8d 4c 24 14 51 c7 44 24 34 78 1a
0078f4b0: 01 01 0f 29 44 24 18 e8 b4 ac ff ff 83 c4 18 8b
0078f4c0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078f450 <.text+0x38e450>:
  78f450:	55                                              	push   ebp
  78f451:	8b ec                                           	mov    ebp,esp
  78f453:	83 e4 f0                                        	and    esp,0xfffffff0
  78f456:	83 ec 20                                        	sub    esp,0x20
  78f459:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  78f45c:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
  78f45f:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  78f464:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  78f469:	33 c0                                           	xor    eax,eax
  78f46b:	50                                              	push   eax
  78f46c:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  78f470:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  78f474:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  78f478:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  78f47c:	50                                              	push   eax
  78f47d:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  78f480:	51                                              	push   ecx
  78f481:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  78f487:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  78f48c:	52                                              	push   edx
  78f48d:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  78f493:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  78f499:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  78f49f:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  78f4a4:	50                                              	push   eax
  78f4a5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78f4a9:	51                                              	push   ecx
  78f4aa:	c7 44 24 34 78 1a 01 01                         	mov    DWORD PTR [esp+0x34],0x1011a78
  78f4b2:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  78f4b7:	e8 b4 ac ff ff                                  	call   0x78a170
  78f4bc:	83 c4 18                                        	add    esp,0x18
  78f4bf:	8b e5                                           	mov    esp,ebp
  78f4c1:	5d                                              	pop    ebp
  78f4c2:	c3                                              	ret
  78f4c3:	cc                                              	int3
  78f4c4:	cc                                              	int3
  78f4c5:	cc                                              	int3
  78f4c6:	cc                                              	int3
  78f4c7:	cc                                              	int3
  78f4c8:	cc                                              	int3
  78f4c9:	cc                                              	int3
  78f4ca:	cc                                              	int3
  78f4cb:	cc                                              	int3
  78f4cc:	cc                                              	int3
  78f4cd:	cc                                              	int3
  78f4ce:	cc                                              	int3
  78f4cf:	cc                                              	int3
