# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773040 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileMyStatus)
Paired Ghidra pseudocode: 00773040_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileMyStatus.c
Window: [0x00773040, 0x00773110) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773040: 83 ec 34 8b 44 24 3c 8b 4c 24 38 56 57 50 51 e8
00773050: ec 11 2b 00 83 c4 08 8b f0 c7 44 24 08 00 00 00
00773060: 00 e8 2a 63 ff ff 8b f8 85 ff 0f 84 8e 00 00 00
00773070: 85 f6 0f 84 86 00 00 00 6a 00 6a ff 8d 54 24 14
00773080: 56 52 e8 c9 0a d8 ff 83 c4 10 6a 01 6a 10 50 6a
00773090: 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01 66
007730a0: c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 0e 29
007730b0: d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83
007730c0: f9 02 7e 0d 85 c0 74 09 50 e8 12 14 d7 ff 83 c4
007730d0: 04 8b 17 8b 52 50 8d 44 24 08 50 8d 4c 24 20 51
007730e0: 8b cf ff d2 f6 44 24 24 04 c7 44 24 1c f4 a6 fb
007730f0: 00 74 0b 6a 00 8d 4c 24 20 e8 62 26 d8 ff 8b 44
00773100: 24 08 5f 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00773040 <.text+0x372040>:
  773040:	83 ec 34                                        	sub    esp,0x34
  773043:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  773047:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77304b:	56                                              	push   esi
  77304c:	57                                              	push   edi
  77304d:	50                                              	push   eax
  77304e:	51                                              	push   ecx
  77304f:	e8 ec 11 2b 00                                  	call   0xa24240
  773054:	83 c4 08                                        	add    esp,0x8
  773057:	8b f0                                           	mov    esi,eax
  773059:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  773061:	e8 2a 63 ff ff                                  	call   0x769390
  773066:	8b f8                                           	mov    edi,eax
  773068:	85 ff                                           	test   edi,edi
  77306a:	0f 84 8e 00 00 00                               	je     0x7730fe
  773070:	85 f6                                           	test   esi,esi
  773072:	0f 84 86 00 00 00                               	je     0x7730fe
  773078:	6a 00                                           	push   0x0
  77307a:	6a ff                                           	push   0xffffffff
  77307c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  773080:	56                                              	push   esi
  773081:	52                                              	push   edx
  773082:	e8 c9 0a d8 ff                                  	call   0x4f3b50
  773087:	83 c4 10                                        	add    esp,0x10
  77308a:	6a 01                                           	push   0x1
  77308c:	6a 10                                           	push   0x10
  77308e:	50                                              	push   eax
  77308f:	6a 09                                           	push   0x9
  773091:	6a 13                                           	push   0x13
  773093:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  773097:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  77309f:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7730a6:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7730ad:	e8 0e 29 d8 ff                                  	call   0x4f59c0
  7730b2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7730b6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7730ba:	2b c8                                           	sub    ecx,eax
  7730bc:	83 e1 fe                                        	and    ecx,0xfffffffe
  7730bf:	83 f9 02                                        	cmp    ecx,0x2
  7730c2:	7e 0d                                           	jle    0x7730d1
  7730c4:	85 c0                                           	test   eax,eax
  7730c6:	74 09                                           	je     0x7730d1
  7730c8:	50                                              	push   eax
  7730c9:	e8 12 14 d7 ff                                  	call   0x4e44e0
  7730ce:	83 c4 04                                        	add    esp,0x4
  7730d1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7730d3:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7730d6:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7730da:	50                                              	push   eax
  7730db:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7730df:	51                                              	push   ecx
  7730e0:	8b cf                                           	mov    ecx,edi
  7730e2:	ff d2                                           	call   edx
  7730e4:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7730e9:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7730f1:	74 0b                                           	je     0x7730fe
  7730f3:	6a 00                                           	push   0x0
  7730f5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7730f9:	e8 62 26 d8 ff                                  	call   0x4f5760
  7730fe:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  773102:	5f                                              	pop    edi
  773103:	5e                                              	pop    esi
  773104:	83 c4 34                                        	add    esp,0x34
  773107:	c3                                              	ret
  773108:	cc                                              	int3
  773109:	cc                                              	int3
  77310a:	cc                                              	int3
  77310b:	cc                                              	int3
  77310c:	cc                                              	int3
  77310d:	cc                                              	int3
  77310e:	cc                                              	int3
  77310f:	cc                                              	int3
