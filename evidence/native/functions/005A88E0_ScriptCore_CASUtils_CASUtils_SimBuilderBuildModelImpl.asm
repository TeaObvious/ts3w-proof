# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a88e0 (ScriptCore.CASUtils::CASUtils_SimBuilderBuildModelImpl)
Paired Ghidra pseudocode: 005A88E0_ScriptCore_CASUtils_CASUtils_SimBuilderBuildModelImpl.c
Window: [0x005a88e0, 0x005a89a0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a89a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a88e0: 53 55 56 57 e8 07 3c ea ff 8b e8 e8 a0 0a 1c 00
005a88f0: 6a 20 8b f8 e8 27 25 1c 00 8b f0 83 c4 04 85 f6
005a8900: 74 3c 8b 07 8b 90 18 01 00 00 8b cf ff d2 c7 06
005a8910: 1c c9 06 01 33 c9 8d 5e 04 87 0b 89 46 08 8b 44
005a8920: 24 18 89 56 0c 8b 54 24 14 c7 46 10 30 e1 5a 00
005a8930: c7 06 00 29 fe 00 89 56 18 89 46 1c eb 02 33 f6
005a8940: 8b 16 8b 42 04 8b ce ff d0 8b 4c 24 1c 8b 1f 8b
005a8950: 93 18 01 00 00 6a 00 51 6a ff 8b cf ff d2 52 50
005a8960: 8b 83 20 01 00 00 8b cf ff d0 8b 55 00 8b 42 1c
005a8970: 6a 00 6a 00 56 68 f0 90 02 03 8b cd ff d0 8b 16
005a8980: 8b 42 08 8b ce ff d0 8b 17 8b 82 1c 01 00 00 8b
005a8990: cf 5f 5e 5d 5b ff e0 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a88e0 <.text+0x1a78e0>:
  5a88e0:	53                                              	push   ebx
  5a88e1:	55                                              	push   ebp
  5a88e2:	56                                              	push   esi
  5a88e3:	57                                              	push   edi
  5a88e4:	e8 07 3c ea ff                                  	call   0x44c4f0
  5a88e9:	8b e8                                           	mov    ebp,eax
  5a88eb:	e8 a0 0a 1c 00                                  	call   0x769390
  5a88f0:	6a 20                                           	push   0x20
  5a88f2:	8b f8                                           	mov    edi,eax
  5a88f4:	e8 27 25 1c 00                                  	call   0x76ae20
  5a88f9:	8b f0                                           	mov    esi,eax
  5a88fb:	83 c4 04                                        	add    esp,0x4
  5a88fe:	85 f6                                           	test   esi,esi
  5a8900:	74 3c                                           	je     0x5a893e
  5a8902:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a8904:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  5a890a:	8b cf                                           	mov    ecx,edi
  5a890c:	ff d2                                           	call   edx
  5a890e:	c7 06 1c c9 06 01                               	mov    DWORD PTR [esi],0x106c91c
  5a8914:	33 c9                                           	xor    ecx,ecx
  5a8916:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  5a8919:	87 0b                                           	xchg   DWORD PTR [ebx],ecx
  5a891b:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a891e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5a8922:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5a8925:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5a8929:	c7 46 10 30 e1 5a 00                            	mov    DWORD PTR [esi+0x10],0x5ae130
  5a8930:	c7 06 00 29 fe 00                               	mov    DWORD PTR [esi],0xfe2900
  5a8936:	89 56 18                                        	mov    DWORD PTR [esi+0x18],edx
  5a8939:	89 46 1c                                        	mov    DWORD PTR [esi+0x1c],eax
  5a893c:	eb 02                                           	jmp    0x5a8940
  5a893e:	33 f6                                           	xor    esi,esi
  5a8940:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8942:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a8945:	8b ce                                           	mov    ecx,esi
  5a8947:	ff d0                                           	call   eax
  5a8949:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a894d:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  5a894f:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  5a8955:	6a 00                                           	push   0x0
  5a8957:	51                                              	push   ecx
  5a8958:	6a ff                                           	push   0xffffffff
  5a895a:	8b cf                                           	mov    ecx,edi
  5a895c:	ff d2                                           	call   edx
  5a895e:	52                                              	push   edx
  5a895f:	50                                              	push   eax
  5a8960:	8b 83 20 01 00 00                               	mov    eax,DWORD PTR [ebx+0x120]
  5a8966:	8b cf                                           	mov    ecx,edi
  5a8968:	ff d0                                           	call   eax
  5a896a:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5a896d:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a8970:	6a 00                                           	push   0x0
  5a8972:	6a 00                                           	push   0x0
  5a8974:	56                                              	push   esi
  5a8975:	68 f0 90 02 03                                  	push   0x30290f0
  5a897a:	8b cd                                           	mov    ecx,ebp
  5a897c:	ff d0                                           	call   eax
  5a897e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8980:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5a8983:	8b ce                                           	mov    ecx,esi
  5a8985:	ff d0                                           	call   eax
  5a8987:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a8989:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
  5a898f:	8b cf                                           	mov    ecx,edi
  5a8991:	5f                                              	pop    edi
  5a8992:	5e                                              	pop    esi
  5a8993:	5d                                              	pop    ebp
  5a8994:	5b                                              	pop    ebx
  5a8995:	ff e0                                           	jmp    eax
  5a8997:	cc                                              	int3
  5a8998:	cc                                              	int3
  5a8999:	cc                                              	int3
  5a899a:	cc                                              	int3
  5a899b:	cc                                              	int3
  5a899c:	cc                                              	int3
  5a899d:	cc                                              	int3
  5a899e:	cc                                              	int3
  5a899f:	cc                                              	int3
