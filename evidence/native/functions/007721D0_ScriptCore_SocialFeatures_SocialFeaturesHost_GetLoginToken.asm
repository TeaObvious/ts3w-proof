# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007721d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetLoginToken)
Paired Ghidra pseudocode: 007721D0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetLoginToken.c
Window: [0x007721d0, 0x00772290) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007721d0: 83 ec 34 56 57 e8 36 05 2b 00 8b f0 c7 44 24 08
007721e0: 00 00 00 00 e8 a7 71 ff ff 8b f8 85 ff 0f 84 8e
007721f0: 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a ff 8d
00772200: 44 24 14 56 50 e8 46 19 d8 ff 83 c4 10 6a 01 6a
00772210: 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88
00772220: 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38 0b 00
00772230: e8 8b 37 d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83
00772240: e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 8f 22 d7
00772250: ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50 8d 4c
00772260: 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44 24 1c
00772270: f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 df 34 d8
00772280: ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007721d0 <.text+0x3711d0>:
  7721d0:	83 ec 34                                        	sub    esp,0x34
  7721d3:	56                                              	push   esi
  7721d4:	57                                              	push   edi
  7721d5:	e8 36 05 2b 00                                  	call   0xa22710
  7721da:	8b f0                                           	mov    esi,eax
  7721dc:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7721e4:	e8 a7 71 ff ff                                  	call   0x769390
  7721e9:	8b f8                                           	mov    edi,eax
  7721eb:	85 ff                                           	test   edi,edi
  7721ed:	0f 84 8e 00 00 00                               	je     0x772281
  7721f3:	85 f6                                           	test   esi,esi
  7721f5:	0f 84 86 00 00 00                               	je     0x772281
  7721fb:	6a 00                                           	push   0x0
  7721fd:	6a ff                                           	push   0xffffffff
  7721ff:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  772203:	56                                              	push   esi
  772204:	50                                              	push   eax
  772205:	e8 46 19 d8 ff                                  	call   0x4f3b50
  77220a:	83 c4 10                                        	add    esp,0x10
  77220d:	6a 01                                           	push   0x1
  77220f:	6a 10                                           	push   0x10
  772211:	50                                              	push   eax
  772212:	6a 09                                           	push   0x9
  772214:	6a 13                                           	push   0x13
  772216:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77221a:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772222:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772229:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772230:	e8 8b 37 d8 ff                                  	call   0x4f59c0
  772235:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  772239:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77223d:	2b c8                                           	sub    ecx,eax
  77223f:	83 e1 fe                                        	and    ecx,0xfffffffe
  772242:	83 f9 02                                        	cmp    ecx,0x2
  772245:	7e 0d                                           	jle    0x772254
  772247:	85 c0                                           	test   eax,eax
  772249:	74 09                                           	je     0x772254
  77224b:	50                                              	push   eax
  77224c:	e8 8f 22 d7 ff                                  	call   0x4e44e0
  772251:	83 c4 04                                        	add    esp,0x4
  772254:	8b 17                                           	mov    edx,DWORD PTR [edi]
  772256:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  772259:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77225d:	50                                              	push   eax
  77225e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772262:	51                                              	push   ecx
  772263:	8b cf                                           	mov    ecx,edi
  772265:	ff d2                                           	call   edx
  772267:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77226c:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772274:	74 0b                                           	je     0x772281
  772276:	6a 00                                           	push   0x0
  772278:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77227c:	e8 df 34 d8 ff                                  	call   0x4f5760
  772281:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772285:	5f                                              	pop    edi
  772286:	5e                                              	pop    esi
  772287:	83 c4 34                                        	add    esp,0x34
  77228a:	c3                                              	ret
  77228b:	cc                                              	int3
  77228c:	cc                                              	int3
  77228d:	cc                                              	int3
  77228e:	cc                                              	int3
  77228f:	cc                                              	int3
