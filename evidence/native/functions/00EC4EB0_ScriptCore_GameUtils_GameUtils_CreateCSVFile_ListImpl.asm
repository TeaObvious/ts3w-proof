# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec4eb0 (ScriptCore.GameUtils::GameUtils_CreateCSVFile_ListImpl)
Paired Ghidra pseudocode: 00EC4EB0_ScriptCore_GameUtils_GameUtils_CreateCSVFile_ListImpl.c
Window: [0x00ec4eb0, 0x00ec5110) (608 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec5110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec4eb0: 83 ec 40 53 55 56 57 e8 d4 44 8a ff 8b f0 b8 54
00ec4ec0: 8e 1c 01 b9 55 8e 1c 01 89 4c 24 38 89 4c 24 18
00ec4ed0: 8b 4c 24 54 c7 44 24 3c 70 3a 0f 01 89 44 24 30
00ec4ee0: 89 44 24 34 c7 44 24 1c 4c 3a 0f 01 89 44 24 10
00ec4ef0: 89 44 24 14 8b 06 8b 50 58 51 8b ce ff d2 33 ed
00ec4f00: 50 8d 4c 24 24 89 6c 24 24 89 6c 24 28 89 6c 24
00ec4f10: 2c c7 44 24 30 24 3a 0f 01 e8 72 66 54 ff a1 dc
00ec4f20: 03 15 01 55 6a ff 50 8d 4c 24 4c 51 e8 1f ec 62
00ec4f30: ff 8b 50 04 8b 00 8b 4c 24 34 8b 7c 24 30 52 50
00ec4f40: 51 57 e8 49 bb b2 ff 8b 54 24 68 83 c4 20 85 c0
00ec4f50: 8b 44 24 40 0f 94 c3 2b d0 83 e2 fe 83 fa 02 7e
00ec4f60: 0d 3b c5 74 09 50 e8 75 f5 61 ff 83 c4 04 84 db
00ec4f70: 0f 84 d6 00 00 00 a1 68 50 1d 01 3b c5 74 05 8d
00ec4f80: 48 f8 eb 02 33 c9 8d 44 24 10 50 8d 54 24 34 52
00ec4f90: 8d 44 24 48 50 e8 16 76 9c ff 8d 4c 24 20 3b c1
00ec4fa0: 74 10 8b 50 04 8b 00 52 50 e8 b2 3d 54 ff 8b 7c
00ec4fb0: 24 20 8b 4c 24 48 8b 44 24 40 2b c8 83 e1 fe 83
00ec4fc0: f9 02 7e 0d 3b c5 74 09 50 e8 12 f5 61 ff 83 c4
00ec4fd0: 04 3b 7c 24 24 8b 4c 24 30 8b 44 24 10 74 0c 3b
00ec4fe0: 44 24 14 74 06 3b 4c 24 34 75 61 8b 54 24 28 2b
00ec4ff0: d7 83 e2 fe 83 fa 02 7e 15 3b fd 74 11 57 e8 dd
00ec5000: f4 61 ff 8b 4c 24 34 8b 44 24 14 83 c4 04 8b 54
00ec5010: 24 18 2b d0 83 fa 01 7e 11 3b c5 74 0d 50 e8 bd
00ec5020: f4 61 ff 8b 4c 24 34 83 c4 04 8b 44 24 38 2b c1
00ec5030: 83 f8 01 7e 0d 3b cd 74 09 51 e8 a1 f4 61 ff 83
00ec5040: c4 04 33 c0 5f 5e 5d 5b 83 c4 40 c3 55 55 55 55
00ec5050: 68 00 3a 0f 01 6a 64 e8 a4 f4 61 ff 83 c4 18 3b
00ec5060: c5 74 0f 51 8b d4 57 8b c8 89 2a e8 20 eb b0 ff
00ec5070: 8b e8 8d 4d 1c 8d 54 24 10 3b d1 74 0f 8b 44 24
00ec5080: 14 8b 54 24 10 50 52 e8 84 08 54 ff 8b cd e8 ed
00ec5090: 64 90 ff 8b 06 8b 90 c8 00 00 00 6a 40 55 8b ce
00ec50a0: ff d2 8b f0 8b 44 24 28 2b c7 83 e0 fe 83 f8 02
00ec50b0: 7e 0d 85 ff 74 09 57 e8 24 f4 61 ff 83 c4 04 8b
00ec50c0: 4c 24 18 8b 44 24 10 2b c8 83 f9 01 7e 0d 85 c0
00ec50d0: 74 09 50 e8 08 f4 61 ff 83 c4 04 8b 54 24 38 8b
00ec50e0: 44 24 30 2b d0 83 fa 01 7e 0d 85 c0 74 09 50 e8
00ec50f0: ec f3 61 ff 83 c4 04 5f 8b c6 5e 5d 5b 83 c4 40
00ec5100: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec4eb0 <.text+0xac3eb0>:
  ec4eb0:	83 ec 40                                        	sub    esp,0x40
  ec4eb3:	53                                              	push   ebx
  ec4eb4:	55                                              	push   ebp
  ec4eb5:	56                                              	push   esi
  ec4eb6:	57                                              	push   edi
  ec4eb7:	e8 d4 44 8a ff                                  	call   0x769390
  ec4ebc:	8b f0                                           	mov    esi,eax
  ec4ebe:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  ec4ec3:	b9 55 8e 1c 01                                  	mov    ecx,0x11c8e55
  ec4ec8:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
  ec4ecc:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  ec4ed0:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  ec4ed4:	c7 44 24 3c 70 3a 0f 01                         	mov    DWORD PTR [esp+0x3c],0x10f3a70
  ec4edc:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  ec4ee0:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  ec4ee4:	c7 44 24 1c 4c 3a 0f 01                         	mov    DWORD PTR [esp+0x1c],0x10f3a4c
  ec4eec:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  ec4ef0:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  ec4ef4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec4ef6:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec4ef9:	51                                              	push   ecx
  ec4efa:	8b ce                                           	mov    ecx,esi
  ec4efc:	ff d2                                           	call   edx
  ec4efe:	33 ed                                           	xor    ebp,ebp
  ec4f00:	50                                              	push   eax
  ec4f01:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ec4f05:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
  ec4f09:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
  ec4f0d:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
  ec4f11:	c7 44 24 30 24 3a 0f 01                         	mov    DWORD PTR [esp+0x30],0x10f3a24
  ec4f19:	e8 72 66 54 ff                                  	call   0x40b590
  ec4f1e:	a1 dc 03 15 01                                  	mov    eax,ds:0x11503dc
  ec4f23:	55                                              	push   ebp
  ec4f24:	6a ff                                           	push   0xffffffff
  ec4f26:	50                                              	push   eax
  ec4f27:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  ec4f2b:	51                                              	push   ecx
  ec4f2c:	e8 1f ec 62 ff                                  	call   0x4f3b50
  ec4f31:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  ec4f34:	8b 00                                           	mov    eax,DWORD PTR [eax]
  ec4f36:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  ec4f3a:	8b 7c 24 30                                     	mov    edi,DWORD PTR [esp+0x30]
  ec4f3e:	52                                              	push   edx
  ec4f3f:	50                                              	push   eax
  ec4f40:	51                                              	push   ecx
  ec4f41:	57                                              	push   edi
  ec4f42:	e8 49 bb b2 ff                                  	call   0x9f0a90
  ec4f47:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
  ec4f4b:	83 c4 20                                        	add    esp,0x20
  ec4f4e:	85 c0                                           	test   eax,eax
  ec4f50:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  ec4f54:	0f 94 c3                                        	sete   bl
  ec4f57:	2b d0                                           	sub    edx,eax
  ec4f59:	83 e2 fe                                        	and    edx,0xfffffffe
  ec4f5c:	83 fa 02                                        	cmp    edx,0x2
  ec4f5f:	7e 0d                                           	jle    0xec4f6e
  ec4f61:	3b c5                                           	cmp    eax,ebp
  ec4f63:	74 09                                           	je     0xec4f6e
  ec4f65:	50                                              	push   eax
  ec4f66:	e8 75 f5 61 ff                                  	call   0x4e44e0
  ec4f6b:	83 c4 04                                        	add    esp,0x4
  ec4f6e:	84 db                                           	test   bl,bl
  ec4f70:	0f 84 d6 00 00 00                               	je     0xec504c
  ec4f76:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  ec4f7b:	3b c5                                           	cmp    eax,ebp
  ec4f7d:	74 05                                           	je     0xec4f84
  ec4f7f:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  ec4f82:	eb 02                                           	jmp    0xec4f86
  ec4f84:	33 c9                                           	xor    ecx,ecx
  ec4f86:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  ec4f8a:	50                                              	push   eax
  ec4f8b:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  ec4f8f:	52                                              	push   edx
  ec4f90:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  ec4f94:	50                                              	push   eax
  ec4f95:	e8 16 76 9c ff                                  	call   0x88c5b0
  ec4f9a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec4f9e:	3b c1                                           	cmp    eax,ecx
  ec4fa0:	74 10                                           	je     0xec4fb2
  ec4fa2:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  ec4fa5:	8b 00                                           	mov    eax,DWORD PTR [eax]
  ec4fa7:	52                                              	push   edx
  ec4fa8:	50                                              	push   eax
  ec4fa9:	e8 b2 3d 54 ff                                  	call   0x408d60
  ec4fae:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  ec4fb2:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  ec4fb6:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  ec4fba:	2b c8                                           	sub    ecx,eax
  ec4fbc:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec4fbf:	83 f9 02                                        	cmp    ecx,0x2
  ec4fc2:	7e 0d                                           	jle    0xec4fd1
  ec4fc4:	3b c5                                           	cmp    eax,ebp
  ec4fc6:	74 09                                           	je     0xec4fd1
  ec4fc8:	50                                              	push   eax
  ec4fc9:	e8 12 f5 61 ff                                  	call   0x4e44e0
  ec4fce:	83 c4 04                                        	add    esp,0x4
  ec4fd1:	3b 7c 24 24                                     	cmp    edi,DWORD PTR [esp+0x24]
  ec4fd5:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  ec4fd9:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec4fdd:	74 0c                                           	je     0xec4feb
  ec4fdf:	3b 44 24 14                                     	cmp    eax,DWORD PTR [esp+0x14]
  ec4fe3:	74 06                                           	je     0xec4feb
  ec4fe5:	3b 4c 24 34                                     	cmp    ecx,DWORD PTR [esp+0x34]
  ec4fe9:	75 61                                           	jne    0xec504c
  ec4feb:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  ec4fef:	2b d7                                           	sub    edx,edi
  ec4ff1:	83 e2 fe                                        	and    edx,0xfffffffe
  ec4ff4:	83 fa 02                                        	cmp    edx,0x2
  ec4ff7:	7e 15                                           	jle    0xec500e
  ec4ff9:	3b fd                                           	cmp    edi,ebp
  ec4ffb:	74 11                                           	je     0xec500e
  ec4ffd:	57                                              	push   edi
  ec4ffe:	e8 dd f4 61 ff                                  	call   0x4e44e0
  ec5003:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  ec5007:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ec500b:	83 c4 04                                        	add    esp,0x4
  ec500e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  ec5012:	2b d0                                           	sub    edx,eax
  ec5014:	83 fa 01                                        	cmp    edx,0x1
  ec5017:	7e 11                                           	jle    0xec502a
  ec5019:	3b c5                                           	cmp    eax,ebp
  ec501b:	74 0d                                           	je     0xec502a
  ec501d:	50                                              	push   eax
  ec501e:	e8 bd f4 61 ff                                  	call   0x4e44e0
  ec5023:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  ec5027:	83 c4 04                                        	add    esp,0x4
  ec502a:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  ec502e:	2b c1                                           	sub    eax,ecx
  ec5030:	83 f8 01                                        	cmp    eax,0x1
  ec5033:	7e 0d                                           	jle    0xec5042
  ec5035:	3b cd                                           	cmp    ecx,ebp
  ec5037:	74 09                                           	je     0xec5042
  ec5039:	51                                              	push   ecx
  ec503a:	e8 a1 f4 61 ff                                  	call   0x4e44e0
  ec503f:	83 c4 04                                        	add    esp,0x4
  ec5042:	33 c0                                           	xor    eax,eax
  ec5044:	5f                                              	pop    edi
  ec5045:	5e                                              	pop    esi
  ec5046:	5d                                              	pop    ebp
  ec5047:	5b                                              	pop    ebx
  ec5048:	83 c4 40                                        	add    esp,0x40
  ec504b:	c3                                              	ret
  ec504c:	55                                              	push   ebp
  ec504d:	55                                              	push   ebp
  ec504e:	55                                              	push   ebp
  ec504f:	55                                              	push   ebp
  ec5050:	68 00 3a 0f 01                                  	push   0x10f3a00
  ec5055:	6a 64                                           	push   0x64
  ec5057:	e8 a4 f4 61 ff                                  	call   0x4e4500
  ec505c:	83 c4 18                                        	add    esp,0x18
  ec505f:	3b c5                                           	cmp    eax,ebp
  ec5061:	74 0f                                           	je     0xec5072
  ec5063:	51                                              	push   ecx
  ec5064:	8b d4                                           	mov    edx,esp
  ec5066:	57                                              	push   edi
  ec5067:	8b c8                                           	mov    ecx,eax
  ec5069:	89 2a                                           	mov    DWORD PTR [edx],ebp
  ec506b:	e8 20 eb b0 ff                                  	call   0x9d3b90
  ec5070:	8b e8                                           	mov    ebp,eax
  ec5072:	8d 4d 1c                                        	lea    ecx,[ebp+0x1c]
  ec5075:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  ec5079:	3b d1                                           	cmp    edx,ecx
  ec507b:	74 0f                                           	je     0xec508c
  ec507d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ec5081:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  ec5085:	50                                              	push   eax
  ec5086:	52                                              	push   edx
  ec5087:	e8 84 08 54 ff                                  	call   0x405910
  ec508c:	8b cd                                           	mov    ecx,ebp
  ec508e:	e8 ed 64 90 ff                                  	call   0x7cb580
  ec5093:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec5095:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
  ec509b:	6a 40                                           	push   0x40
  ec509d:	55                                              	push   ebp
  ec509e:	8b ce                                           	mov    ecx,esi
  ec50a0:	ff d2                                           	call   edx
  ec50a2:	8b f0                                           	mov    esi,eax
  ec50a4:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  ec50a8:	2b c7                                           	sub    eax,edi
  ec50aa:	83 e0 fe                                        	and    eax,0xfffffffe
  ec50ad:	83 f8 02                                        	cmp    eax,0x2
  ec50b0:	7e 0d                                           	jle    0xec50bf
  ec50b2:	85 ff                                           	test   edi,edi
  ec50b4:	74 09                                           	je     0xec50bf
  ec50b6:	57                                              	push   edi
  ec50b7:	e8 24 f4 61 ff                                  	call   0x4e44e0
  ec50bc:	83 c4 04                                        	add    esp,0x4
  ec50bf:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  ec50c3:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec50c7:	2b c8                                           	sub    ecx,eax
  ec50c9:	83 f9 01                                        	cmp    ecx,0x1
  ec50cc:	7e 0d                                           	jle    0xec50db
  ec50ce:	85 c0                                           	test   eax,eax
  ec50d0:	74 09                                           	je     0xec50db
  ec50d2:	50                                              	push   eax
  ec50d3:	e8 08 f4 61 ff                                  	call   0x4e44e0
  ec50d8:	83 c4 04                                        	add    esp,0x4
  ec50db:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  ec50df:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  ec50e3:	2b d0                                           	sub    edx,eax
  ec50e5:	83 fa 01                                        	cmp    edx,0x1
  ec50e8:	7e 0d                                           	jle    0xec50f7
  ec50ea:	85 c0                                           	test   eax,eax
  ec50ec:	74 09                                           	je     0xec50f7
  ec50ee:	50                                              	push   eax
  ec50ef:	e8 ec f3 61 ff                                  	call   0x4e44e0
  ec50f4:	83 c4 04                                        	add    esp,0x4
  ec50f7:	5f                                              	pop    edi
  ec50f8:	8b c6                                           	mov    eax,esi
  ec50fa:	5e                                              	pop    esi
  ec50fb:	5d                                              	pop    ebp
  ec50fc:	5b                                              	pop    ebx
  ec50fd:	83 c4 40                                        	add    esp,0x40
  ec5100:	c3                                              	ret
  ec5101:	cc                                              	int3
  ec5102:	cc                                              	int3
  ec5103:	cc                                              	int3
  ec5104:	cc                                              	int3
  ec5105:	cc                                              	int3
  ec5106:	cc                                              	int3
  ec5107:	cc                                              	int3
  ec5108:	cc                                              	int3
  ec5109:	cc                                              	int3
  ec510a:	cc                                              	int3
  ec510b:	cc                                              	int3
  ec510c:	cc                                              	int3
  ec510d:	cc                                              	int3
  ec510e:	cc                                              	int3
  ec510f:	cc                                              	int3
