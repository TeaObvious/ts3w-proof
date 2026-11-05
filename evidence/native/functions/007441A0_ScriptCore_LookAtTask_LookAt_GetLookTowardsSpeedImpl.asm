# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007441a0 (ScriptCore.LookAtTask::LookAt_GetLookTowardsSpeedImpl)
Paired Ghidra pseudocode: 007441A0_ScriptCore_LookAtTask_LookAt_GetLookTowardsSpeedImpl.c
Window: [0x007441a0, 0x00744220) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007441a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
007441b0: 46 75 54 e8 d8 51 02 00 8b 10 8b c8 8b 82 cc 00
007441c0: 00 00 56 ff d0 8b f0 85 f6 74 3c 83 46 04 01 8b
007441d0: ce e8 ca 58 ff ff 8b 10 8b c8 8b 42 0c ff d0 d9
007441e0: 54 24 08 8b 46 04 83 c0 ff 89 46 04 75 17 c7 46
007441f0: 04 01 00 00 00 dd d8 8b 16 8b 02 6a 01 8b ce ff
00744200: d0 d9 44 24 08 5e c3 0f 57 c0 f3 0f 11 44 24 08
00744210: d9 44 24 08 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007441a0 <.text+0x3431a0>:
  7441a0:	56                                              	push   esi
  7441a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7441a5:	8b c6                                           	mov    eax,esi
  7441a7:	25 00 00 00 ff                                  	and    eax,0xff000000
  7441ac:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  7441b1:	75 54                                           	jne    0x744207
  7441b3:	e8 d8 51 02 00                                  	call   0x769390
  7441b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7441ba:	8b c8                                           	mov    ecx,eax
  7441bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7441c2:	56                                              	push   esi
  7441c3:	ff d0                                           	call   eax
  7441c5:	8b f0                                           	mov    esi,eax
  7441c7:	85 f6                                           	test   esi,esi
  7441c9:	74 3c                                           	je     0x744207
  7441cb:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  7441cf:	8b ce                                           	mov    ecx,esi
  7441d1:	e8 ca 58 ff ff                                  	call   0x739aa0
  7441d6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7441d8:	8b c8                                           	mov    ecx,eax
  7441da:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  7441dd:	ff d0                                           	call   eax
  7441df:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  7441e3:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7441e6:	83 c0 ff                                        	add    eax,0xffffffff
  7441e9:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7441ec:	75 17                                           	jne    0x744205
  7441ee:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7441f5:	dd d8                                           	fstp   st(0)
  7441f7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7441f9:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7441fb:	6a 01                                           	push   0x1
  7441fd:	8b ce                                           	mov    ecx,esi
  7441ff:	ff d0                                           	call   eax
  744201:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  744205:	5e                                              	pop    esi
  744206:	c3                                              	ret
  744207:	0f 57 c0                                        	xorps  xmm0,xmm0
  74420a:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  744210:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  744214:	5e                                              	pop    esi
  744215:	c3                                              	ret
  744216:	cc                                              	int3
  744217:	cc                                              	int3
  744218:	cc                                              	int3
  744219:	cc                                              	int3
  74421a:	cc                                              	int3
  74421b:	cc                                              	int3
  74421c:	cc                                              	int3
  74421d:	cc                                              	int3
  74421e:	cc                                              	int3
  74421f:	cc                                              	int3
