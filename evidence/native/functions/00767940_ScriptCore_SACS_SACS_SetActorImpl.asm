# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767940 (ScriptCore.SACS::SACS_SetActorImpl)
Paired Ghidra pseudocode: 00767940_ScriptCore_SACS_SACS_SetActorImpl.c
Window: [0x00767940, 0x007679e0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x007679e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767940: 51 53 e8 49 1a 00 00 8b 4c 24 0c 8b 10 8b 92 cc
00767950: 00 00 00 51 8b c8 ff d2 8b d8 85 db 74 77 56 8b
00767960: 74 24 18 85 f6 57 8b 7c 24 20 75 16 85 ff 75 12
00767970: 8b 44 24 18 57 50 8b cb e8 e3 c2 09 00 5f 5e 5b
00767980: 59 c3 e8 e9 fb 1c 00 57 56 8b c8 e8 f0 05 1d 00
00767990: 8b f0 85 f6 74 0c 8d 4e 04 ba 01 00 00 00 f0 0f
007679a0: c1 11 8b 44 24 18 56 50 8b cb e8 b1 c2 09 00 85
007679b0: f6 74 20 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a
007679c0: 75 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b
007679d0: ce ff d0 5f 5e 5b 59 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00767940 <.text+0x366940>:
  767940:	51                                              	push   ecx
  767941:	53                                              	push   ebx
  767942:	e8 49 1a 00 00                                  	call   0x769390
  767947:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76794b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76794d:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  767953:	51                                              	push   ecx
  767954:	8b c8                                           	mov    ecx,eax
  767956:	ff d2                                           	call   edx
  767958:	8b d8                                           	mov    ebx,eax
  76795a:	85 db                                           	test   ebx,ebx
  76795c:	74 77                                           	je     0x7679d5
  76795e:	56                                              	push   esi
  76795f:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  767963:	85 f6                                           	test   esi,esi
  767965:	57                                              	push   edi
  767966:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  76796a:	75 16                                           	jne    0x767982
  76796c:	85 ff                                           	test   edi,edi
  76796e:	75 12                                           	jne    0x767982
  767970:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  767974:	57                                              	push   edi
  767975:	50                                              	push   eax
  767976:	8b cb                                           	mov    ecx,ebx
  767978:	e8 e3 c2 09 00                                  	call   0x803c60
  76797d:	5f                                              	pop    edi
  76797e:	5e                                              	pop    esi
  76797f:	5b                                              	pop    ebx
  767980:	59                                              	pop    ecx
  767981:	c3                                              	ret
  767982:	e8 e9 fb 1c 00                                  	call   0x937570
  767987:	57                                              	push   edi
  767988:	56                                              	push   esi
  767989:	8b c8                                           	mov    ecx,eax
  76798b:	e8 f0 05 1d 00                                  	call   0x937f80
  767990:	8b f0                                           	mov    esi,eax
  767992:	85 f6                                           	test   esi,esi
  767994:	74 0c                                           	je     0x7679a2
  767996:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  767999:	ba 01 00 00 00                                  	mov    edx,0x1
  76799e:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7679a2:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7679a6:	56                                              	push   esi
  7679a7:	50                                              	push   eax
  7679a8:	8b cb                                           	mov    ecx,ebx
  7679aa:	e8 b1 c2 09 00                                  	call   0x803c60
  7679af:	85 f6                                           	test   esi,esi
  7679b1:	74 20                                           	je     0x7679d3
  7679b3:	8d 46 04                                        	lea    eax,[esi+0x4]
  7679b6:	8b c8                                           	mov    ecx,eax
  7679b8:	83 ca ff                                        	or     edx,0xffffffff
  7679bb:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7679bf:	4a                                              	dec    edx
  7679c0:	75 11                                           	jne    0x7679d3
  7679c2:	b9 01 00 00 00                                  	mov    ecx,0x1
  7679c7:	87 08                                           	xchg   DWORD PTR [eax],ecx
  7679c9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7679cb:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7679cd:	6a 01                                           	push   0x1
  7679cf:	8b ce                                           	mov    ecx,esi
  7679d1:	ff d0                                           	call   eax
  7679d3:	5f                                              	pop    edi
  7679d4:	5e                                              	pop    esi
  7679d5:	5b                                              	pop    ebx
  7679d6:	59                                              	pop    ecx
  7679d7:	c3                                              	ret
  7679d8:	cc                                              	int3
  7679d9:	cc                                              	int3
  7679da:	cc                                              	int3
  7679db:	cc                                              	int3
  7679dc:	cc                                              	int3
  7679dd:	cc                                              	int3
  7679de:	cc                                              	int3
  7679df:	cc                                              	int3
