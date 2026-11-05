# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744860 (ScriptCore.LookAtTask::LookAt_GetAttenuatorPitchImpl)
Paired Ghidra pseudocode: 00744860_ScriptCore_LookAtTask_LookAt_GetAttenuatorPitchImpl.c
Window: [0x00744860, 0x007448e0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x007448e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744860: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744870: 46 75 59 e8 18 4b 02 00 8b 10 8b c8 8b 82 cc 00
00744880: 00 00 56 ff d0 8b f0 85 f6 74 41 83 46 04 01 8b
00744890: ce e8 0a 52 ff ff 8b 10 8b c8 8b 42 1c ff d0 f3
007448a0: 0f 10 40 0c 8b 46 04 83 c0 ff f3 0f 11 44 24 08
007448b0: 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02
007448c0: 6a 01 8b ce ff d0 d9 44 24 08 5e c3 f3 0f 10 05
007448d0: f8 98 f9 00 f3 0f 11 44 24 08 d9 44 24 08 5e c3

LINEAR DISASSEMBLY
00744860 <.text+0x343860>:
  744860:	56                                              	push   esi
  744861:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744865:	8b c6                                           	mov    eax,esi
  744867:	25 00 00 00 ff                                  	and    eax,0xff000000
  74486c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744871:	75 59                                           	jne    0x7448cc
  744873:	e8 18 4b 02 00                                  	call   0x769390
  744878:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74487a:	8b c8                                           	mov    ecx,eax
  74487c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744882:	56                                              	push   esi
  744883:	ff d0                                           	call   eax
  744885:	8b f0                                           	mov    esi,eax
  744887:	85 f6                                           	test   esi,esi
  744889:	74 41                                           	je     0x7448cc
  74488b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  74488f:	8b ce                                           	mov    ecx,esi
  744891:	e8 0a 52 ff ff                                  	call   0x739aa0
  744896:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744898:	8b c8                                           	mov    ecx,eax
  74489a:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  74489d:	ff d0                                           	call   eax
  74489f:	f3 0f 10 40 0c                                  	movss  xmm0,DWORD PTR [eax+0xc]
  7448a4:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7448a7:	83 c0 ff                                        	add    eax,0xffffffff
  7448aa:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7448b0:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7448b3:	75 11                                           	jne    0x7448c6
  7448b5:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7448bc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7448be:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7448c0:	6a 01                                           	push   0x1
  7448c2:	8b ce                                           	mov    ecx,esi
  7448c4:	ff d0                                           	call   eax
  7448c6:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7448ca:	5e                                              	pop    esi
  7448cb:	c3                                              	ret
  7448cc:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  7448d4:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7448da:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7448de:	5e                                              	pop    esi
  7448df:	c3                                              	ret
