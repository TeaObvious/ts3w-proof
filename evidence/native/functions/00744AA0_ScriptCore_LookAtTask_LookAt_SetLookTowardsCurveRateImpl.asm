# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744aa0 (ScriptCore.LookAtTask::LookAt_SetLookTowardsCurveRateImpl)
Paired Ghidra pseudocode: 00744AA0_ScriptCore_LookAtTask_LookAt_SetLookTowardsCurveRateImpl.c
Window: [0x00744aa0, 0x00744b00) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744aa0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744ab0: 46 75 47 e8 d8 48 02 00 8b 10 8b c8 8b 82 cc 00
00744ac0: 00 00 56 ff d0 8b f0 85 f6 74 2f d9 44 24 0c 83
00744ad0: 46 04 01 51 8b ce d9 1c 24 e8 22 ba e3 ff 8b 46
00744ae0: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
00744af0: 8b 16 8b 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00744aa0 <.text+0x343aa0>:
  744aa0:	56                                              	push   esi
  744aa1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744aa5:	8b c6                                           	mov    eax,esi
  744aa7:	25 00 00 00 ff                                  	and    eax,0xff000000
  744aac:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744ab1:	75 47                                           	jne    0x744afa
  744ab3:	e8 d8 48 02 00                                  	call   0x769390
  744ab8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744aba:	8b c8                                           	mov    ecx,eax
  744abc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744ac2:	56                                              	push   esi
  744ac3:	ff d0                                           	call   eax
  744ac5:	8b f0                                           	mov    esi,eax
  744ac7:	85 f6                                           	test   esi,esi
  744ac9:	74 2f                                           	je     0x744afa
  744acb:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  744acf:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744ad3:	51                                              	push   ecx
  744ad4:	8b ce                                           	mov    ecx,esi
  744ad6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744ad9:	e8 22 ba e3 ff                                  	call   0x580500
  744ade:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744ae1:	83 c0 ff                                        	add    eax,0xffffffff
  744ae4:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744ae7:	75 11                                           	jne    0x744afa
  744ae9:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744af0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744af2:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744af4:	6a 01                                           	push   0x1
  744af6:	8b ce                                           	mov    ecx,esi
  744af8:	ff d0                                           	call   eax
  744afa:	5e                                              	pop    esi
  744afb:	c3                                              	ret
  744afc:	cc                                              	int3
  744afd:	cc                                              	int3
  744afe:	cc                                              	int3
  744aff:	cc                                              	int3
