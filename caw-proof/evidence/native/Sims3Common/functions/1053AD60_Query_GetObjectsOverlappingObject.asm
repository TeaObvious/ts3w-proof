# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053ad60 (Query_GetObjectsOverlappingObject)
Paired Ghidra pseudocode: 1053AD60_Query_GetObjectsOverlappingObject.c
Window: [0x1053ad60, 0x1053af50) (496 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053af50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053ad60: 83 ec 4c 55 e8 37 f4 1e 00 33 ed 3b c5 75 07 33
1053ad70: c0 5d 83 c4 4c c3 8b 4c 24 5c 8b 54 24 58 57 51
1053ad80: 52 8b c8 e8 28 fe 1e 00 8b f8 3b fd 75 08 5f 33
1053ad90: c0 5d 83 c4 4c c3 53 8b cf e8 82 c8 42 00 3b c5
1053ada0: 74 18 8b 10 8b c8 8b 42 0c 68 0e 6b 56 90 ff d0
1053adb0: 8b d8 3b dd 89 5c 24 14 75 09 5b 5f 33 c0 5d 83
1053adc0: c4 4c c3 8b 0d 08 04 c7 10 56 51 8b cf e8 ce bf
1053add0: 1e 00 8b f0 3b f5 75 0a 5e 5b 5f 33 c0 5d 83 c4
1053ade0: 4c c3 8b ce e8 e7 54 d2 ff d9 5c 24 14 f3 0f 10
1053adf0: 05 84 e1 aa 10 8d 54 24 38 52 8d 44 24 38 50 8d
1053ae00: 4c 24 38 51 8b ce f3 0f 11 44 24 3c f3 0f 11 44
1053ae10: 24 40 89 6c 24 44 e8 75 50 d2 ff 8d 54 24 3c 52
1053ae20: 57 8b cb 89 6c 24 44 89 6c 24 48 89 6c 24 4c c7
1053ae30: 44 24 50 78 b5 b1 10 e8 f4 6b b5 ff 8b 44 24 3c
1053ae40: 8b 4c 24 40 33 db 33 f6 3b c1 89 5c 24 4c 89 74
1053ae50: 24 50 89 6c 24 54 c7 44 24 58 40 b5 b1 10 89 44
1053ae60: 24 10 89 4c 24 1c 0f 84 86 00 00 00 8d 64 24 00
1053ae70: 8b 44 24 10 8b 30 3b f5 74 5f 3b f7 74 5b a1 38
1053ae80: d9 c8 10 85 47 2c 74 35 85 46 2c 74 30 8b 4e 0c
1053ae90: d9 44 24 14 8b 46 08 8b 5f 0c 8b 57 08 51 d9 1c
1053aea0: 24 8d 6c 24 34 55 51 8b 4c 24 24 50 53 52 51 e8
1053aeb0: 8c 75 04 00 83 c4 1c 33 ed 84 c0 75 1c 8b 56 08
1053aec0: 8b 46 0c 8d 4c 24 20 51 8d 4c 24 50 89 54 24 24
1053aed0: 89 44 24 28 e8 87 be af ff 8b 44 24 10 83 c0 04
1053aee0: 3b 44 24 1c 89 44 24 10 75 86 8b 74 24 50 8b 5c
1053aef0: 24 4c e8 29 02 02 00 2b f3 c1 fe 03 89 6c 24 28
1053af00: 89 6c 24 2c 8b cb 75 04 8d 4c 24 28 8b 10 8b 92
1053af10: c0 00 00 00 56 51 8b 4c 24 68 51 8b c8 ff d2 3b
1053af20: dd 8b f0 74 09 53 e8 65 df 3d 00 83 c4 04 8b 44
1053af30: 24 3c 3b c5 74 09 50 e8 54 df 3d 00 83 c4 04 8b
1053af40: c6 5e 5b 5f 5d 83 c4 4c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053ad60 <.text+0x539d60>:
1053ad60:	83 ec 4c                                        	sub    esp,0x4c
1053ad63:	55                                              	push   ebp
1053ad64:	e8 37 f4 1e 00                                  	call   0x1072a1a0
1053ad69:	33 ed                                           	xor    ebp,ebp
1053ad6b:	3b c5                                           	cmp    eax,ebp
1053ad6d:	75 07                                           	jne    0x1053ad76
1053ad6f:	33 c0                                           	xor    eax,eax
1053ad71:	5d                                              	pop    ebp
1053ad72:	83 c4 4c                                        	add    esp,0x4c
1053ad75:	c3                                              	ret
1053ad76:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
1053ad7a:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
1053ad7e:	57                                              	push   edi
1053ad7f:	51                                              	push   ecx
1053ad80:	52                                              	push   edx
1053ad81:	8b c8                                           	mov    ecx,eax
1053ad83:	e8 28 fe 1e 00                                  	call   0x1072abb0
1053ad88:	8b f8                                           	mov    edi,eax
1053ad8a:	3b fd                                           	cmp    edi,ebp
1053ad8c:	75 08                                           	jne    0x1053ad96
1053ad8e:	5f                                              	pop    edi
1053ad8f:	33 c0                                           	xor    eax,eax
1053ad91:	5d                                              	pop    ebp
1053ad92:	83 c4 4c                                        	add    esp,0x4c
1053ad95:	c3                                              	ret
1053ad96:	53                                              	push   ebx
1053ad97:	8b cf                                           	mov    ecx,edi
1053ad99:	e8 82 c8 42 00                                  	call   0x10967620
1053ad9e:	3b c5                                           	cmp    eax,ebp
1053ada0:	74 18                                           	je     0x1053adba
1053ada2:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053ada4:	8b c8                                           	mov    ecx,eax
1053ada6:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1053ada9:	68 0e 6b 56 90                                  	push   0x90566b0e
1053adae:	ff d0                                           	call   eax
1053adb0:	8b d8                                           	mov    ebx,eax
1053adb2:	3b dd                                           	cmp    ebx,ebp
1053adb4:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
1053adb8:	75 09                                           	jne    0x1053adc3
1053adba:	5b                                              	pop    ebx
1053adbb:	5f                                              	pop    edi
1053adbc:	33 c0                                           	xor    eax,eax
1053adbe:	5d                                              	pop    ebp
1053adbf:	83 c4 4c                                        	add    esp,0x4c
1053adc2:	c3                                              	ret
1053adc3:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
1053adc9:	56                                              	push   esi
1053adca:	51                                              	push   ecx
1053adcb:	8b cf                                           	mov    ecx,edi
1053adcd:	e8 ce bf 1e 00                                  	call   0x10726da0
1053add2:	8b f0                                           	mov    esi,eax
1053add4:	3b f5                                           	cmp    esi,ebp
1053add6:	75 0a                                           	jne    0x1053ade2
1053add8:	5e                                              	pop    esi
1053add9:	5b                                              	pop    ebx
1053adda:	5f                                              	pop    edi
1053addb:	33 c0                                           	xor    eax,eax
1053addd:	5d                                              	pop    ebp
1053adde:	83 c4 4c                                        	add    esp,0x4c
1053ade1:	c3                                              	ret
1053ade2:	8b ce                                           	mov    ecx,esi
1053ade4:	e8 e7 54 d2 ff                                  	call   0x102602d0
1053ade9:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
1053aded:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
1053adf5:	8d 54 24 38                                     	lea    edx,[esp+0x38]
1053adf9:	52                                              	push   edx
1053adfa:	8d 44 24 38                                     	lea    eax,[esp+0x38]
1053adfe:	50                                              	push   eax
1053adff:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1053ae03:	51                                              	push   ecx
1053ae04:	8b ce                                           	mov    ecx,esi
1053ae06:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
1053ae0c:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
1053ae12:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
1053ae16:	e8 75 50 d2 ff                                  	call   0x1025fe90
1053ae1b:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
1053ae1f:	52                                              	push   edx
1053ae20:	57                                              	push   edi
1053ae21:	8b cb                                           	mov    ecx,ebx
1053ae23:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
1053ae27:	89 6c 24 48                                     	mov    DWORD PTR [esp+0x48],ebp
1053ae2b:	89 6c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebp
1053ae2f:	c7 44 24 50 78 b5 b1 10                         	mov    DWORD PTR [esp+0x50],0x10b1b578
1053ae37:	e8 f4 6b b5 ff                                  	call   0x10091a30
1053ae3c:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
1053ae40:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1053ae44:	33 db                                           	xor    ebx,ebx
1053ae46:	33 f6                                           	xor    esi,esi
1053ae48:	3b c1                                           	cmp    eax,ecx
1053ae4a:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
1053ae4e:	89 74 24 50                                     	mov    DWORD PTR [esp+0x50],esi
1053ae52:	89 6c 24 54                                     	mov    DWORD PTR [esp+0x54],ebp
1053ae56:	c7 44 24 58 40 b5 b1 10                         	mov    DWORD PTR [esp+0x58],0x10b1b540
1053ae5e:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1053ae62:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
1053ae66:	0f 84 86 00 00 00                               	je     0x1053aef2
1053ae6c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
1053ae70:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1053ae74:	8b 30                                           	mov    esi,DWORD PTR [eax]
1053ae76:	3b f5                                           	cmp    esi,ebp
1053ae78:	74 5f                                           	je     0x1053aed9
1053ae7a:	3b f7                                           	cmp    esi,edi
1053ae7c:	74 5b                                           	je     0x1053aed9
1053ae7e:	a1 38 d9 c8 10                                  	mov    eax,ds:0x10c8d938
1053ae83:	85 47 2c                                        	test   DWORD PTR [edi+0x2c],eax
1053ae86:	74 35                                           	je     0x1053aebd
1053ae88:	85 46 2c                                        	test   DWORD PTR [esi+0x2c],eax
1053ae8b:	74 30                                           	je     0x1053aebd
1053ae8d:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
1053ae90:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1053ae94:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1053ae97:	8b 5f 0c                                        	mov    ebx,DWORD PTR [edi+0xc]
1053ae9a:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
1053ae9d:	51                                              	push   ecx
1053ae9e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053aea1:	8d 6c 24 34                                     	lea    ebp,[esp+0x34]
1053aea5:	55                                              	push   ebp
1053aea6:	51                                              	push   ecx
1053aea7:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1053aeab:	50                                              	push   eax
1053aeac:	53                                              	push   ebx
1053aead:	52                                              	push   edx
1053aeae:	51                                              	push   ecx
1053aeaf:	e8 8c 75 04 00                                  	call   0x10582440
1053aeb4:	83 c4 1c                                        	add    esp,0x1c
1053aeb7:	33 ed                                           	xor    ebp,ebp
1053aeb9:	84 c0                                           	test   al,al
1053aebb:	75 1c                                           	jne    0x1053aed9
1053aebd:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
1053aec0:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
1053aec3:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1053aec7:	51                                              	push   ecx
1053aec8:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1053aecc:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1053aed0:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
1053aed4:	e8 87 be af ff                                  	call   0x10036d60
1053aed9:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1053aedd:	83 c0 04                                        	add    eax,0x4
1053aee0:	3b 44 24 1c                                     	cmp    eax,DWORD PTR [esp+0x1c]
1053aee4:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1053aee8:	75 86                                           	jne    0x1053ae70
1053aeea:	8b 74 24 50                                     	mov    esi,DWORD PTR [esp+0x50]
1053aeee:	8b 5c 24 4c                                     	mov    ebx,DWORD PTR [esp+0x4c]
1053aef2:	e8 29 02 02 00                                  	call   0x1055b120
1053aef7:	2b f3                                           	sub    esi,ebx
1053aef9:	c1 fe 03                                        	sar    esi,0x3
1053aefc:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
1053af00:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
1053af04:	8b cb                                           	mov    ecx,ebx
1053af06:	75 04                                           	jne    0x1053af0c
1053af08:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1053af0c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053af0e:	8b 92 c0 00 00 00                               	mov    edx,DWORD PTR [edx+0xc0]
1053af14:	56                                              	push   esi
1053af15:	51                                              	push   ecx
1053af16:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
1053af1a:	51                                              	push   ecx
1053af1b:	8b c8                                           	mov    ecx,eax
1053af1d:	ff d2                                           	call   edx
1053af1f:	3b dd                                           	cmp    ebx,ebp
1053af21:	8b f0                                           	mov    esi,eax
1053af23:	74 09                                           	je     0x1053af2e
1053af25:	53                                              	push   ebx
1053af26:	e8 65 df 3d 00                                  	call   0x10918e90
1053af2b:	83 c4 04                                        	add    esp,0x4
1053af2e:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
1053af32:	3b c5                                           	cmp    eax,ebp
1053af34:	74 09                                           	je     0x1053af3f
1053af36:	50                                              	push   eax
1053af37:	e8 54 df 3d 00                                  	call   0x10918e90
1053af3c:	83 c4 04                                        	add    esp,0x4
1053af3f:	8b c6                                           	mov    eax,esi
1053af41:	5e                                              	pop    esi
1053af42:	5b                                              	pop    ebx
1053af43:	5f                                              	pop    edi
1053af44:	5d                                              	pop    ebp
1053af45:	83 c4 4c                                        	add    esp,0x4c
1053af48:	c3                                              	ret
1053af49:	cc                                              	int3
1053af4a:	cc                                              	int3
1053af4b:	cc                                              	int3
1053af4c:	cc                                              	int3
1053af4d:	cc                                              	int3
1053af4e:	cc                                              	int3
1053af4f:	cc                                              	int3
