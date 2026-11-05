# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558a10 (SACS_SetParamCompositeStringValImpl)
Paired Ghidra pseudocode: 10558A10_SACS_SetParamCompositeStringValImpl.c
Window: [0x10558a10, 0x10558a90) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558a10: 56 57 e8 09 27 00 00 8b 4c 24 18 8b 10 8b 52 58
10558a20: 51 8b c8 ff d2 8b f0 85 f6 bf c5 9d 1c 81 74 30
10558a30: 0f b7 06 66 85 c0 74 28 53 8b 1d 28 b5 aa 10 90
10558a40: 0f b7 c0 50 ff d3 69 ff 93 01 00 01 0f b7 c0 83
10558a50: c6 02 33 f8 0f b7 06 83 c4 04 66 85 c0 75 e1 5b
10558a60: 8b 4c 24 14 8b 54 24 10 8b 44 24 0c 57 51 52 50
10558a70: e8 cb fe ff ff 83 c4 10 5f 5e c3 cc cc cc cc cc
10558a80: b8 b8 e2 b1 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558a10 <.text+0x557a10>:
10558a10:	56                                              	push   esi
10558a11:	57                                              	push   edi
10558a12:	e8 09 27 00 00                                  	call   0x1055b120
10558a17:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10558a1b:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558a1d:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10558a20:	51                                              	push   ecx
10558a21:	8b c8                                           	mov    ecx,eax
10558a23:	ff d2                                           	call   edx
10558a25:	8b f0                                           	mov    esi,eax
10558a27:	85 f6                                           	test   esi,esi
10558a29:	bf c5 9d 1c 81                                  	mov    edi,0x811c9dc5
10558a2e:	74 30                                           	je     0x10558a60
10558a30:	0f b7 06                                        	movzx  eax,WORD PTR [esi]
10558a33:	66 85 c0                                        	test   ax,ax
10558a36:	74 28                                           	je     0x10558a60
10558a38:	53                                              	push   ebx
10558a39:	8b 1d 28 b5 aa 10                               	mov    ebx,DWORD PTR ds:0x10aab528
10558a3f:	90                                              	nop
10558a40:	0f b7 c0                                        	movzx  eax,ax
10558a43:	50                                              	push   eax
10558a44:	ff d3                                           	call   ebx
10558a46:	69 ff 93 01 00 01                               	imul   edi,edi,0x1000193
10558a4c:	0f b7 c0                                        	movzx  eax,ax
10558a4f:	83 c6 02                                        	add    esi,0x2
10558a52:	33 f8                                           	xor    edi,eax
10558a54:	0f b7 06                                        	movzx  eax,WORD PTR [esi]
10558a57:	83 c4 04                                        	add    esp,0x4
10558a5a:	66 85 c0                                        	test   ax,ax
10558a5d:	75 e1                                           	jne    0x10558a40
10558a5f:	5b                                              	pop    ebx
10558a60:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10558a64:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10558a68:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10558a6c:	57                                              	push   edi
10558a6d:	51                                              	push   ecx
10558a6e:	52                                              	push   edx
10558a6f:	50                                              	push   eax
10558a70:	e8 cb fe ff ff                                  	call   0x10558940
10558a75:	83 c4 10                                        	add    esp,0x10
10558a78:	5f                                              	pop    edi
10558a79:	5e                                              	pop    esi
10558a7a:	c3                                              	ret
10558a7b:	cc                                              	int3
10558a7c:	cc                                              	int3
10558a7d:	cc                                              	int3
10558a7e:	cc                                              	int3
10558a7f:	cc                                              	int3
10558a80:	b8 b8 e2 b1 10                                  	mov    eax,0x10b1e2b8
10558a85:	c3                                              	ret
10558a86:	cc                                              	int3
10558a87:	cc                                              	int3
10558a88:	cc                                              	int3
10558a89:	cc                                              	int3
10558a8a:	cc                                              	int3
10558a8b:	cc                                              	int3
10558a8c:	cc                                              	int3
10558a8d:	cc                                              	int3
10558a8e:	cc                                              	int3
10558a8f:	cc                                              	int3
