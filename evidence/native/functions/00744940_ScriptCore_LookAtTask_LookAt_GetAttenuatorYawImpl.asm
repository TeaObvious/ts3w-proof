# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744940 (ScriptCore.LookAtTask::LookAt_GetAttenuatorYawImpl)
Paired Ghidra pseudocode: 00744940_ScriptCore_LookAtTask_LookAt_GetAttenuatorYawImpl.c
Window: [0x00744940, 0x007449c0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x007449c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744940: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744950: 46 75 59 e8 38 4a 02 00 8b 10 8b c8 8b 82 cc 00
00744960: 00 00 56 ff d0 8b f0 85 f6 74 41 83 46 04 01 8b
00744970: ce e8 2a 51 ff ff 8b 10 8b c8 8b 42 1c ff d0 f3
00744980: 0f 10 40 10 8b 46 04 83 c0 ff f3 0f 11 44 24 08
00744990: 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02
007449a0: 6a 01 8b ce ff d0 d9 44 24 08 5e c3 f3 0f 10 05
007449b0: f8 98 f9 00 f3 0f 11 44 24 08 d9 44 24 08 5e c3

LINEAR DISASSEMBLY
00744940 <.text+0x343940>:
  744940:	56                                              	push   esi
  744941:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744945:	8b c6                                           	mov    eax,esi
  744947:	25 00 00 00 ff                                  	and    eax,0xff000000
  74494c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744951:	75 59                                           	jne    0x7449ac
  744953:	e8 38 4a 02 00                                  	call   0x769390
  744958:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74495a:	8b c8                                           	mov    ecx,eax
  74495c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744962:	56                                              	push   esi
  744963:	ff d0                                           	call   eax
  744965:	8b f0                                           	mov    esi,eax
  744967:	85 f6                                           	test   esi,esi
  744969:	74 41                                           	je     0x7449ac
  74496b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  74496f:	8b ce                                           	mov    ecx,esi
  744971:	e8 2a 51 ff ff                                  	call   0x739aa0
  744976:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744978:	8b c8                                           	mov    ecx,eax
  74497a:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  74497d:	ff d0                                           	call   eax
  74497f:	f3 0f 10 40 10                                  	movss  xmm0,DWORD PTR [eax+0x10]
  744984:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744987:	83 c0 ff                                        	add    eax,0xffffffff
  74498a:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  744990:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744993:	75 11                                           	jne    0x7449a6
  744995:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  74499c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74499e:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7449a0:	6a 01                                           	push   0x1
  7449a2:	8b ce                                           	mov    ecx,esi
  7449a4:	ff d0                                           	call   eax
  7449a6:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7449aa:	5e                                              	pop    esi
  7449ab:	c3                                              	ret
  7449ac:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  7449b4:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7449ba:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7449be:	5e                                              	pop    esi
  7449bf:	c3                                              	ret
