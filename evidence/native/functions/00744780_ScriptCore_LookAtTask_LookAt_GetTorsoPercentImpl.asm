# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744780 (ScriptCore.LookAtTask::LookAt_GetTorsoPercentImpl)
Paired Ghidra pseudocode: 00744780_ScriptCore_LookAtTask_LookAt_GetTorsoPercentImpl.c
Window: [0x00744780, 0x00744800) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744780: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744790: 46 75 59 e8 f8 4b 02 00 8b 10 8b c8 8b 82 cc 00
007447a0: 00 00 56 ff d0 8b f0 85 f6 74 41 83 46 04 01 8b
007447b0: ce e8 ea 52 ff ff 8b 10 8b c8 8b 42 1c ff d0 f3
007447c0: 0f 10 40 08 8b 46 04 83 c0 ff f3 0f 11 44 24 08
007447d0: 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02
007447e0: 6a 01 8b ce ff d0 d9 44 24 08 5e c3 f3 0f 10 05
007447f0: f8 98 f9 00 f3 0f 11 44 24 08 d9 44 24 08 5e c3

LINEAR DISASSEMBLY
00744780 <.text+0x343780>:
  744780:	56                                              	push   esi
  744781:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744785:	8b c6                                           	mov    eax,esi
  744787:	25 00 00 00 ff                                  	and    eax,0xff000000
  74478c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744791:	75 59                                           	jne    0x7447ec
  744793:	e8 f8 4b 02 00                                  	call   0x769390
  744798:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74479a:	8b c8                                           	mov    ecx,eax
  74479c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7447a2:	56                                              	push   esi
  7447a3:	ff d0                                           	call   eax
  7447a5:	8b f0                                           	mov    esi,eax
  7447a7:	85 f6                                           	test   esi,esi
  7447a9:	74 41                                           	je     0x7447ec
  7447ab:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  7447af:	8b ce                                           	mov    ecx,esi
  7447b1:	e8 ea 52 ff ff                                  	call   0x739aa0
  7447b6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7447b8:	8b c8                                           	mov    ecx,eax
  7447ba:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  7447bd:	ff d0                                           	call   eax
  7447bf:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  7447c4:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7447c7:	83 c0 ff                                        	add    eax,0xffffffff
  7447ca:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7447d0:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7447d3:	75 11                                           	jne    0x7447e6
  7447d5:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7447dc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7447de:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7447e0:	6a 01                                           	push   0x1
  7447e2:	8b ce                                           	mov    ecx,esi
  7447e4:	ff d0                                           	call   eax
  7447e6:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7447ea:	5e                                              	pop    esi
  7447eb:	c3                                              	ret
  7447ec:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  7447f4:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7447fa:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7447fe:	5e                                              	pop    esi
  7447ff:	c3                                              	ret
