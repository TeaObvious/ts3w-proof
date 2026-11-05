# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787070 (ScriptCore.World::World_CanSeeSkyFromPosImpl)
Paired Ghidra pseudocode: 00787070_ScriptCore_World_World_CanSeeSkyFromPosImpl.c
Window: [0x00787070, 0x00787110) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787070: 55 8b ec 83 e4 f0 83 ec 70 e8 e2 fd ef ff 85 c0
00787080: 75 06 32 c0 8b e5 5d c3 f3 0f 10 45 08 f3 0f 10
00787090: 55 10 f3 0f 10 4d 0c 6a 01 8d 4c 24 34 51 f3 0f
007870a0: 11 4c 24 0c f3 0f 58 0d 34 c9 fb 00 f3 0f 11 44
007870b0: 24 14 f3 0f 11 54 24 10 f3 0f 11 44 24 08 0f 28
007870c0: 5c 24 08 6a 10 8d 54 24 1c 52 8d 4c 24 30 f3 0f
007870d0: 11 44 24 1c f3 0f 11 54 24 18 f3 0f 11 4c 24 14
007870e0: f3 0f 11 44 24 10 0f 28 44 24 10 51 8b c8 0f 29
007870f0: 5c 24 34 0f 29 44 24 24 e8 93 02 f0 ff f6 d8 1b
00787100: c0 83 c0 01 8b e5 5d c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787070 <.text+0x386070>:
  787070:	55                                              	push   ebp
  787071:	8b ec                                           	mov    ebp,esp
  787073:	83 e4 f0                                        	and    esp,0xfffffff0
  787076:	83 ec 70                                        	sub    esp,0x70
  787079:	e8 e2 fd ef ff                                  	call   0x686e60
  78707e:	85 c0                                           	test   eax,eax
  787080:	75 06                                           	jne    0x787088
  787082:	32 c0                                           	xor    al,al
  787084:	8b e5                                           	mov    esp,ebp
  787086:	5d                                              	pop    ebp
  787087:	c3                                              	ret
  787088:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  78708d:	f3 0f 10 55 10                                  	movss  xmm2,DWORD PTR [ebp+0x10]
  787092:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  787097:	6a 01                                           	push   0x1
  787099:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  78709d:	51                                              	push   ecx
  78709e:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  7870a4:	f3 0f 58 0d 34 c9 fb 00                         	addss  xmm1,DWORD PTR ds:0xfbc934
  7870ac:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  7870b2:	f3 0f 11 54 24 10                               	movss  DWORD PTR [esp+0x10],xmm2
  7870b8:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7870be:	0f 28 5c 24 08                                  	movaps xmm3,XMMWORD PTR [esp+0x8]
  7870c3:	6a 10                                           	push   0x10
  7870c5:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  7870c9:	52                                              	push   edx
  7870ca:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7870ce:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  7870d4:	f3 0f 11 54 24 18                               	movss  DWORD PTR [esp+0x18],xmm2
  7870da:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  7870e0:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  7870e6:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  7870eb:	51                                              	push   ecx
  7870ec:	8b c8                                           	mov    ecx,eax
  7870ee:	0f 29 5c 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm3
  7870f3:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
  7870f8:	e8 93 02 f0 ff                                  	call   0x687390
  7870fd:	f6 d8                                           	neg    al
  7870ff:	1b c0                                           	sbb    eax,eax
  787101:	83 c0 01                                        	add    eax,0x1
  787104:	8b e5                                           	mov    esp,ebp
  787106:	5d                                              	pop    ebp
  787107:	c3                                              	ret
  787108:	cc                                              	int3
  787109:	cc                                              	int3
  78710a:	cc                                              	int3
  78710b:	cc                                              	int3
  78710c:	cc                                              	int3
  78710d:	cc                                              	int3
  78710e:	cc                                              	int3
  78710f:	cc                                              	int3
