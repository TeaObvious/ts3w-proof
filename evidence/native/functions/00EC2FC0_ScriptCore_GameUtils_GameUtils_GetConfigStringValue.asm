# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec2fc0 (ScriptCore.GameUtils::GameUtils_GetConfigStringValue)
Paired Ghidra pseudocode: 00EC2FC0_ScriptCore_GameUtils_GameUtils_GetConfigStringValue.c
Window: [0x00ec2fc0, 0x00ec30d0) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec30d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec2fc0: 83 ec 34 53 33 db 56 89 5c 24 08 e8 c0 63 8a ff
00ec2fd0: 8b f0 3b f3 0f 84 df 00 00 00 8b 4c 24 40 8b 06
00ec2fe0: 8b 50 58 57 51 8b ce ff d2 8b f8 3b fb 0f 84 bb
00ec2ff0: 00 00 00 8b 4c 24 48 8b 06 8b 50 58 51 8b ce ff
00ec3000: d2 50 a1 b0 0a 15 01 57 50 e8 52 7c 6c ff 83 c4
00ec3010: 0c 3b c3 0f 84 95 00 00 00 50 8d 4c 24 14 89 5c
00ec3020: 24 14 89 5c 24 18 89 5c 24 1c c7 44 24 20 30 1f
00ec3030: 00 01 e8 59 85 54 ff 6a 01 6a 10 8d 4c 24 18 51
00ec3040: 6a 09 6a 13 8d 4c 24 34 c7 44 24 34 6c 88 00 01
00ec3050: 66 c7 44 24 3e 13 00 66 c7 44 24 3c 0b 00 e8 5d
00ec3060: 29 63 ff 8b 54 24 18 8b 44 24 10 2b d0 83 e2 fe
00ec3070: 83 fa 02 7e 0d 3b c3 74 09 50 e8 61 14 62 ff 83
00ec3080: c4 04 8b 06 8b 40 50 8d 4c 24 0c 51 8d 54 24 24
00ec3090: 52 8b ce ff d0 f6 44 24 28 04 c7 44 24 20 f4 a6
00ec30a0: fb 00 74 0a 53 8d 4c 24 24 e8 b2 26 63 ff 8b 44
00ec30b0: 24 0c 5f 5e 5b 83 c4 34 c3 8b 44 24 08 5e 5b 83
00ec30c0: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec2fc0 <.text+0xac1fc0>:
  ec2fc0:	83 ec 34                                        	sub    esp,0x34
  ec2fc3:	53                                              	push   ebx
  ec2fc4:	33 db                                           	xor    ebx,ebx
  ec2fc6:	56                                              	push   esi
  ec2fc7:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  ec2fcb:	e8 c0 63 8a ff                                  	call   0x769390
  ec2fd0:	8b f0                                           	mov    esi,eax
  ec2fd2:	3b f3                                           	cmp    esi,ebx
  ec2fd4:	0f 84 df 00 00 00                               	je     0xec30b9
  ec2fda:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  ec2fde:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec2fe0:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec2fe3:	57                                              	push   edi
  ec2fe4:	51                                              	push   ecx
  ec2fe5:	8b ce                                           	mov    ecx,esi
  ec2fe7:	ff d2                                           	call   edx
  ec2fe9:	8b f8                                           	mov    edi,eax
  ec2feb:	3b fb                                           	cmp    edi,ebx
  ec2fed:	0f 84 bb 00 00 00                               	je     0xec30ae
  ec2ff3:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  ec2ff7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec2ff9:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec2ffc:	51                                              	push   ecx
  ec2ffd:	8b ce                                           	mov    ecx,esi
  ec2fff:	ff d2                                           	call   edx
  ec3001:	50                                              	push   eax
  ec3002:	a1 b0 0a 15 01                                  	mov    eax,ds:0x1150ab0
  ec3007:	57                                              	push   edi
  ec3008:	50                                              	push   eax
  ec3009:	e8 52 7c 6c ff                                  	call   0x58ac60
  ec300e:	83 c4 0c                                        	add    esp,0xc
  ec3011:	3b c3                                           	cmp    eax,ebx
  ec3013:	0f 84 95 00 00 00                               	je     0xec30ae
  ec3019:	50                                              	push   eax
  ec301a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec301e:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  ec3022:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  ec3026:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  ec302a:	c7 44 24 20 30 1f 00 01                         	mov    DWORD PTR [esp+0x20],0x1001f30
  ec3032:	e8 59 85 54 ff                                  	call   0x40b590
  ec3037:	6a 01                                           	push   0x1
  ec3039:	6a 10                                           	push   0x10
  ec303b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ec303f:	51                                              	push   ecx
  ec3040:	6a 09                                           	push   0x9
  ec3042:	6a 13                                           	push   0x13
  ec3044:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ec3048:	c7 44 24 34 6c 88 00 01                         	mov    DWORD PTR [esp+0x34],0x100886c
  ec3050:	66 c7 44 24 3e 13 00                            	mov    WORD PTR [esp+0x3e],0x13
  ec3057:	66 c7 44 24 3c 0b 00                            	mov    WORD PTR [esp+0x3c],0xb
  ec305e:	e8 5d 29 63 ff                                  	call   0x4f59c0
  ec3063:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  ec3067:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec306b:	2b d0                                           	sub    edx,eax
  ec306d:	83 e2 fe                                        	and    edx,0xfffffffe
  ec3070:	83 fa 02                                        	cmp    edx,0x2
  ec3073:	7e 0d                                           	jle    0xec3082
  ec3075:	3b c3                                           	cmp    eax,ebx
  ec3077:	74 09                                           	je     0xec3082
  ec3079:	50                                              	push   eax
  ec307a:	e8 61 14 62 ff                                  	call   0x4e44e0
  ec307f:	83 c4 04                                        	add    esp,0x4
  ec3082:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec3084:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  ec3087:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ec308b:	51                                              	push   ecx
  ec308c:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  ec3090:	52                                              	push   edx
  ec3091:	8b ce                                           	mov    ecx,esi
  ec3093:	ff d0                                           	call   eax
  ec3095:	f6 44 24 28 04                                  	test   BYTE PTR [esp+0x28],0x4
  ec309a:	c7 44 24 20 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x20],0xfba6f4
  ec30a2:	74 0a                                           	je     0xec30ae
  ec30a4:	53                                              	push   ebx
  ec30a5:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ec30a9:	e8 b2 26 63 ff                                  	call   0x4f5760
  ec30ae:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ec30b2:	5f                                              	pop    edi
  ec30b3:	5e                                              	pop    esi
  ec30b4:	5b                                              	pop    ebx
  ec30b5:	83 c4 34                                        	add    esp,0x34
  ec30b8:	c3                                              	ret
  ec30b9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ec30bd:	5e                                              	pop    esi
  ec30be:	5b                                              	pop    ebx
  ec30bf:	83 c4 34                                        	add    esp,0x34
  ec30c2:	c3                                              	ret
  ec30c3:	cc                                              	int3
  ec30c4:	cc                                              	int3
  ec30c5:	cc                                              	int3
  ec30c6:	cc                                              	int3
  ec30c7:	cc                                              	int3
  ec30c8:	cc                                              	int3
  ec30c9:	cc                                              	int3
  ec30ca:	cc                                              	int3
  ec30cb:	cc                                              	int3
  ec30cc:	cc                                              	int3
  ec30cd:	cc                                              	int3
  ec30ce:	cc                                              	int3
  ec30cf:	cc                                              	int3
