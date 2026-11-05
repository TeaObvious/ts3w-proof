# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fa60 (ShaderSet_GetParameterDefaultFloat2)
Paired Ghidra pseudocode: 1098FA60_ShaderSet_GetParameterDefaultFloat2.c
Window: [0x1098fa60, 0x1098fac0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fa60: 83 ec 08 56 8b 74 24 14 57 8b 7c 24 14 56 8b cf
1098fa70: e8 4b 38 c0 ff 83 f8 02 74 11 a1 5c 72 b9 10 8b
1098fa80: 15 60 72 b9 10 5f 5e 83 c4 08 c3 56 8b cf e8 7d
1098fa90: 38 c0 ff f3 0f 10 00 f3 0f 11 44 24 08 f3 0f 10
1098faa0: 40 04 8b 44 24 08 f3 0f 11 44 24 0c 8b 54 24 0c
1098fab0: 5f 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fa60 <.text+0x98ea60>:
1098fa60:	83 ec 08                                        	sub    esp,0x8
1098fa63:	56                                              	push   esi
1098fa64:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
1098fa68:	57                                              	push   edi
1098fa69:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1098fa6d:	56                                              	push   esi
1098fa6e:	8b cf                                           	mov    ecx,edi
1098fa70:	e8 4b 38 c0 ff                                  	call   0x105932c0
1098fa75:	83 f8 02                                        	cmp    eax,0x2
1098fa78:	74 11                                           	je     0x1098fa8b
1098fa7a:	a1 5c 72 b9 10                                  	mov    eax,ds:0x10b9725c
1098fa7f:	8b 15 60 72 b9 10                               	mov    edx,DWORD PTR ds:0x10b97260
1098fa85:	5f                                              	pop    edi
1098fa86:	5e                                              	pop    esi
1098fa87:	83 c4 08                                        	add    esp,0x8
1098fa8a:	c3                                              	ret
1098fa8b:	56                                              	push   esi
1098fa8c:	8b cf                                           	mov    ecx,edi
1098fa8e:	e8 7d 38 c0 ff                                  	call   0x10593310
1098fa93:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098fa97:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098fa9d:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
1098faa2:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098faa6:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098faac:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098fab0:	5f                                              	pop    edi
1098fab1:	5e                                              	pop    esi
1098fab2:	83 c4 08                                        	add    esp,0x8
1098fab5:	c3                                              	ret
1098fab6:	cc                                              	int3
1098fab7:	cc                                              	int3
1098fab8:	cc                                              	int3
1098fab9:	cc                                              	int3
1098faba:	cc                                              	int3
1098fabb:	cc                                              	int3
1098fabc:	cc                                              	int3
1098fabd:	cc                                              	int3
1098fabe:	cc                                              	int3
1098fabf:	cc                                              	int3
