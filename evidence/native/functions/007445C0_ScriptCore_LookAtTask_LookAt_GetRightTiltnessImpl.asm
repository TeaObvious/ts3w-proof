# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007445c0 (ScriptCore.LookAtTask::LookAt_GetRightTiltnessImpl)
Paired Ghidra pseudocode: 007445C0_ScriptCore_LookAtTask_LookAt_GetRightTiltnessImpl.c
Window: [0x007445c0, 0x00744640) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007445c0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
007445d0: 46 75 58 e8 b8 4d 02 00 8b 10 8b c8 8b 82 cc 00
007445e0: 00 00 56 ff d0 8b f0 85 f6 74 40 83 46 04 01 8b
007445f0: ce e8 aa 54 ff ff 8b 10 8b c8 8b 42 1c ff d0 f3
00744600: 0f 10 00 8b 46 04 83 c0 ff f3 0f 11 44 24 08 89
00744610: 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02 6a
00744620: 01 8b ce ff d0 d9 44 24 08 5e c3 f3 0f 10 05 f8
00744630: 98 f9 00 f3 0f 11 44 24 08 d9 44 24 08 5e c3 cc

LINEAR DISASSEMBLY
007445c0 <.text+0x3435c0>:
  7445c0:	56                                              	push   esi
  7445c1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7445c5:	8b c6                                           	mov    eax,esi
  7445c7:	25 00 00 00 ff                                  	and    eax,0xff000000
  7445cc:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  7445d1:	75 58                                           	jne    0x74462b
  7445d3:	e8 b8 4d 02 00                                  	call   0x769390
  7445d8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7445da:	8b c8                                           	mov    ecx,eax
  7445dc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7445e2:	56                                              	push   esi
  7445e3:	ff d0                                           	call   eax
  7445e5:	8b f0                                           	mov    esi,eax
  7445e7:	85 f6                                           	test   esi,esi
  7445e9:	74 40                                           	je     0x74462b
  7445eb:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  7445ef:	8b ce                                           	mov    ecx,esi
  7445f1:	e8 aa 54 ff ff                                  	call   0x739aa0
  7445f6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7445f8:	8b c8                                           	mov    ecx,eax
  7445fa:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  7445fd:	ff d0                                           	call   eax
  7445ff:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  744603:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744606:	83 c0 ff                                        	add    eax,0xffffffff
  744609:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  74460f:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744612:	75 11                                           	jne    0x744625
  744614:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  74461b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74461d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74461f:	6a 01                                           	push   0x1
  744621:	8b ce                                           	mov    ecx,esi
  744623:	ff d0                                           	call   eax
  744625:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  744629:	5e                                              	pop    esi
  74462a:	c3                                              	ret
  74462b:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  744633:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  744639:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  74463d:	5e                                              	pop    esi
  74463e:	c3                                              	ret
  74463f:	cc                                              	int3
