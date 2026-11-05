# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007446a0 (ScriptCore.LookAtTask::LookAt_GetTorsoThresholdImpl)
Paired Ghidra pseudocode: 007446A0_ScriptCore_LookAtTask_LookAt_GetTorsoThresholdImpl.c
Window: [0x007446a0, 0x00744720) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007446a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
007446b0: 46 75 59 e8 d8 4c 02 00 8b 10 8b c8 8b 82 cc 00
007446c0: 00 00 56 ff d0 8b f0 85 f6 74 41 83 46 04 01 8b
007446d0: ce e8 ca 53 ff ff 8b 10 8b c8 8b 42 1c ff d0 f3
007446e0: 0f 10 40 04 8b 46 04 83 c0 ff f3 0f 11 44 24 08
007446f0: 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02
00744700: 6a 01 8b ce ff d0 d9 44 24 08 5e c3 f3 0f 10 05
00744710: f8 98 f9 00 f3 0f 11 44 24 08 d9 44 24 08 5e c3

LINEAR DISASSEMBLY
007446a0 <.text+0x3436a0>:
  7446a0:	56                                              	push   esi
  7446a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7446a5:	8b c6                                           	mov    eax,esi
  7446a7:	25 00 00 00 ff                                  	and    eax,0xff000000
  7446ac:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  7446b1:	75 59                                           	jne    0x74470c
  7446b3:	e8 d8 4c 02 00                                  	call   0x769390
  7446b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7446ba:	8b c8                                           	mov    ecx,eax
  7446bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7446c2:	56                                              	push   esi
  7446c3:	ff d0                                           	call   eax
  7446c5:	8b f0                                           	mov    esi,eax
  7446c7:	85 f6                                           	test   esi,esi
  7446c9:	74 41                                           	je     0x74470c
  7446cb:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  7446cf:	8b ce                                           	mov    ecx,esi
  7446d1:	e8 ca 53 ff ff                                  	call   0x739aa0
  7446d6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7446d8:	8b c8                                           	mov    ecx,eax
  7446da:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  7446dd:	ff d0                                           	call   eax
  7446df:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
  7446e4:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7446e7:	83 c0 ff                                        	add    eax,0xffffffff
  7446ea:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7446f0:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7446f3:	75 11                                           	jne    0x744706
  7446f5:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7446fc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7446fe:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744700:	6a 01                                           	push   0x1
  744702:	8b ce                                           	mov    ecx,esi
  744704:	ff d0                                           	call   eax
  744706:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  74470a:	5e                                              	pop    esi
  74470b:	c3                                              	ret
  74470c:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  744714:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  74471a:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  74471e:	5e                                              	pop    esi
  74471f:	c3                                              	ret
