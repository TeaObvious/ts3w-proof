# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772100 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetRegCode)
Paired Ghidra pseudocode: 00772100_ScriptCore_SocialFeatures_SocialFeaturesHost_GetRegCode.c
Window: [0x00772100, 0x007721d0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007721d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772100: 83 ec 34 8b 44 24 38 56 57 50 e8 b1 05 2b 00 83
00772110: c4 04 8b f0 c7 44 24 08 00 00 00 00 e8 6f 72 ff
00772120: ff 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86
00772130: 00 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 0e 1a
00772140: d8 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c
00772150: 24 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13
00772160: 00 66 c7 44 24 38 0b 00 e8 53 38 d8 ff 8b 54 24
00772170: 14 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85
00772180: c0 74 09 50 e8 57 23 d7 ff 83 c4 04 8b 07 8b 40
00772190: 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6
007721a0: 44 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00
007721b0: 8d 4c 24 20 e8 a7 35 d8 ff 8b 44 24 08 5f 5e 83
007721c0: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772100 <.text+0x371100>:
  772100:	83 ec 34                                        	sub    esp,0x34
  772103:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  772107:	56                                              	push   esi
  772108:	57                                              	push   edi
  772109:	50                                              	push   eax
  77210a:	e8 b1 05 2b 00                                  	call   0xa226c0
  77210f:	83 c4 04                                        	add    esp,0x4
  772112:	8b f0                                           	mov    esi,eax
  772114:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  77211c:	e8 6f 72 ff ff                                  	call   0x769390
  772121:	8b f8                                           	mov    edi,eax
  772123:	85 ff                                           	test   edi,edi
  772125:	0f 84 8e 00 00 00                               	je     0x7721b9
  77212b:	85 f6                                           	test   esi,esi
  77212d:	0f 84 86 00 00 00                               	je     0x7721b9
  772133:	6a 00                                           	push   0x0
  772135:	6a ff                                           	push   0xffffffff
  772137:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77213b:	56                                              	push   esi
  77213c:	51                                              	push   ecx
  77213d:	e8 0e 1a d8 ff                                  	call   0x4f3b50
  772142:	83 c4 10                                        	add    esp,0x10
  772145:	6a 01                                           	push   0x1
  772147:	6a 10                                           	push   0x10
  772149:	50                                              	push   eax
  77214a:	6a 09                                           	push   0x9
  77214c:	6a 13                                           	push   0x13
  77214e:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772152:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  77215a:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772161:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772168:	e8 53 38 d8 ff                                  	call   0x4f59c0
  77216d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772171:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772175:	2b d0                                           	sub    edx,eax
  772177:	83 e2 fe                                        	and    edx,0xfffffffe
  77217a:	83 fa 02                                        	cmp    edx,0x2
  77217d:	7e 0d                                           	jle    0x77218c
  77217f:	85 c0                                           	test   eax,eax
  772181:	74 09                                           	je     0x77218c
  772183:	50                                              	push   eax
  772184:	e8 57 23 d7 ff                                  	call   0x4e44e0
  772189:	83 c4 04                                        	add    esp,0x4
  77218c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77218e:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772191:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772195:	51                                              	push   ecx
  772196:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  77219a:	52                                              	push   edx
  77219b:	8b cf                                           	mov    ecx,edi
  77219d:	ff d0                                           	call   eax
  77219f:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7721a4:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7721ac:	74 0b                                           	je     0x7721b9
  7721ae:	6a 00                                           	push   0x0
  7721b0:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7721b4:	e8 a7 35 d8 ff                                  	call   0x4f5760
  7721b9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7721bd:	5f                                              	pop    edi
  7721be:	5e                                              	pop    esi
  7721bf:	83 c4 34                                        	add    esp,0x34
  7721c2:	c3                                              	ret
  7721c3:	cc                                              	int3
  7721c4:	cc                                              	int3
  7721c5:	cc                                              	int3
  7721c6:	cc                                              	int3
  7721c7:	cc                                              	int3
  7721c8:	cc                                              	int3
  7721c9:	cc                                              	int3
  7721ca:	cc                                              	int3
  7721cb:	cc                                              	int3
  7721cc:	cc                                              	int3
  7721cd:	cc                                              	int3
  7721ce:	cc                                              	int3
  7721cf:	cc                                              	int3
