# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d420 (SacsWrap_State_GetTransitions)
Paired Ghidra pseudocode: 1098D420_SacsWrap_State_GetTransitions.c
Window: [0x1098d420, 0x1098d470) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d420: 8b 44 24 04 85 c0 56 57 74 34 8b 7c 24 10 85 ff
1098d430: 8b 74 24 14 74 04 85 f6 74 24 8b 48 3c 8b 50 40
1098d440: 33 c0 3b ca 74 1a 53 3b c7 73 05 8b 19 89 1c 86
1098d450: 83 c1 04 83 c0 01 3b ca 75 ed 5b 5f 5e c3 33 c0
1098d460: 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d420 <.text+0x98c420>:
1098d420:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d424:	85 c0                                           	test   eax,eax
1098d426:	56                                              	push   esi
1098d427:	57                                              	push   edi
1098d428:	74 34                                           	je     0x1098d45e
1098d42a:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1098d42e:	85 ff                                           	test   edi,edi
1098d430:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1098d434:	74 04                                           	je     0x1098d43a
1098d436:	85 f6                                           	test   esi,esi
1098d438:	74 24                                           	je     0x1098d45e
1098d43a:	8b 48 3c                                        	mov    ecx,DWORD PTR [eax+0x3c]
1098d43d:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
1098d440:	33 c0                                           	xor    eax,eax
1098d442:	3b ca                                           	cmp    ecx,edx
1098d444:	74 1a                                           	je     0x1098d460
1098d446:	53                                              	push   ebx
1098d447:	3b c7                                           	cmp    eax,edi
1098d449:	73 05                                           	jae    0x1098d450
1098d44b:	8b 19                                           	mov    ebx,DWORD PTR [ecx]
1098d44d:	89 1c 86                                        	mov    DWORD PTR [esi+eax*4],ebx
1098d450:	83 c1 04                                        	add    ecx,0x4
1098d453:	83 c0 01                                        	add    eax,0x1
1098d456:	3b ca                                           	cmp    ecx,edx
1098d458:	75 ed                                           	jne    0x1098d447
1098d45a:	5b                                              	pop    ebx
1098d45b:	5f                                              	pop    edi
1098d45c:	5e                                              	pop    esi
1098d45d:	c3                                              	ret
1098d45e:	33 c0                                           	xor    eax,eax
1098d460:	5f                                              	pop    edi
1098d461:	5e                                              	pop    esi
1098d462:	c3                                              	ret
1098d463:	cc                                              	int3
1098d464:	cc                                              	int3
1098d465:	cc                                              	int3
1098d466:	cc                                              	int3
1098d467:	cc                                              	int3
1098d468:	cc                                              	int3
1098d469:	cc                                              	int3
1098d46a:	cc                                              	int3
1098d46b:	cc                                              	int3
1098d46c:	cc                                              	int3
1098d46d:	cc                                              	int3
1098d46e:	cc                                              	int3
1098d46f:	cc                                              	int3
