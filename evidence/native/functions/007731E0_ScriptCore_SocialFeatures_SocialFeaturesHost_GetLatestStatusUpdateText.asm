# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007731e0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetLatestStatusUpdateText)
Paired Ghidra pseudocode: 007731E0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetLatestStatusUpdateText.c
Window: [0x007731e0, 0x007732b0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007732b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007731e0: 83 ec 34 8b 44 24 3c 8b 4c 24 38 56 57 50 51 e8
007731f0: 8c 11 2b 00 83 c4 08 8b f0 c7 44 24 08 00 00 00
00773200: 00 e8 8a 61 ff ff 8b f8 85 ff 0f 84 8e 00 00 00
00773210: 85 f6 0f 84 86 00 00 00 6a 00 6a ff 8d 54 24 14
00773220: 56 52 e8 29 09 d8 ff 83 c4 10 6a 01 6a 10 50 6a
00773230: 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01 66
00773240: c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 6e 27
00773250: d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83
00773260: f9 02 7e 0d 85 c0 74 09 50 e8 72 12 d7 ff 83 c4
00773270: 04 8b 17 8b 52 50 8d 44 24 08 50 8d 4c 24 20 51
00773280: 8b cf ff d2 f6 44 24 24 04 c7 44 24 1c f4 a6 fb
00773290: 00 74 0b 6a 00 8d 4c 24 20 e8 c2 24 d8 ff 8b 44
007732a0: 24 08 5f 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007731e0 <.text+0x3721e0>:
  7731e0:	83 ec 34                                        	sub    esp,0x34
  7731e3:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  7731e7:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7731eb:	56                                              	push   esi
  7731ec:	57                                              	push   edi
  7731ed:	50                                              	push   eax
  7731ee:	51                                              	push   ecx
  7731ef:	e8 8c 11 2b 00                                  	call   0xa24380
  7731f4:	83 c4 08                                        	add    esp,0x8
  7731f7:	8b f0                                           	mov    esi,eax
  7731f9:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  773201:	e8 8a 61 ff ff                                  	call   0x769390
  773206:	8b f8                                           	mov    edi,eax
  773208:	85 ff                                           	test   edi,edi
  77320a:	0f 84 8e 00 00 00                               	je     0x77329e
  773210:	85 f6                                           	test   esi,esi
  773212:	0f 84 86 00 00 00                               	je     0x77329e
  773218:	6a 00                                           	push   0x0
  77321a:	6a ff                                           	push   0xffffffff
  77321c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  773220:	56                                              	push   esi
  773221:	52                                              	push   edx
  773222:	e8 29 09 d8 ff                                  	call   0x4f3b50
  773227:	83 c4 10                                        	add    esp,0x10
  77322a:	6a 01                                           	push   0x1
  77322c:	6a 10                                           	push   0x10
  77322e:	50                                              	push   eax
  77322f:	6a 09                                           	push   0x9
  773231:	6a 13                                           	push   0x13
  773233:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  773237:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  77323f:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  773246:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  77324d:	e8 6e 27 d8 ff                                  	call   0x4f59c0
  773252:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  773256:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77325a:	2b c8                                           	sub    ecx,eax
  77325c:	83 e1 fe                                        	and    ecx,0xfffffffe
  77325f:	83 f9 02                                        	cmp    ecx,0x2
  773262:	7e 0d                                           	jle    0x773271
  773264:	85 c0                                           	test   eax,eax
  773266:	74 09                                           	je     0x773271
  773268:	50                                              	push   eax
  773269:	e8 72 12 d7 ff                                  	call   0x4e44e0
  77326e:	83 c4 04                                        	add    esp,0x4
  773271:	8b 17                                           	mov    edx,DWORD PTR [edi]
  773273:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  773276:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77327a:	50                                              	push   eax
  77327b:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77327f:	51                                              	push   ecx
  773280:	8b cf                                           	mov    ecx,edi
  773282:	ff d2                                           	call   edx
  773284:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  773289:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  773291:	74 0b                                           	je     0x77329e
  773293:	6a 00                                           	push   0x0
  773295:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773299:	e8 c2 24 d8 ff                                  	call   0x4f5760
  77329e:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7732a2:	5f                                              	pop    edi
  7732a3:	5e                                              	pop    esi
  7732a4:	83 c4 34                                        	add    esp,0x34
  7732a7:	c3                                              	ret
  7732a8:	cc                                              	int3
  7732a9:	cc                                              	int3
  7732aa:	cc                                              	int3
  7732ab:	cc                                              	int3
  7732ac:	cc                                              	int3
  7732ad:	cc                                              	int3
  7732ae:	cc                                              	int3
  7732af:	cc                                              	int3
