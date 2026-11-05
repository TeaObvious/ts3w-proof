# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654f40 (Audio_SetEventModifiersImpl)
Paired Ghidra pseudocode: 10654F40_Audio_SetEventModifiersImpl.c
Window: [0x10654f40, 0x10655120) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654f40: a1 a0 d4 c7 10 83 ec 1c 57 33 ff 3b c7 0f 84 b9
10654f50: 01 00 00 53 8d 98 30 84 fd ff 3b df 0f 84 a9 01
10654f60: 00 00 56 8b 74 24 2c 3b f7 74 30 57 57 57 57 68
10654f70: 18 85 b3 10 6a 0c e8 35 3f 2c 00 83 c4 18 3b c7
10654f80: 74 0a 56 8b c8 e8 c6 81 00 00 eb 02 33 c0 50 68
10654f90: d4 1c 68 20 8b cb e8 d5 2d 00 00 8b 74 24 34 3b
10654fa0: f7 74 30 57 57 57 57 68 fc 84 b3 10 6a 0c e8 fd
10654fb0: 3e 2c 00 83 c4 18 3b c7 74 0a 56 8b c8 e8 be 7f
10654fc0: 00 00 eb 02 33 c0 50 68 ef ac c4 51 8b cb e8 9d
10654fd0: 2d 00 00 55 8b 6c 24 34 3b ef 0f 84 29 01 00 00
10654fe0: 8b 03 8b 90 18 01 00 00 68 f0 84 b3 10 8b cb ff
10654ff0: d2 89 44 24 1c 89 54 24 20 c7 44 24 24 62 f6 b9
10655000: 02 c7 44 24 28 ec 07 14 00 89 7c 24 10 e8 be 00
10655010: 29 00 8b 4c 24 10 3b cf 8b f0 74 0b 89 7c 24 10
10655020: 8b 01 8b 50 04 ff d2 8b 06 8b 40 0c 57 57 57 57
10655030: 8d 4c 24 20 51 8d 54 24 30 52 8b ce ff d0 84 c0
10655040: 0f 84 b4 00 00 00 8b 4c 24 10 85 c9 8b f9 89 7c
10655050: 24 14 74 06 8b 11 8b 02 ff d0 8b 57 28 8b 52 20
10655060: 8d 4f 28 8d 44 24 18 50 68 7c 35 99 c4 ff d2 84
10655070: c0 74 7e 8b 74 24 18 66 83 7e 0a 13 75 73 f6 46
10655080: 08 10 74 6d 8b ce e8 d5 da be ff 8b ce 8b f8 e8
10655090: 4c d9 a6 ff 85 ff 76 55 8b f0 8d 9b 00 00 00 00
106550a0: 6a 00 6a 00 6a 00 6a 00 68 d4 84 b3 10 6a 1c e8
106550b0: fc 3d 2c 00 83 c4 18 85 c0 74 0d 8b 0e 51 55 8b
106550c0: c8 e8 1a 85 00 00 eb 02 33 c0 8b 0e 50 6a 01 68
106550d0: c5 9d 1c 81 51 e8 46 80 2d 00 83 c4 0c 50 8b cb
106550e0: e8 8b 2c 00 00 83 c6 10 83 ef 01 75 b3 8b 7c 24
106550f0: 14 8b 07 8b 50 04 8b cf ff d2 8b 4c 24 10 85 c9
10655100: 74 07 8b 01 8b 50 04 ff d2 5d 5e 5b 5f 83 c4 1c
10655110: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10654f40 <.text+0x653f40>:
10654f40:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
10654f45:	83 ec 1c                                        	sub    esp,0x1c
10654f48:	57                                              	push   edi
10654f49:	33 ff                                           	xor    edi,edi
10654f4b:	3b c7                                           	cmp    eax,edi
10654f4d:	0f 84 b9 01 00 00                               	je     0x1065510c
10654f53:	53                                              	push   ebx
10654f54:	8d 98 30 84 fd ff                               	lea    ebx,[eax-0x27bd0]
10654f5a:	3b df                                           	cmp    ebx,edi
10654f5c:	0f 84 a9 01 00 00                               	je     0x1065510b
10654f62:	56                                              	push   esi
10654f63:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
10654f67:	3b f7                                           	cmp    esi,edi
10654f69:	74 30                                           	je     0x10654f9b
10654f6b:	57                                              	push   edi
10654f6c:	57                                              	push   edi
10654f6d:	57                                              	push   edi
10654f6e:	57                                              	push   edi
10654f6f:	68 18 85 b3 10                                  	push   0x10b38518
10654f74:	6a 0c                                           	push   0xc
10654f76:	e8 35 3f 2c 00                                  	call   0x10918eb0
10654f7b:	83 c4 18                                        	add    esp,0x18
10654f7e:	3b c7                                           	cmp    eax,edi
10654f80:	74 0a                                           	je     0x10654f8c
10654f82:	56                                              	push   esi
10654f83:	8b c8                                           	mov    ecx,eax
10654f85:	e8 c6 81 00 00                                  	call   0x1065d150
10654f8a:	eb 02                                           	jmp    0x10654f8e
10654f8c:	33 c0                                           	xor    eax,eax
10654f8e:	50                                              	push   eax
10654f8f:	68 d4 1c 68 20                                  	push   0x20681cd4
10654f94:	8b cb                                           	mov    ecx,ebx
10654f96:	e8 d5 2d 00 00                                  	call   0x10657d70
10654f9b:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
10654f9f:	3b f7                                           	cmp    esi,edi
10654fa1:	74 30                                           	je     0x10654fd3
10654fa3:	57                                              	push   edi
10654fa4:	57                                              	push   edi
10654fa5:	57                                              	push   edi
10654fa6:	57                                              	push   edi
10654fa7:	68 fc 84 b3 10                                  	push   0x10b384fc
10654fac:	6a 0c                                           	push   0xc
10654fae:	e8 fd 3e 2c 00                                  	call   0x10918eb0
10654fb3:	83 c4 18                                        	add    esp,0x18
10654fb6:	3b c7                                           	cmp    eax,edi
10654fb8:	74 0a                                           	je     0x10654fc4
10654fba:	56                                              	push   esi
10654fbb:	8b c8                                           	mov    ecx,eax
10654fbd:	e8 be 7f 00 00                                  	call   0x1065cf80
10654fc2:	eb 02                                           	jmp    0x10654fc6
10654fc4:	33 c0                                           	xor    eax,eax
10654fc6:	50                                              	push   eax
10654fc7:	68 ef ac c4 51                                  	push   0x51c4acef
10654fcc:	8b cb                                           	mov    ecx,ebx
10654fce:	e8 9d 2d 00 00                                  	call   0x10657d70
10654fd3:	55                                              	push   ebp
10654fd4:	8b 6c 24 34                                     	mov    ebp,DWORD PTR [esp+0x34]
10654fd8:	3b ef                                           	cmp    ebp,edi
10654fda:	0f 84 29 01 00 00                               	je     0x10655109
10654fe0:	8b 03                                           	mov    eax,DWORD PTR [ebx]
10654fe2:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
10654fe8:	68 f0 84 b3 10                                  	push   0x10b384f0
10654fed:	8b cb                                           	mov    ecx,ebx
10654fef:	ff d2                                           	call   edx
10654ff1:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10654ff5:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
10654ff9:	c7 44 24 24 62 f6 b9 02                         	mov    DWORD PTR [esp+0x24],0x2b9f662
10655001:	c7 44 24 28 ec 07 14 00                         	mov    DWORD PTR [esp+0x28],0x1407ec
10655009:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
1065500d:	e8 be 00 29 00                                  	call   0x108e50d0
10655012:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10655016:	3b cf                                           	cmp    ecx,edi
10655018:	8b f0                                           	mov    esi,eax
1065501a:	74 0b                                           	je     0x10655027
1065501c:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
10655020:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10655022:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10655025:	ff d2                                           	call   edx
10655027:	8b 06                                           	mov    eax,DWORD PTR [esi]
10655029:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1065502c:	57                                              	push   edi
1065502d:	57                                              	push   edi
1065502e:	57                                              	push   edi
1065502f:	57                                              	push   edi
10655030:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10655034:	51                                              	push   ecx
10655035:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10655039:	52                                              	push   edx
1065503a:	8b ce                                           	mov    ecx,esi
1065503c:	ff d0                                           	call   eax
1065503e:	84 c0                                           	test   al,al
10655040:	0f 84 b4 00 00 00                               	je     0x106550fa
10655046:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1065504a:	85 c9                                           	test   ecx,ecx
1065504c:	8b f9                                           	mov    edi,ecx
1065504e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
10655052:	74 06                                           	je     0x1065505a
10655054:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10655056:	8b 02                                           	mov    eax,DWORD PTR [edx]
10655058:	ff d0                                           	call   eax
1065505a:	8b 57 28                                        	mov    edx,DWORD PTR [edi+0x28]
1065505d:	8b 52 20                                        	mov    edx,DWORD PTR [edx+0x20]
10655060:	8d 4f 28                                        	lea    ecx,[edi+0x28]
10655063:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10655067:	50                                              	push   eax
10655068:	68 7c 35 99 c4                                  	push   0xc499357c
1065506d:	ff d2                                           	call   edx
1065506f:	84 c0                                           	test   al,al
10655071:	74 7e                                           	je     0x106550f1
10655073:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
10655077:	66 83 7e 0a 13                                  	cmp    WORD PTR [esi+0xa],0x13
1065507c:	75 73                                           	jne    0x106550f1
1065507e:	f6 46 08 10                                     	test   BYTE PTR [esi+0x8],0x10
10655082:	74 6d                                           	je     0x106550f1
10655084:	8b ce                                           	mov    ecx,esi
10655086:	e8 d5 da be ff                                  	call   0x10242b60
1065508b:	8b ce                                           	mov    ecx,esi
1065508d:	8b f8                                           	mov    edi,eax
1065508f:	e8 4c d9 a6 ff                                  	call   0x100c29e0
10655094:	85 ff                                           	test   edi,edi
10655096:	76 55                                           	jbe    0x106550ed
10655098:	8b f0                                           	mov    esi,eax
1065509a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
106550a0:	6a 00                                           	push   0x0
106550a2:	6a 00                                           	push   0x0
106550a4:	6a 00                                           	push   0x0
106550a6:	6a 00                                           	push   0x0
106550a8:	68 d4 84 b3 10                                  	push   0x10b384d4
106550ad:	6a 1c                                           	push   0x1c
106550af:	e8 fc 3d 2c 00                                  	call   0x10918eb0
106550b4:	83 c4 18                                        	add    esp,0x18
106550b7:	85 c0                                           	test   eax,eax
106550b9:	74 0d                                           	je     0x106550c8
106550bb:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
106550bd:	51                                              	push   ecx
106550be:	55                                              	push   ebp
106550bf:	8b c8                                           	mov    ecx,eax
106550c1:	e8 1a 85 00 00                                  	call   0x1065d5e0
106550c6:	eb 02                                           	jmp    0x106550ca
106550c8:	33 c0                                           	xor    eax,eax
106550ca:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
106550cc:	50                                              	push   eax
106550cd:	6a 01                                           	push   0x1
106550cf:	68 c5 9d 1c 81                                  	push   0x811c9dc5
106550d4:	51                                              	push   ecx
106550d5:	e8 46 80 2d 00                                  	call   0x1092d120
106550da:	83 c4 0c                                        	add    esp,0xc
106550dd:	50                                              	push   eax
106550de:	8b cb                                           	mov    ecx,ebx
106550e0:	e8 8b 2c 00 00                                  	call   0x10657d70
106550e5:	83 c6 10                                        	add    esi,0x10
106550e8:	83 ef 01                                        	sub    edi,0x1
106550eb:	75 b3                                           	jne    0x106550a0
106550ed:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
106550f1:	8b 07                                           	mov    eax,DWORD PTR [edi]
106550f3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
106550f6:	8b cf                                           	mov    ecx,edi
106550f8:	ff d2                                           	call   edx
106550fa:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
106550fe:	85 c9                                           	test   ecx,ecx
10655100:	74 07                                           	je     0x10655109
10655102:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10655104:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10655107:	ff d2                                           	call   edx
10655109:	5d                                              	pop    ebp
1065510a:	5e                                              	pop    esi
1065510b:	5b                                              	pop    ebx
1065510c:	5f                                              	pop    edi
1065510d:	83 c4 1c                                        	add    esp,0x1c
10655110:	c3                                              	ret
10655111:	cc                                              	int3
10655112:	cc                                              	int3
10655113:	cc                                              	int3
10655114:	cc                                              	int3
10655115:	cc                                              	int3
10655116:	cc                                              	int3
10655117:	cc                                              	int3
10655118:	cc                                              	int3
10655119:	cc                                              	int3
1065511a:	cc                                              	int3
1065511b:	cc                                              	int3
1065511c:	cc                                              	int3
1065511d:	cc                                              	int3
1065511e:	cc                                              	int3
1065511f:	cc                                              	int3
