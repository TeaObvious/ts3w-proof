# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d540 (SacsWrap_PlayAnimationNode_SetClipKey)
Paired Ghidra pseudocode: 1098D540_SacsWrap_PlayAnimationNode_SetClipKey.c
Window: [0x1098d540, 0x1098d580) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d540: 8b 4c 24 04 85 c9 53 56 57 74 2a 8b 7c 24 20 8b
1098d550: 54 24 18 8b 5c 24 24 8b 74 24 1c 83 ec 10 8b c4
1098d560: 89 38 89 58 04 89 50 08 89 70 0c 8b 44 24 24 50
1098d570: e8 3b a0 c5 ff 5f 5e 5b c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d540 <.text+0x98c540>:
1098d540:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d544:	85 c9                                           	test   ecx,ecx
1098d546:	53                                              	push   ebx
1098d547:	56                                              	push   esi
1098d548:	57                                              	push   edi
1098d549:	74 2a                                           	je     0x1098d575
1098d54b:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
1098d54f:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1098d553:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
1098d557:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
1098d55b:	83 ec 10                                        	sub    esp,0x10
1098d55e:	8b c4                                           	mov    eax,esp
1098d560:	89 38                                           	mov    DWORD PTR [eax],edi
1098d562:	89 58 04                                        	mov    DWORD PTR [eax+0x4],ebx
1098d565:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1098d568:	89 70 0c                                        	mov    DWORD PTR [eax+0xc],esi
1098d56b:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1098d56f:	50                                              	push   eax
1098d570:	e8 3b a0 c5 ff                                  	call   0x105e75b0
1098d575:	5f                                              	pop    edi
1098d576:	5e                                              	pop    esi
1098d577:	5b                                              	pop    ebx
1098d578:	c3                                              	ret
1098d579:	cc                                              	int3
1098d57a:	cc                                              	int3
1098d57b:	cc                                              	int3
1098d57c:	cc                                              	int3
1098d57d:	cc                                              	int3
1098d57e:	cc                                              	int3
1098d57f:	cc                                              	int3
