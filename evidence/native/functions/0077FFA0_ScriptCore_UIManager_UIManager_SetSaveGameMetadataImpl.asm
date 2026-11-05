# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077ffa0 (ScriptCore.UIManager::UIManager_SetSaveGameMetadataImpl)
Paired Ghidra pseudocode: 0077FFA0_ScriptCore_UIManager_UIManager_SetSaveGameMetadataImpl.c
Window: [0x0077ffa0, 0x007801b0) (528 bytes; stop exclusive)
Next defined Ghidra entry: 0x007801b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077ffa0: 81 ec 24 06 00 00 57 e8 e4 93 fe ff 8b f8 85 ff
0077ffb0: 0f 84 e7 01 00 00 8b 8c 24 2c 06 00 00 8b 07 8b
0077ffc0: 50 58 51 8b cf ff d2 50 8d 4c 24 0c c7 44 24 0c
0077ffd0: 00 00 00 00 c7 44 24 10 00 00 00 00 c7 44 24 14
0077ffe0: 00 00 00 00 c7 44 24 18 54 fb 00 01 e8 9f b5 c8
0077fff0: ff 8b 4c 24 0c 8b 44 24 08 2b c8 d1 f9 0f 84 7f
00780000: 01 00 00 55 56 e8 66 9c 32 00 85 c0 0f 84 6a 01
00780010: 00 00 8d 68 ec 85 ed 0f 84 5f 01 00 00 8d 54 24
00780020: 0c 52 8d 44 24 14 50 8b cd e8 32 b4 32 00 84 c0
00780030: 0f 84 46 01 00 00 6a 00 6a 00 6a 00 6a 00 68 40
00780040: fb 00 01 68 d0 00 00 00 e8 b3 44 d6 ff 83 c4 18
00780050: 85 c0 74 30 8b c8 e8 35 de e1 ff 8b f0 85 f6 0f
00780060: 84 01 01 00 00 8b 16 8b 02 8b ce ff d0 8b 84 24
00780070: 38 06 00 00 85 c0 74 13 8b 17 50 8b 42 58 8b cf
00780080: ff d0 eb 0c 33 f6 e9 db 00 00 00 b8 c4 a6 fb 00
00780090: 50 8b ce e8 68 e0 e1 ff 8b 84 24 3c 06 00 00 85
007800a0: c0 74 0c 8b 17 50 8b 42 58 8b cf ff d0 eb 05 b8
007800b0: c4 a6 fb 00 50 8b ce e8 74 e0 e1 ff 8b 84 24 40
007800c0: 06 00 00 85 c0 74 0c 8b 17 50 8b 42 58 8b cf ff
007800d0: d0 eb 05 b8 c4 a6 fb 00 50 8b ce e8 f0 df e1 ff
007800e0: 8b 8c 24 44 06 00 00 8b 94 24 48 06 00 00 8b 84
007800f0: 24 4c 06 00 00 89 4e 30 8b 8c 24 50 06 00 00 89
00780100: 56 34 89 46 38 89 4e 3c 8b 0d c4 db 1e 01 85 c9
00780110: 74 34 e8 29 90 29 00 50 8d 8c 24 24 02 00 00 e8
00780120: 4c e0 d6 ff 68 00 01 00 00 8d 54 24 24 52 8d 8c
00780130: 24 28 02 00 00 e8 86 dc d6 ff 8d 44 24 20 50 8b
00780140: ce e8 5a df e1 ff 8b 8c 24 54 06 00 00 8b 54 24
00780150: 0c 51 56 52 8b cd e8 95 d6 32 00 84 c0 74 07 8b
00780160: cd e8 aa 9e 32 00 8b 4c 24 0c e8 41 a2 d8 ff 85
00780170: f6 74 09 8b 06 8b 50 04 8b ce ff d2 8b 44 24 10
00780180: 5e 5d 8b 4c 24 10 2b c8 83 e1 fe 83 f9 02 7e 0d
00780190: 85 c0 74 09 50 e8 46 43 d6 ff 83 c4 04 5f 81 c4
007801a0: 24 06 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077ffa0 <.text+0x37efa0>:
  77ffa0:	81 ec 24 06 00 00                               	sub    esp,0x624
  77ffa6:	57                                              	push   edi
  77ffa7:	e8 e4 93 fe ff                                  	call   0x769390
  77ffac:	8b f8                                           	mov    edi,eax
  77ffae:	85 ff                                           	test   edi,edi
  77ffb0:	0f 84 e7 01 00 00                               	je     0x78019d
  77ffb6:	8b 8c 24 2c 06 00 00                            	mov    ecx,DWORD PTR [esp+0x62c]
  77ffbd:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77ffbf:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  77ffc2:	51                                              	push   ecx
  77ffc3:	8b cf                                           	mov    ecx,edi
  77ffc5:	ff d2                                           	call   edx
  77ffc7:	50                                              	push   eax
  77ffc8:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  77ffcc:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  77ffd4:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  77ffdc:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  77ffe4:	c7 44 24 18 54 fb 00 01                         	mov    DWORD PTR [esp+0x18],0x100fb54
  77ffec:	e8 9f b5 c8 ff                                  	call   0x40b590
  77fff1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77fff5:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77fff9:	2b c8                                           	sub    ecx,eax
  77fffb:	d1 f9                                           	sar    ecx,1
  77fffd:	0f 84 7f 01 00 00                               	je     0x780182
  780003:	55                                              	push   ebp
  780004:	56                                              	push   esi
  780005:	e8 66 9c 32 00                                  	call   0xaa9c70
  78000a:	85 c0                                           	test   eax,eax
  78000c:	0f 84 6a 01 00 00                               	je     0x78017c
  780012:	8d 68 ec                                        	lea    ebp,[eax-0x14]
  780015:	85 ed                                           	test   ebp,ebp
  780017:	0f 84 5f 01 00 00                               	je     0x78017c
  78001d:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  780021:	52                                              	push   edx
  780022:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  780026:	50                                              	push   eax
  780027:	8b cd                                           	mov    ecx,ebp
  780029:	e8 32 b4 32 00                                  	call   0xaab460
  78002e:	84 c0                                           	test   al,al
  780030:	0f 84 46 01 00 00                               	je     0x78017c
  780036:	6a 00                                           	push   0x0
  780038:	6a 00                                           	push   0x0
  78003a:	6a 00                                           	push   0x0
  78003c:	6a 00                                           	push   0x0
  78003e:	68 40 fb 00 01                                  	push   0x100fb40
  780043:	68 d0 00 00 00                                  	push   0xd0
  780048:	e8 b3 44 d6 ff                                  	call   0x4e4500
  78004d:	83 c4 18                                        	add    esp,0x18
  780050:	85 c0                                           	test   eax,eax
  780052:	74 30                                           	je     0x780084
  780054:	8b c8                                           	mov    ecx,eax
  780056:	e8 35 de e1 ff                                  	call   0x59de90
  78005b:	8b f0                                           	mov    esi,eax
  78005d:	85 f6                                           	test   esi,esi
  78005f:	0f 84 01 01 00 00                               	je     0x780166
  780065:	8b 16                                           	mov    edx,DWORD PTR [esi]
  780067:	8b 02                                           	mov    eax,DWORD PTR [edx]
  780069:	8b ce                                           	mov    ecx,esi
  78006b:	ff d0                                           	call   eax
  78006d:	8b 84 24 38 06 00 00                            	mov    eax,DWORD PTR [esp+0x638]
  780074:	85 c0                                           	test   eax,eax
  780076:	74 13                                           	je     0x78008b
  780078:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78007a:	50                                              	push   eax
  78007b:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  78007e:	8b cf                                           	mov    ecx,edi
  780080:	ff d0                                           	call   eax
  780082:	eb 0c                                           	jmp    0x780090
  780084:	33 f6                                           	xor    esi,esi
  780086:	e9 db 00 00 00                                  	jmp    0x780166
  78008b:	b8 c4 a6 fb 00                                  	mov    eax,0xfba6c4
  780090:	50                                              	push   eax
  780091:	8b ce                                           	mov    ecx,esi
  780093:	e8 68 e0 e1 ff                                  	call   0x59e100
  780098:	8b 84 24 3c 06 00 00                            	mov    eax,DWORD PTR [esp+0x63c]
  78009f:	85 c0                                           	test   eax,eax
  7800a1:	74 0c                                           	je     0x7800af
  7800a3:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7800a5:	50                                              	push   eax
  7800a6:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  7800a9:	8b cf                                           	mov    ecx,edi
  7800ab:	ff d0                                           	call   eax
  7800ad:	eb 05                                           	jmp    0x7800b4
  7800af:	b8 c4 a6 fb 00                                  	mov    eax,0xfba6c4
  7800b4:	50                                              	push   eax
  7800b5:	8b ce                                           	mov    ecx,esi
  7800b7:	e8 74 e0 e1 ff                                  	call   0x59e130
  7800bc:	8b 84 24 40 06 00 00                            	mov    eax,DWORD PTR [esp+0x640]
  7800c3:	85 c0                                           	test   eax,eax
  7800c5:	74 0c                                           	je     0x7800d3
  7800c7:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7800c9:	50                                              	push   eax
  7800ca:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  7800cd:	8b cf                                           	mov    ecx,edi
  7800cf:	ff d0                                           	call   eax
  7800d1:	eb 05                                           	jmp    0x7800d8
  7800d3:	b8 c4 a6 fb 00                                  	mov    eax,0xfba6c4
  7800d8:	50                                              	push   eax
  7800d9:	8b ce                                           	mov    ecx,esi
  7800db:	e8 f0 df e1 ff                                  	call   0x59e0d0
  7800e0:	8b 8c 24 44 06 00 00                            	mov    ecx,DWORD PTR [esp+0x644]
  7800e7:	8b 94 24 48 06 00 00                            	mov    edx,DWORD PTR [esp+0x648]
  7800ee:	8b 84 24 4c 06 00 00                            	mov    eax,DWORD PTR [esp+0x64c]
  7800f5:	89 4e 30                                        	mov    DWORD PTR [esi+0x30],ecx
  7800f8:	8b 8c 24 50 06 00 00                            	mov    ecx,DWORD PTR [esp+0x650]
  7800ff:	89 56 34                                        	mov    DWORD PTR [esi+0x34],edx
  780102:	89 46 38                                        	mov    DWORD PTR [esi+0x38],eax
  780105:	89 4e 3c                                        	mov    DWORD PTR [esi+0x3c],ecx
  780108:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78010e:	85 c9                                           	test   ecx,ecx
  780110:	74 34                                           	je     0x780146
  780112:	e8 29 90 29 00                                  	call   0xa19140
  780117:	50                                              	push   eax
  780118:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
  78011f:	e8 4c e0 d6 ff                                  	call   0x4ee170
  780124:	68 00 01 00 00                                  	push   0x100
  780129:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  78012d:	52                                              	push   edx
  78012e:	8d 8c 24 28 02 00 00                            	lea    ecx,[esp+0x228]
  780135:	e8 86 dc d6 ff                                  	call   0x4eddc0
  78013a:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  78013e:	50                                              	push   eax
  78013f:	8b ce                                           	mov    ecx,esi
  780141:	e8 5a df e1 ff                                  	call   0x59e0a0
  780146:	8b 8c 24 54 06 00 00                            	mov    ecx,DWORD PTR [esp+0x654]
  78014d:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  780151:	51                                              	push   ecx
  780152:	56                                              	push   esi
  780153:	52                                              	push   edx
  780154:	8b cd                                           	mov    ecx,ebp
  780156:	e8 95 d6 32 00                                  	call   0xaad7f0
  78015b:	84 c0                                           	test   al,al
  78015d:	74 07                                           	je     0x780166
  78015f:	8b cd                                           	mov    ecx,ebp
  780161:	e8 aa 9e 32 00                                  	call   0xaaa010
  780166:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78016a:	e8 41 a2 d8 ff                                  	call   0x50a3b0
  78016f:	85 f6                                           	test   esi,esi
  780171:	74 09                                           	je     0x78017c
  780173:	8b 06                                           	mov    eax,DWORD PTR [esi]
  780175:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  780178:	8b ce                                           	mov    ecx,esi
  78017a:	ff d2                                           	call   edx
  78017c:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  780180:	5e                                              	pop    esi
  780181:	5d                                              	pop    ebp
  780182:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  780186:	2b c8                                           	sub    ecx,eax
  780188:	83 e1 fe                                        	and    ecx,0xfffffffe
  78018b:	83 f9 02                                        	cmp    ecx,0x2
  78018e:	7e 0d                                           	jle    0x78019d
  780190:	85 c0                                           	test   eax,eax
  780192:	74 09                                           	je     0x78019d
  780194:	50                                              	push   eax
  780195:	e8 46 43 d6 ff                                  	call   0x4e44e0
  78019a:	83 c4 04                                        	add    esp,0x4
  78019d:	5f                                              	pop    edi
  78019e:	81 c4 24 06 00 00                               	add    esp,0x624
  7801a4:	c3                                              	ret
  7801a5:	cc                                              	int3
  7801a6:	cc                                              	int3
  7801a7:	cc                                              	int3
  7801a8:	cc                                              	int3
  7801a9:	cc                                              	int3
  7801aa:	cc                                              	int3
  7801ab:	cc                                              	int3
  7801ac:	cc                                              	int3
  7801ad:	cc                                              	int3
  7801ae:	cc                                              	int3
  7801af:	cc                                              	int3
