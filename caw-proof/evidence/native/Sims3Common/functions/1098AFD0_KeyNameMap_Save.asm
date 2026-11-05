# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098afd0 (KeyNameMap_Save)
Paired Ghidra pseudocode: 1098AFD0_KeyNameMap_Save.c
Window: [0x1098afd0, 0x1098b050) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098b050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098afd0: 83 ec 08 53 8b 5c 24 14 55 8b 6c 24 1c 56 8b 35
1098afe0: 78 80 cb 10 8d 44 24 2c 50 8d 4c 24 10 51 8b ce
1098aff0: e8 1b d4 d1 ff 8b 56 08 8b 4e 04 8b 44 24 0c 3b
1098b000: 04 91 75 09 5e 5d 33 c0 5b 83 c4 08 c3 8b 74 24
1098b010: 18 57 8b 78 04 8b 44 24 28 89 46 08 8b 44 24 2c
1098b020: 89 46 0c 89 5e 10 89 6e 14 e8 a2 a0 f5 ff 8b 10
1098b030: 6a 00 6a 00 57 6a 00 8b c8 8b 42 1c 56 ff d0 f6
1098b040: d8 5f 5e 5d 5b 1b c0 f7 d8 83 c4 08 c3 cc cc cc

LINEAR DISASSEMBLY
1098afd0 <.text+0x989fd0>:
1098afd0:	83 ec 08                                        	sub    esp,0x8
1098afd3:	53                                              	push   ebx
1098afd4:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
1098afd8:	55                                              	push   ebp
1098afd9:	8b 6c 24 1c                                     	mov    ebp,DWORD PTR [esp+0x1c]
1098afdd:	56                                              	push   esi
1098afde:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098afe4:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
1098afe8:	50                                              	push   eax
1098afe9:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1098afed:	51                                              	push   ecx
1098afee:	8b ce                                           	mov    ecx,esi
1098aff0:	e8 1b d4 d1 ff                                  	call   0x106a8410
1098aff5:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
1098aff8:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098affb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098afff:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
1098b002:	75 09                                           	jne    0x1098b00d
1098b004:	5e                                              	pop    esi
1098b005:	5d                                              	pop    ebp
1098b006:	33 c0                                           	xor    eax,eax
1098b008:	5b                                              	pop    ebx
1098b009:	83 c4 08                                        	add    esp,0x8
1098b00c:	c3                                              	ret
1098b00d:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1098b011:	57                                              	push   edi
1098b012:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
1098b015:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1098b019:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1098b01c:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1098b020:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
1098b023:	89 5e 10                                        	mov    DWORD PTR [esi+0x10],ebx
1098b026:	89 6e 14                                        	mov    DWORD PTR [esi+0x14],ebp
1098b029:	e8 a2 a0 f5 ff                                  	call   0x108e50d0
1098b02e:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098b030:	6a 00                                           	push   0x0
1098b032:	6a 00                                           	push   0x0
1098b034:	57                                              	push   edi
1098b035:	6a 00                                           	push   0x0
1098b037:	8b c8                                           	mov    ecx,eax
1098b039:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
1098b03c:	56                                              	push   esi
1098b03d:	ff d0                                           	call   eax
1098b03f:	f6 d8                                           	neg    al
1098b041:	5f                                              	pop    edi
1098b042:	5e                                              	pop    esi
1098b043:	5d                                              	pop    ebp
1098b044:	5b                                              	pop    ebx
1098b045:	1b c0                                           	sbb    eax,eax
1098b047:	f7 d8                                           	neg    eax
1098b049:	83 c4 08                                        	add    esp,0x8
1098b04c:	c3                                              	ret
1098b04d:	cc                                              	int3
1098b04e:	cc                                              	int3
1098b04f:	cc                                              	int3
