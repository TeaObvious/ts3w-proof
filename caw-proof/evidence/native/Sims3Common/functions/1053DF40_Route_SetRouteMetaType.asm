# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053df40 (Route_SetRouteMetaType)
Paired Ghidra pseudocode: 1053DF40_Route_SetRouteMetaType.c
Window: [0x1053df40, 0x1053df80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053df80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053df40: 8b 0d 44 89 c7 10 85 c9 74 2f 8b 44 24 04 56 50
1053df50: e8 9b e1 ff ff 8b f0 85 f6 74 1d 8b 16 8b 42 10
1053df60: 8b ce ff d0 8b 4c 24 0c 89 8e f0 01 00 00 8b 16
1053df70: 8b 42 14 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053df40 <.text+0x53cf40>:
1053df40:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053df46:	85 c9                                           	test   ecx,ecx
1053df48:	74 2f                                           	je     0x1053df79
1053df4a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053df4e:	56                                              	push   esi
1053df4f:	50                                              	push   eax
1053df50:	e8 9b e1 ff ff                                  	call   0x1053c0f0
1053df55:	8b f0                                           	mov    esi,eax
1053df57:	85 f6                                           	test   esi,esi
1053df59:	74 1d                                           	je     0x1053df78
1053df5b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053df5d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1053df60:	8b ce                                           	mov    ecx,esi
1053df62:	ff d0                                           	call   eax
1053df64:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053df68:	89 8e f0 01 00 00                               	mov    DWORD PTR [esi+0x1f0],ecx
1053df6e:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053df70:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1053df73:	8b ce                                           	mov    ecx,esi
1053df75:	5e                                              	pop    esi
1053df76:	ff e0                                           	jmp    eax
1053df78:	5e                                              	pop    esi
1053df79:	c3                                              	ret
1053df7a:	cc                                              	int3
1053df7b:	cc                                              	int3
1053df7c:	cc                                              	int3
1053df7d:	cc                                              	int3
1053df7e:	cc                                              	int3
1053df7f:	cc                                              	int3
