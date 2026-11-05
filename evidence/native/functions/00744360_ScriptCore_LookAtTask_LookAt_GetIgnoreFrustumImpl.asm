# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744360 (ScriptCore.LookAtTask::LookAt_GetIgnoreFrustumImpl)
Paired Ghidra pseudocode: 00744360_ScriptCore_LookAtTask_LookAt_GetIgnoreFrustumImpl.c
Window: [0x00744360, 0x007443d0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x007443d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744360: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744370: 46 75 50 e8 18 50 02 00 8b 10 8b c8 8b 82 cc 00
00744380: 00 00 56 ff d0 8b f0 85 f6 74 38 83 46 04 01 53
00744390: 8b ce e8 09 57 ff ff 8b 10 8b c8 8b 42 14 ff d0
007443a0: 8a d8 8b 46 04 83 c0 ff 89 46 04 75 11 c7 46 04
007443b0: 01 00 00 00 8b 16 8b 02 6a 01 8b ce ff d0 8a c3
007443c0: 5b 5e c3 b0 01 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00744360 <.text+0x343360>:
  744360:	56                                              	push   esi
  744361:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744365:	8b c6                                           	mov    eax,esi
  744367:	25 00 00 00 ff                                  	and    eax,0xff000000
  74436c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744371:	75 50                                           	jne    0x7443c3
  744373:	e8 18 50 02 00                                  	call   0x769390
  744378:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74437a:	8b c8                                           	mov    ecx,eax
  74437c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744382:	56                                              	push   esi
  744383:	ff d0                                           	call   eax
  744385:	8b f0                                           	mov    esi,eax
  744387:	85 f6                                           	test   esi,esi
  744389:	74 38                                           	je     0x7443c3
  74438b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  74438f:	53                                              	push   ebx
  744390:	8b ce                                           	mov    ecx,esi
  744392:	e8 09 57 ff ff                                  	call   0x739aa0
  744397:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744399:	8b c8                                           	mov    ecx,eax
  74439b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74439e:	ff d0                                           	call   eax
  7443a0:	8a d8                                           	mov    bl,al
  7443a2:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7443a5:	83 c0 ff                                        	add    eax,0xffffffff
  7443a8:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7443ab:	75 11                                           	jne    0x7443be
  7443ad:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7443b4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7443b6:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7443b8:	6a 01                                           	push   0x1
  7443ba:	8b ce                                           	mov    ecx,esi
  7443bc:	ff d0                                           	call   eax
  7443be:	8a c3                                           	mov    al,bl
  7443c0:	5b                                              	pop    ebx
  7443c1:	5e                                              	pop    esi
  7443c2:	c3                                              	ret
  7443c3:	b0 01                                           	mov    al,0x1
  7443c5:	5e                                              	pop    esi
  7443c6:	c3                                              	ret
  7443c7:	cc                                              	int3
  7443c8:	cc                                              	int3
  7443c9:	cc                                              	int3
  7443ca:	cc                                              	int3
  7443cb:	cc                                              	int3
  7443cc:	cc                                              	int3
  7443cd:	cc                                              	int3
  7443ce:	cc                                              	int3
  7443cf:	cc                                              	int3
