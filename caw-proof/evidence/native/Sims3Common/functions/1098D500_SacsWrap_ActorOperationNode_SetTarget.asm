# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d500 (SacsWrap_ActorOperationNode_SetTarget)
Paired Ghidra pseudocode: 1098D500_SacsWrap_ActorOperationNode_SetTarget.c
Window: [0x1098d500, 0x1098d540) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d500: 53 8b 5c 24 08 85 db 74 2e 56 8b 74 24 10 57 8b
1098d510: 7b 50 3b f7 74 1f 85 f6 74 08 8b 06 8b 10 8b ce
1098d520: ff d2 85 ff 89 73 50 74 0c 8b 07 8b 50 04 8b cf
1098d530: 5f 5e 5b ff e2 5f 5e 5b c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d500 <.text+0x98c500>:
1098d500:	53                                              	push   ebx
1098d501:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
1098d505:	85 db                                           	test   ebx,ebx
1098d507:	74 2e                                           	je     0x1098d537
1098d509:	56                                              	push   esi
1098d50a:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
1098d50e:	57                                              	push   edi
1098d50f:	8b 7b 50                                        	mov    edi,DWORD PTR [ebx+0x50]
1098d512:	3b f7                                           	cmp    esi,edi
1098d514:	74 1f                                           	je     0x1098d535
1098d516:	85 f6                                           	test   esi,esi
1098d518:	74 08                                           	je     0x1098d522
1098d51a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098d51c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098d51e:	8b ce                                           	mov    ecx,esi
1098d520:	ff d2                                           	call   edx
1098d522:	85 ff                                           	test   edi,edi
1098d524:	89 73 50                                        	mov    DWORD PTR [ebx+0x50],esi
1098d527:	74 0c                                           	je     0x1098d535
1098d529:	8b 07                                           	mov    eax,DWORD PTR [edi]
1098d52b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098d52e:	8b cf                                           	mov    ecx,edi
1098d530:	5f                                              	pop    edi
1098d531:	5e                                              	pop    esi
1098d532:	5b                                              	pop    ebx
1098d533:	ff e2                                           	jmp    edx
1098d535:	5f                                              	pop    edi
1098d536:	5e                                              	pop    esi
1098d537:	5b                                              	pop    ebx
1098d538:	c3                                              	ret
1098d539:	cc                                              	int3
1098d53a:	cc                                              	int3
1098d53b:	cc                                              	int3
1098d53c:	cc                                              	int3
1098d53d:	cc                                              	int3
1098d53e:	cc                                              	int3
1098d53f:	cc                                              	int3
