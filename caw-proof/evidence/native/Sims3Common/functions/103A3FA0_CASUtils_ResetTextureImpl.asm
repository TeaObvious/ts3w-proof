# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3fa0 (CASUtils_ResetTextureImpl)
Paired Ghidra pseudocode: 103A3FA0_CASUtils_ResetTextureImpl.c
Window: [0x103a3fa0, 0x103a4050) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3fa0: 83 ec 10 53 57 e8 f6 61 38 00 8b f8 33 db 3b fb
103a3fb0: 0f 84 8a 00 00 00 8b 44 24 20 8b 4c 24 1c 56 50
103a3fc0: 51 8b cf e8 e8 6b 38 00 8b f0 3b f3 74 71 8b 15
103a3fd0: 04 d8 c8 10 52 8b ce e8 c4 2d 38 00 3b c3 74 5f
103a3fe0: 8b c8 89 5c 24 0c 89 5c 24 10 89 5c 24 14 89 5c
103a3ff0: 24 18 e8 f9 d1 26 00 38 5c 24 28 8b 08 89 4c 24
103a4000: 0c 8b 50 04 89 54 24 10 8b 48 08 89 4c 24 14 8b
103a4010: 50 0c 89 54 24 18 75 15 8d 44 24 0c 50 56 e8 6d
103a4020: fe ff ff 83 c4 08 5e 5f 5b 83 c4 10 c3 8d 4c 24
103a4030: 0c 51 53 68 90 3e 3a 10 8b cf e8 01 6c 38 00 5e
103a4040: 5f 5b 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3fa0 <.text+0x3a2fa0>:
103a3fa0:	83 ec 10                                        	sub    esp,0x10
103a3fa3:	53                                              	push   ebx
103a3fa4:	57                                              	push   edi
103a3fa5:	e8 f6 61 38 00                                  	call   0x1072a1a0
103a3faa:	8b f8                                           	mov    edi,eax
103a3fac:	33 db                                           	xor    ebx,ebx
103a3fae:	3b fb                                           	cmp    edi,ebx
103a3fb0:	0f 84 8a 00 00 00                               	je     0x103a4040
103a3fb6:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a3fba:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a3fbe:	56                                              	push   esi
103a3fbf:	50                                              	push   eax
103a3fc0:	51                                              	push   ecx
103a3fc1:	8b cf                                           	mov    ecx,edi
103a3fc3:	e8 e8 6b 38 00                                  	call   0x1072abb0
103a3fc8:	8b f0                                           	mov    esi,eax
103a3fca:	3b f3                                           	cmp    esi,ebx
103a3fcc:	74 71                                           	je     0x103a403f
103a3fce:	8b 15 04 d8 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d804
103a3fd4:	52                                              	push   edx
103a3fd5:	8b ce                                           	mov    ecx,esi
103a3fd7:	e8 c4 2d 38 00                                  	call   0x10726da0
103a3fdc:	3b c3                                           	cmp    eax,ebx
103a3fde:	74 5f                                           	je     0x103a403f
103a3fe0:	8b c8                                           	mov    ecx,eax
103a3fe2:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
103a3fe6:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
103a3fea:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
103a3fee:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
103a3ff2:	e8 f9 d1 26 00                                  	call   0x106111f0
103a3ff7:	38 5c 24 28                                     	cmp    BYTE PTR [esp+0x28],bl
103a3ffb:	8b 08                                           	mov    ecx,DWORD PTR [eax]
103a3ffd:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
103a4001:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a4004:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
103a4008:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
103a400b:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
103a400f:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
103a4012:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
103a4016:	75 15                                           	jne    0x103a402d
103a4018:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
103a401c:	50                                              	push   eax
103a401d:	56                                              	push   esi
103a401e:	e8 6d fe ff ff                                  	call   0x103a3e90
103a4023:	83 c4 08                                        	add    esp,0x8
103a4026:	5e                                              	pop    esi
103a4027:	5f                                              	pop    edi
103a4028:	5b                                              	pop    ebx
103a4029:	83 c4 10                                        	add    esp,0x10
103a402c:	c3                                              	ret
103a402d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
103a4031:	51                                              	push   ecx
103a4032:	53                                              	push   ebx
103a4033:	68 90 3e 3a 10                                  	push   0x103a3e90
103a4038:	8b cf                                           	mov    ecx,edi
103a403a:	e8 01 6c 38 00                                  	call   0x1072ac40
103a403f:	5e                                              	pop    esi
103a4040:	5f                                              	pop    edi
103a4041:	5b                                              	pop    ebx
103a4042:	83 c4 10                                        	add    esp,0x10
103a4045:	c3                                              	ret
103a4046:	cc                                              	int3
103a4047:	cc                                              	int3
103a4048:	cc                                              	int3
103a4049:	cc                                              	int3
103a404a:	cc                                              	int3
103a404b:	cc                                              	int3
103a404c:	cc                                              	int3
103a404d:	cc                                              	int3
103a404e:	cc                                              	int3
103a404f:	cc                                              	int3
