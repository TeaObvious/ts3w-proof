# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ad50 (ResourceMgr_GetKeyList)
Paired Ghidra pseudocode: 1098AD50_ResourceMgr_GetKeyList.c
Window: [0x1098ad50, 0x1098af10) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098af10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ad50: 83 ec 54 e8 78 a3 f5 ff 8b c8 85 c9 0f 84 9b 01
1098ad60: 00 00 8b 54 24 60 8b 44 24 6c 53 56 8b 74 24 6c
1098ad70: 57 8b 7c 24 74 33 db 85 d2 c7 44 24 30 00 00 00
1098ad80: 00 c7 44 24 34 00 00 00 00 c7 44 24 38 00 00 00
1098ad90: 00 c7 44 24 3c 40 6e b9 10 c7 44 24 14 24 5a ab
1098ada0: 10 89 54 24 18 c7 44 24 0c 14 6e b9 10 89 74 24
1098adb0: 10 c7 44 24 24 1c 6e b9 10 89 54 24 28 89 74 24
1098adc0: 2c c7 44 24 50 d4 92 b5 10 89 54 24 54 89 7c 24
1098add0: 58 89 44 24 5c c7 44 24 40 24 6e b9 10 89 74 24
1098ade0: 44 89 7c 24 48 89 44 24 4c 74 1a 85 f6 74 06 8d
1098adf0: 5c 24 24 eb 20 0b f8 74 06 8d 5c 24 50 eb 16 8d
1098ae00: 5c 24 14 eb 10 85 f6 74 0c 0b f8 8d 5c 24 40 75
1098ae10: 04 8d 5c 24 0c 83 7c 24 68 00 74 3c 8b 35 78 80
1098ae20: cb 10 8d 44 24 68 50 8d 4c 24 20 51 8b ce e8 dd
1098ae30: d5 d1 ff 8b 56 08 8b 4e 04 8b 44 24 1c 3b 04 91
1098ae40: 0f 84 b4 00 00 00 8b 48 04 8b 11 8b 52 30 53 8d
1098ae50: 44 24 34 50 ff d2 eb 0f 8b 01 8b 40 20 6a 00 53
1098ae60: 8d 54 24 38 52 ff d0 8b f0 8d 0c b5 00 00 00 00
1098ae70: 51 6a 00 6a 13 ff 15 e4 b6 aa 10 8b f8 85 ff 74
1098ae80: 4f 57 ff 15 e8 b6 aa 10 85 c0 7c 3d 85 f6 8b 47
1098ae90: 0c 8b 54 24 30 76 23 8b ca 8b 59 08 89 18 8b 59
1098aea0: 0c 89 58 04 8b 19 89 58 08 8b 49 04 89 48 0c 83
1098aeb0: c2 10 83 c0 10 83 ee 01 75 dd 57 ff 15 ec b6 aa
1098aec0: 10 8b 54 24 64 89 3a eb 07 57 ff 15 f8 b6 aa 10
1098aed0: b8 7c 3a ab 10 89 44 24 40 89 44 24 50 89 44 24
1098aee0: 24 89 44 24 0c 89 44 24 14 8b 44 24 30 85 c0 74
1098aef0: 09 50 e8 99 df f8 ff 83 c4 04 5f 5e 5b 83 c4 54
1098af00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ad50 <.text+0x989d50>:
1098ad50:	83 ec 54                                        	sub    esp,0x54
1098ad53:	e8 78 a3 f5 ff                                  	call   0x108e50d0
1098ad58:	8b c8                                           	mov    ecx,eax
1098ad5a:	85 c9                                           	test   ecx,ecx
1098ad5c:	0f 84 9b 01 00 00                               	je     0x1098aefd
1098ad62:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
1098ad66:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
1098ad6a:	53                                              	push   ebx
1098ad6b:	56                                              	push   esi
1098ad6c:	8b 74 24 6c                                     	mov    esi,DWORD PTR [esp+0x6c]
1098ad70:	57                                              	push   edi
1098ad71:	8b 7c 24 74                                     	mov    edi,DWORD PTR [esp+0x74]
1098ad75:	33 db                                           	xor    ebx,ebx
1098ad77:	85 d2                                           	test   edx,edx
1098ad79:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [esp+0x30],0x0
1098ad81:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [esp+0x34],0x0
1098ad89:	c7 44 24 38 00 00 00 00                         	mov    DWORD PTR [esp+0x38],0x0
1098ad91:	c7 44 24 3c 40 6e b9 10                         	mov    DWORD PTR [esp+0x3c],0x10b96e40
1098ad99:	c7 44 24 14 24 5a ab 10                         	mov    DWORD PTR [esp+0x14],0x10ab5a24
1098ada1:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
1098ada5:	c7 44 24 0c 14 6e b9 10                         	mov    DWORD PTR [esp+0xc],0x10b96e14
1098adad:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
1098adb1:	c7 44 24 24 1c 6e b9 10                         	mov    DWORD PTR [esp+0x24],0x10b96e1c
1098adb9:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
1098adbd:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
1098adc1:	c7 44 24 50 d4 92 b5 10                         	mov    DWORD PTR [esp+0x50],0x10b592d4
1098adc9:	89 54 24 54                                     	mov    DWORD PTR [esp+0x54],edx
1098adcd:	89 7c 24 58                                     	mov    DWORD PTR [esp+0x58],edi
1098add1:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
1098add5:	c7 44 24 40 24 6e b9 10                         	mov    DWORD PTR [esp+0x40],0x10b96e24
1098addd:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
1098ade1:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
1098ade5:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
1098ade9:	74 1a                                           	je     0x1098ae05
1098adeb:	85 f6                                           	test   esi,esi
1098aded:	74 06                                           	je     0x1098adf5
1098adef:	8d 5c 24 24                                     	lea    ebx,[esp+0x24]
1098adf3:	eb 20                                           	jmp    0x1098ae15
1098adf5:	0b f8                                           	or     edi,eax
1098adf7:	74 06                                           	je     0x1098adff
1098adf9:	8d 5c 24 50                                     	lea    ebx,[esp+0x50]
1098adfd:	eb 16                                           	jmp    0x1098ae15
1098adff:	8d 5c 24 14                                     	lea    ebx,[esp+0x14]
1098ae03:	eb 10                                           	jmp    0x1098ae15
1098ae05:	85 f6                                           	test   esi,esi
1098ae07:	74 0c                                           	je     0x1098ae15
1098ae09:	0b f8                                           	or     edi,eax
1098ae0b:	8d 5c 24 40                                     	lea    ebx,[esp+0x40]
1098ae0f:	75 04                                           	jne    0x1098ae15
1098ae11:	8d 5c 24 0c                                     	lea    ebx,[esp+0xc]
1098ae15:	83 7c 24 68 00                                  	cmp    DWORD PTR [esp+0x68],0x0
1098ae1a:	74 3c                                           	je     0x1098ae58
1098ae1c:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098ae22:	8d 44 24 68                                     	lea    eax,[esp+0x68]
1098ae26:	50                                              	push   eax
1098ae27:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098ae2b:	51                                              	push   ecx
1098ae2c:	8b ce                                           	mov    ecx,esi
1098ae2e:	e8 dd d5 d1 ff                                  	call   0x106a8410
1098ae33:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
1098ae36:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098ae39:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098ae3d:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
1098ae40:	0f 84 b4 00 00 00                               	je     0x1098aefa
1098ae46:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1098ae49:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098ae4b:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
1098ae4e:	53                                              	push   ebx
1098ae4f:	8d 44 24 34                                     	lea    eax,[esp+0x34]
1098ae53:	50                                              	push   eax
1098ae54:	ff d2                                           	call   edx
1098ae56:	eb 0f                                           	jmp    0x1098ae67
1098ae58:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098ae5a:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
1098ae5d:	6a 00                                           	push   0x0
1098ae5f:	53                                              	push   ebx
1098ae60:	8d 54 24 38                                     	lea    edx,[esp+0x38]
1098ae64:	52                                              	push   edx
1098ae65:	ff d0                                           	call   eax
1098ae67:	8b f0                                           	mov    esi,eax
1098ae69:	8d 0c b5 00 00 00 00                            	lea    ecx,[esi*4+0x0]
1098ae70:	51                                              	push   ecx
1098ae71:	6a 00                                           	push   0x0
1098ae73:	6a 13                                           	push   0x13
1098ae75:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
1098ae7b:	8b f8                                           	mov    edi,eax
1098ae7d:	85 ff                                           	test   edi,edi
1098ae7f:	74 4f                                           	je     0x1098aed0
1098ae81:	57                                              	push   edi
1098ae82:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
1098ae88:	85 c0                                           	test   eax,eax
1098ae8a:	7c 3d                                           	jl     0x1098aec9
1098ae8c:	85 f6                                           	test   esi,esi
1098ae8e:	8b 47 0c                                        	mov    eax,DWORD PTR [edi+0xc]
1098ae91:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1098ae95:	76 23                                           	jbe    0x1098aeba
1098ae97:	8b ca                                           	mov    ecx,edx
1098ae99:	8b 59 08                                        	mov    ebx,DWORD PTR [ecx+0x8]
1098ae9c:	89 18                                           	mov    DWORD PTR [eax],ebx
1098ae9e:	8b 59 0c                                        	mov    ebx,DWORD PTR [ecx+0xc]
1098aea1:	89 58 04                                        	mov    DWORD PTR [eax+0x4],ebx
1098aea4:	8b 19                                           	mov    ebx,DWORD PTR [ecx]
1098aea6:	89 58 08                                        	mov    DWORD PTR [eax+0x8],ebx
1098aea9:	8b 49 04                                        	mov    ecx,DWORD PTR [ecx+0x4]
1098aeac:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1098aeaf:	83 c2 10                                        	add    edx,0x10
1098aeb2:	83 c0 10                                        	add    eax,0x10
1098aeb5:	83 ee 01                                        	sub    esi,0x1
1098aeb8:	75 dd                                           	jne    0x1098ae97
1098aeba:	57                                              	push   edi
1098aebb:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
1098aec1:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
1098aec5:	89 3a                                           	mov    DWORD PTR [edx],edi
1098aec7:	eb 07                                           	jmp    0x1098aed0
1098aec9:	57                                              	push   edi
1098aeca:	ff 15 f8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6f8
1098aed0:	b8 7c 3a ab 10                                  	mov    eax,0x10ab3a7c
1098aed5:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
1098aed9:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
1098aedd:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
1098aee1:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1098aee5:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1098aee9:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1098aeed:	85 c0                                           	test   eax,eax
1098aeef:	74 09                                           	je     0x1098aefa
1098aef1:	50                                              	push   eax
1098aef2:	e8 99 df f8 ff                                  	call   0x10918e90
1098aef7:	83 c4 04                                        	add    esp,0x4
1098aefa:	5f                                              	pop    edi
1098aefb:	5e                                              	pop    esi
1098aefc:	5b                                              	pop    ebx
1098aefd:	83 c4 54                                        	add    esp,0x54
1098af00:	c3                                              	ret
1098af01:	cc                                              	int3
1098af02:	cc                                              	int3
1098af03:	cc                                              	int3
1098af04:	cc                                              	int3
1098af05:	cc                                              	int3
1098af06:	cc                                              	int3
1098af07:	cc                                              	int3
1098af08:	cc                                              	int3
1098af09:	cc                                              	int3
1098af0a:	cc                                              	int3
1098af0b:	cc                                              	int3
1098af0c:	cc                                              	int3
1098af0d:	cc                                              	int3
1098af0e:	cc                                              	int3
1098af0f:	cc                                              	int3
