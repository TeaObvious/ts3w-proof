# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d7c0 (SacsWrap_StateMachineDriver_SetActor)
Paired Ghidra pseudocode: 1098D7C0_SacsWrap_StateMachineDriver_SetActor.c
Window: [0x1098d7c0, 0x1098d830) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d7c0: 53 8b 5c 24 08 85 db 74 61 57 8b 7c 24 10 85 ff
1098d7d0: 74 57 56 e8 c8 c9 d9 ff 8b 4c 24 1c 8b 54 24 18
1098d7e0: 51 52 8b c8 e8 c7 d3 d9 ff 8b f0 85 f6 74 0c 8d
1098d7f0: 46 04 b9 01 00 00 00 f0 0f c1 08 56 57 8b cb e8
1098d800: 7c 89 c6 ff 85 f6 74 20 8d 46 04 8b d0 83 c9 ff
1098d810: f0 0f c1 0a 49 75 11 ba 01 00 00 00 87 10 8b 06
1098d820: 8b 10 6a 01 8b ce ff d2 5e 5f 5b c3 cc cc cc cc

LINEAR DISASSEMBLY
1098d7c0 <.text+0x98c7c0>:
1098d7c0:	53                                              	push   ebx
1098d7c1:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
1098d7c5:	85 db                                           	test   ebx,ebx
1098d7c7:	74 61                                           	je     0x1098d82a
1098d7c9:	57                                              	push   edi
1098d7ca:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1098d7ce:	85 ff                                           	test   edi,edi
1098d7d0:	74 57                                           	je     0x1098d829
1098d7d2:	56                                              	push   esi
1098d7d3:	e8 c8 c9 d9 ff                                  	call   0x1072a1a0
1098d7d8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1098d7dc:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1098d7e0:	51                                              	push   ecx
1098d7e1:	52                                              	push   edx
1098d7e2:	8b c8                                           	mov    ecx,eax
1098d7e4:	e8 c7 d3 d9 ff                                  	call   0x1072abb0
1098d7e9:	8b f0                                           	mov    esi,eax
1098d7eb:	85 f6                                           	test   esi,esi
1098d7ed:	74 0c                                           	je     0x1098d7fb
1098d7ef:	8d 46 04                                        	lea    eax,[esi+0x4]
1098d7f2:	b9 01 00 00 00                                  	mov    ecx,0x1
1098d7f7:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1098d7fb:	56                                              	push   esi
1098d7fc:	57                                              	push   edi
1098d7fd:	8b cb                                           	mov    ecx,ebx
1098d7ff:	e8 7c 89 c6 ff                                  	call   0x105f6180
1098d804:	85 f6                                           	test   esi,esi
1098d806:	74 20                                           	je     0x1098d828
1098d808:	8d 46 04                                        	lea    eax,[esi+0x4]
1098d80b:	8b d0                                           	mov    edx,eax
1098d80d:	83 c9 ff                                        	or     ecx,0xffffffff
1098d810:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
1098d814:	49                                              	dec    ecx
1098d815:	75 11                                           	jne    0x1098d828
1098d817:	ba 01 00 00 00                                  	mov    edx,0x1
1098d81c:	87 10                                           	xchg   DWORD PTR [eax],edx
1098d81e:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098d820:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098d822:	6a 01                                           	push   0x1
1098d824:	8b ce                                           	mov    ecx,esi
1098d826:	ff d2                                           	call   edx
1098d828:	5e                                              	pop    esi
1098d829:	5f                                              	pop    edi
1098d82a:	5b                                              	pop    ebx
1098d82b:	c3                                              	ret
1098d82c:	cc                                              	int3
1098d82d:	cc                                              	int3
1098d82e:	cc                                              	int3
1098d82f:	cc                                              	int3
