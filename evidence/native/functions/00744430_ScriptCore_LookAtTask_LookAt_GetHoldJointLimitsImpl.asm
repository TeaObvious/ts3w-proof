# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744430 (ScriptCore.LookAtTask::LookAt_GetHoldJointLimitsImpl)
Paired Ghidra pseudocode: 00744430_ScriptCore_LookAtTask_LookAt_GetHoldJointLimitsImpl.c
Window: [0x00744430, 0x007444a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x007444a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744430: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744440: 46 75 50 e8 48 4f 02 00 8b 10 8b c8 8b 82 cc 00
00744450: 00 00 56 ff d0 8b f0 85 f6 74 38 83 46 04 01 53
00744460: 8b ce e8 39 56 ff ff 8b 10 8b c8 8b 42 18 ff d0
00744470: 8a d8 8b 46 04 83 c0 ff 89 46 04 75 11 c7 46 04
00744480: 01 00 00 00 8b 16 8b 02 6a 01 8b ce ff d0 8a c3
00744490: 5b 5e c3 b0 01 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00744430 <.text+0x343430>:
  744430:	56                                              	push   esi
  744431:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744435:	8b c6                                           	mov    eax,esi
  744437:	25 00 00 00 ff                                  	and    eax,0xff000000
  74443c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744441:	75 50                                           	jne    0x744493
  744443:	e8 48 4f 02 00                                  	call   0x769390
  744448:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74444a:	8b c8                                           	mov    ecx,eax
  74444c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744452:	56                                              	push   esi
  744453:	ff d0                                           	call   eax
  744455:	8b f0                                           	mov    esi,eax
  744457:	85 f6                                           	test   esi,esi
  744459:	74 38                                           	je     0x744493
  74445b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  74445f:	53                                              	push   ebx
  744460:	8b ce                                           	mov    ecx,esi
  744462:	e8 39 56 ff ff                                  	call   0x739aa0
  744467:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744469:	8b c8                                           	mov    ecx,eax
  74446b:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  74446e:	ff d0                                           	call   eax
  744470:	8a d8                                           	mov    bl,al
  744472:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744475:	83 c0 ff                                        	add    eax,0xffffffff
  744478:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  74447b:	75 11                                           	jne    0x74448e
  74447d:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744484:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744486:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744488:	6a 01                                           	push   0x1
  74448a:	8b ce                                           	mov    ecx,esi
  74448c:	ff d0                                           	call   eax
  74448e:	8a c3                                           	mov    al,bl
  744490:	5b                                              	pop    ebx
  744491:	5e                                              	pop    esi
  744492:	c3                                              	ret
  744493:	b0 01                                           	mov    al,0x1
  744495:	5e                                              	pop    esi
  744496:	c3                                              	ret
  744497:	cc                                              	int3
  744498:	cc                                              	int3
  744499:	cc                                              	int3
  74449a:	cc                                              	int3
  74449b:	cc                                              	int3
  74449c:	cc                                              	int3
  74449d:	cc                                              	int3
  74449e:	cc                                              	int3
  74449f:	cc                                              	int3
