# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744280 (ScriptCore.LookAtTask::LookAt_GetLookAwaySpeedImpl)
Paired Ghidra pseudocode: 00744280_ScriptCore_LookAtTask_LookAt_GetLookAwaySpeedImpl.c
Window: [0x00744280, 0x00744300) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744280: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744290: 46 75 54 e8 f8 50 02 00 8b 10 8b c8 8b 82 cc 00
007442a0: 00 00 56 ff d0 8b f0 85 f6 74 3c 83 46 04 01 8b
007442b0: ce e8 ea 57 ff ff 8b 10 8b c8 8b 42 10 ff d0 d9
007442c0: 54 24 08 8b 46 04 83 c0 ff 89 46 04 75 17 c7 46
007442d0: 04 01 00 00 00 dd d8 8b 16 8b 02 6a 01 8b ce ff
007442e0: d0 d9 44 24 08 5e c3 0f 57 c0 f3 0f 11 44 24 08
007442f0: d9 44 24 08 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00744280 <.text+0x343280>:
  744280:	56                                              	push   esi
  744281:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744285:	8b c6                                           	mov    eax,esi
  744287:	25 00 00 00 ff                                  	and    eax,0xff000000
  74428c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744291:	75 54                                           	jne    0x7442e7
  744293:	e8 f8 50 02 00                                  	call   0x769390
  744298:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74429a:	8b c8                                           	mov    ecx,eax
  74429c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7442a2:	56                                              	push   esi
  7442a3:	ff d0                                           	call   eax
  7442a5:	8b f0                                           	mov    esi,eax
  7442a7:	85 f6                                           	test   esi,esi
  7442a9:	74 3c                                           	je     0x7442e7
  7442ab:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  7442af:	8b ce                                           	mov    ecx,esi
  7442b1:	e8 ea 57 ff ff                                  	call   0x739aa0
  7442b6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7442b8:	8b c8                                           	mov    ecx,eax
  7442ba:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7442bd:	ff d0                                           	call   eax
  7442bf:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  7442c3:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7442c6:	83 c0 ff                                        	add    eax,0xffffffff
  7442c9:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7442cc:	75 17                                           	jne    0x7442e5
  7442ce:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7442d5:	dd d8                                           	fstp   st(0)
  7442d7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7442d9:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7442db:	6a 01                                           	push   0x1
  7442dd:	8b ce                                           	mov    ecx,esi
  7442df:	ff d0                                           	call   eax
  7442e1:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7442e5:	5e                                              	pop    esi
  7442e6:	c3                                              	ret
  7442e7:	0f 57 c0                                        	xorps  xmm0,xmm0
  7442ea:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7442f0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7442f4:	5e                                              	pop    esi
  7442f5:	c3                                              	ret
  7442f6:	cc                                              	int3
  7442f7:	cc                                              	int3
  7442f8:	cc                                              	int3
  7442f9:	cc                                              	int3
  7442fa:	cc                                              	int3
  7442fb:	cc                                              	int3
  7442fc:	cc                                              	int3
  7442fd:	cc                                              	int3
  7442fe:	cc                                              	int3
  7442ff:	cc                                              	int3
