# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052d410 (Animation_ForceAnimation)
Paired Ghidra pseudocode: 1052D410_Animation_ForceAnimation.c
Window: [0x1052d410, 0x1052d480) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052d480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052d410: 51 56 e8 89 cd 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052d420: 52 8b c8 e8 88 d7 1f 00 8b f0 85 f6 74 4b 57 8d
1052d430: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c4
1052d440: 0c c8 10 52 8b ce e8 55 99 1f 00 85 c0 74 0c 8b
1052d450: 4c 24 18 51 8b c8 e8 c5 1a 20 00 8b d7 83 c8 ff
1052d460: f0 0f c1 02 48 75 11 b9 01 00 00 00 87 0f 8b 16
1052d470: 8b 02 6a 01 8b ce ff d0 5f 5e 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
1052d410 <.text+0x52c410>:
1052d410:	51                                              	push   ecx
1052d411:	56                                              	push   esi
1052d412:	e8 89 cd 1f 00                                  	call   0x1072a1a0
1052d417:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052d41b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052d41f:	51                                              	push   ecx
1052d420:	52                                              	push   edx
1052d421:	8b c8                                           	mov    ecx,eax
1052d423:	e8 88 d7 1f 00                                  	call   0x1072abb0
1052d428:	8b f0                                           	mov    esi,eax
1052d42a:	85 f6                                           	test   esi,esi
1052d42c:	74 4b                                           	je     0x1052d479
1052d42e:	57                                              	push   edi
1052d42f:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052d432:	8b c7                                           	mov    eax,edi
1052d434:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d439:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d43d:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052d443:	52                                              	push   edx
1052d444:	8b ce                                           	mov    ecx,esi
1052d446:	e8 55 99 1f 00                                  	call   0x10726da0
1052d44b:	85 c0                                           	test   eax,eax
1052d44d:	74 0c                                           	je     0x1052d45b
1052d44f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1052d453:	51                                              	push   ecx
1052d454:	8b c8                                           	mov    ecx,eax
1052d456:	e8 c5 1a 20 00                                  	call   0x1072ef20
1052d45b:	8b d7                                           	mov    edx,edi
1052d45d:	83 c8 ff                                        	or     eax,0xffffffff
1052d460:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
1052d464:	48                                              	dec    eax
1052d465:	75 11                                           	jne    0x1052d478
1052d467:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d46c:	87 0f                                           	xchg   DWORD PTR [edi],ecx
1052d46e:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052d470:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d472:	6a 01                                           	push   0x1
1052d474:	8b ce                                           	mov    ecx,esi
1052d476:	ff d0                                           	call   eax
1052d478:	5f                                              	pop    edi
1052d479:	5e                                              	pop    esi
1052d47a:	59                                              	pop    ecx
1052d47b:	c3                                              	ret
1052d47c:	cc                                              	int3
1052d47d:	cc                                              	int3
1052d47e:	cc                                              	int3
1052d47f:	cc                                              	int3
