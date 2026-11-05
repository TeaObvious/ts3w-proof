# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098edf0 (SceneManWrap_SetVisibility)
Paired Ghidra pseudocode: 1098EDF0_SceneManWrap_SetVisibility.c
Window: [0x1098edf0, 0x1098ee30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ee30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098edf0: 8b 4c 24 04 85 c9 74 37 56 57 e8 51 c0 da ff 8b
1098ee00: f0 8b fa e8 98 43 b6 ff 85 c0 74 21 57 56 8b c8
1098ee10: e8 bb 48 b6 ff 85 c0 74 14 8a 4c 24 10 8b 10 8b
1098ee20: 52 34 f6 d9 1b c9 51 6a 01 8b c8 ff d2 5f 5e c3

LINEAR DISASSEMBLY
1098edf0 <.text+0x98ddf0>:
1098edf0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098edf4:	85 c9                                           	test   ecx,ecx
1098edf6:	74 37                                           	je     0x1098ee2f
1098edf8:	56                                              	push   esi
1098edf9:	57                                              	push   edi
1098edfa:	e8 51 c0 da ff                                  	call   0x1073ae50
1098edff:	8b f0                                           	mov    esi,eax
1098ee01:	8b fa                                           	mov    edi,edx
1098ee03:	e8 98 43 b6 ff                                  	call   0x104f31a0
1098ee08:	85 c0                                           	test   eax,eax
1098ee0a:	74 21                                           	je     0x1098ee2d
1098ee0c:	57                                              	push   edi
1098ee0d:	56                                              	push   esi
1098ee0e:	8b c8                                           	mov    ecx,eax
1098ee10:	e8 bb 48 b6 ff                                  	call   0x104f36d0
1098ee15:	85 c0                                           	test   eax,eax
1098ee17:	74 14                                           	je     0x1098ee2d
1098ee19:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
1098ee1d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098ee1f:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
1098ee22:	f6 d9                                           	neg    cl
1098ee24:	1b c9                                           	sbb    ecx,ecx
1098ee26:	51                                              	push   ecx
1098ee27:	6a 01                                           	push   0x1
1098ee29:	8b c8                                           	mov    ecx,eax
1098ee2b:	ff d2                                           	call   edx
1098ee2d:	5f                                              	pop    edi
1098ee2e:	5e                                              	pop    esi
1098ee2f:	c3                                              	ret
