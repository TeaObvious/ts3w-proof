# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cff0 (SacsWrap_PlayAnimationNode_GetClipKey)
Paired Ghidra pseudocode: 1098CFF0_SacsWrap_PlayAnimationNode_GetClipKey.c
Window: [0x1098cff0, 0x1098d050) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cff0: 8b 4c 24 08 83 ec 10 85 c9 74 36 8b 44 24 1c 56
1098d000: 57 50 8d 54 24 0c 52 e8 04 9d c5 ff 8b 44 24 1c
1098d010: 8b 4c 24 10 8b 54 24 14 8b 74 24 08 8b 7c 24 0c
1098d020: 89 08 89 50 04 89 70 08 89 78 0c 5f 5e 83 c4 10
1098d030: c3 8b 44 24 14 33 c9 89 08 89 48 04 89 48 08 89
1098d040: 48 0c 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cff0 <.text+0x98bff0>:
1098cff0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098cff4:	83 ec 10                                        	sub    esp,0x10
1098cff7:	85 c9                                           	test   ecx,ecx
1098cff9:	74 36                                           	je     0x1098d031
1098cffb:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098cfff:	56                                              	push   esi
1098d000:	57                                              	push   edi
1098d001:	50                                              	push   eax
1098d002:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
1098d006:	52                                              	push   edx
1098d007:	e8 04 9d c5 ff                                  	call   0x105e6d10
1098d00c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098d010:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098d014:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1098d018:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098d01c:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
1098d020:	89 08                                           	mov    DWORD PTR [eax],ecx
1098d022:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1098d025:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
1098d028:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
1098d02b:	5f                                              	pop    edi
1098d02c:	5e                                              	pop    esi
1098d02d:	83 c4 10                                        	add    esp,0x10
1098d030:	c3                                              	ret
1098d031:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098d035:	33 c9                                           	xor    ecx,ecx
1098d037:	89 08                                           	mov    DWORD PTR [eax],ecx
1098d039:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1098d03c:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1098d03f:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1098d042:	83 c4 10                                        	add    esp,0x10
1098d045:	c3                                              	ret
1098d046:	cc                                              	int3
1098d047:	cc                                              	int3
1098d048:	cc                                              	int3
1098d049:	cc                                              	int3
1098d04a:	cc                                              	int3
1098d04b:	cc                                              	int3
1098d04c:	cc                                              	int3
1098d04d:	cc                                              	int3
1098d04e:	cc                                              	int3
1098d04f:	cc                                              	int3
