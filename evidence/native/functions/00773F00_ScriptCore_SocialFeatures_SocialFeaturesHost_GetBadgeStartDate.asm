# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773f00 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStartDate)
Paired Ghidra pseudocode: 00773F00_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeStartDate.c
Window: [0x00773f00, 0x00774060) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773f00: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 7f 54 ff
00773f10: ff 8b f0 85 f6 0f 84 2e 01 00 00 8b 4c 24 3c 8b
00773f20: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
00773f30: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
00773f40: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
00773f50: 5c 24 28 e8 68 fd d7 ff 8d 4c 24 20 83 c4 10 3b
00773f60: c1 74 14 8b 50 04 8b 00 52 50 e8 a1 19 c9 ff 8b
00773f70: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
00773f80: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 50 05 d7 ff
00773f90: 83 c4 04 57 e8 d7 0a 2b 00 83 c4 04 85 c0 0f 84
00773fa0: 86 00 00 00 6a 00 6a ff 50 8d 54 24 3c 52 e8 9d
00773fb0: fb d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d
00773fc0: 4c 24 24 c7 44 24 24 6c 88 00 01 66 c7 44 24 2e
00773fd0: 13 00 66 c7 44 24 2c 0b 00 e8 e2 19 d8 ff 8b 4c
00773fe0: 24 38 8b 44 24 30 2b c8 83 e1 fe 83 f9 02 7e 0d
00773ff0: 85 c0 74 09 50 e8 e6 04 d7 ff 83 c4 04 8b 16 8b
00774000: 52 50 8d 44 24 0c 50 8d 4c 24 14 51 8b ce ff d2
00774010: f6 44 24 18 04 c7 44 24 10 f4 a6 fb 00 74 0b 6a
00774020: 00 8d 4c 24 14 e8 36 17 d8 ff 2b df 83 fb 01 7e
00774030: 0d 85 ff 74 09 57 e8 a5 04 d7 ff 83 c4 04 8b 44
00774040: 24 0c 5f 5b 5e 83 c4 34 c3 8b 44 24 04 5e 83 c4
00774050: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00773f00 <.text+0x372f00>:
  773f00:	83 ec 34                                        	sub    esp,0x34
  773f03:	56                                              	push   esi
  773f04:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  773f0c:	e8 7f 54 ff ff                                  	call   0x769390
  773f11:	8b f0                                           	mov    esi,eax
  773f13:	85 f6                                           	test   esi,esi
  773f15:	0f 84 2e 01 00 00                               	je     0x774049
  773f1b:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  773f1f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  773f21:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  773f24:	53                                              	push   ebx
  773f25:	57                                              	push   edi
  773f26:	51                                              	push   ecx
  773f27:	8b ce                                           	mov    ecx,esi
  773f29:	ff d2                                           	call   edx
  773f2b:	6a 00                                           	push   0x0
  773f2d:	6a ff                                           	push   0xffffffff
  773f2f:	50                                              	push   eax
  773f30:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  773f34:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  773f39:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  773f3e:	50                                              	push   eax
  773f3f:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  773f47:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  773f4b:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  773f4f:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  773f53:	e8 68 fd d7 ff                                  	call   0x4f3cc0
  773f58:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773f5c:	83 c4 10                                        	add    esp,0x10
  773f5f:	3b c1                                           	cmp    eax,ecx
  773f61:	74 14                                           	je     0x773f77
  773f63:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  773f66:	8b 00                                           	mov    eax,DWORD PTR [eax]
  773f68:	52                                              	push   edx
  773f69:	50                                              	push   eax
  773f6a:	e8 a1 19 c9 ff                                  	call   0x405910
  773f6f:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  773f73:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  773f77:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  773f7b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773f7f:	2b c8                                           	sub    ecx,eax
  773f81:	83 f9 01                                        	cmp    ecx,0x1
  773f84:	7e 0d                                           	jle    0x773f93
  773f86:	85 c0                                           	test   eax,eax
  773f88:	74 09                                           	je     0x773f93
  773f8a:	50                                              	push   eax
  773f8b:	e8 50 05 d7 ff                                  	call   0x4e44e0
  773f90:	83 c4 04                                        	add    esp,0x4
  773f93:	57                                              	push   edi
  773f94:	e8 d7 0a 2b 00                                  	call   0xa24a70
  773f99:	83 c4 04                                        	add    esp,0x4
  773f9c:	85 c0                                           	test   eax,eax
  773f9e:	0f 84 86 00 00 00                               	je     0x77402a
  773fa4:	6a 00                                           	push   0x0
  773fa6:	6a ff                                           	push   0xffffffff
  773fa8:	50                                              	push   eax
  773fa9:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  773fad:	52                                              	push   edx
  773fae:	e8 9d fb d7 ff                                  	call   0x4f3b50
  773fb3:	83 c4 10                                        	add    esp,0x10
  773fb6:	6a 01                                           	push   0x1
  773fb8:	6a 10                                           	push   0x10
  773fba:	50                                              	push   eax
  773fbb:	6a 09                                           	push   0x9
  773fbd:	6a 13                                           	push   0x13
  773fbf:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  773fc3:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  773fcb:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  773fd2:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  773fd9:	e8 e2 19 d8 ff                                  	call   0x4f59c0
  773fde:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  773fe2:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773fe6:	2b c8                                           	sub    ecx,eax
  773fe8:	83 e1 fe                                        	and    ecx,0xfffffffe
  773feb:	83 f9 02                                        	cmp    ecx,0x2
  773fee:	7e 0d                                           	jle    0x773ffd
  773ff0:	85 c0                                           	test   eax,eax
  773ff2:	74 09                                           	je     0x773ffd
  773ff4:	50                                              	push   eax
  773ff5:	e8 e6 04 d7 ff                                  	call   0x4e44e0
  773ffa:	83 c4 04                                        	add    esp,0x4
  773ffd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  773fff:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  774002:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  774006:	50                                              	push   eax
  774007:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77400b:	51                                              	push   ecx
  77400c:	8b ce                                           	mov    ecx,esi
  77400e:	ff d2                                           	call   edx
  774010:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  774015:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  77401d:	74 0b                                           	je     0x77402a
  77401f:	6a 00                                           	push   0x0
  774021:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  774025:	e8 36 17 d8 ff                                  	call   0x4f5760
  77402a:	2b df                                           	sub    ebx,edi
  77402c:	83 fb 01                                        	cmp    ebx,0x1
  77402f:	7e 0d                                           	jle    0x77403e
  774031:	85 ff                                           	test   edi,edi
  774033:	74 09                                           	je     0x77403e
  774035:	57                                              	push   edi
  774036:	e8 a5 04 d7 ff                                  	call   0x4e44e0
  77403b:	83 c4 04                                        	add    esp,0x4
  77403e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  774042:	5f                                              	pop    edi
  774043:	5b                                              	pop    ebx
  774044:	5e                                              	pop    esi
  774045:	83 c4 34                                        	add    esp,0x34
  774048:	c3                                              	ret
  774049:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  77404d:	5e                                              	pop    esi
  77404e:	83 c4 34                                        	add    esp,0x34
  774051:	c3                                              	ret
  774052:	cc                                              	int3
  774053:	cc                                              	int3
  774054:	cc                                              	int3
  774055:	cc                                              	int3
  774056:	cc                                              	int3
  774057:	cc                                              	int3
  774058:	cc                                              	int3
  774059:	cc                                              	int3
  77405a:	cc                                              	int3
  77405b:	cc                                              	int3
  77405c:	cc                                              	int3
  77405d:	cc                                              	int3
  77405e:	cc                                              	int3
  77405f:	cc                                              	int3
