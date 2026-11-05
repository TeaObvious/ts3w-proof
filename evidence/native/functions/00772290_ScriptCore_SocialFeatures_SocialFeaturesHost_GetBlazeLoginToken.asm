# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772290 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBlazeLoginToken)
Paired Ghidra pseudocode: 00772290_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBlazeLoginToken.c
Window: [0x00772290, 0x00772350) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772290: 83 ec 34 56 57 e8 a6 04 2b 00 8b f0 c7 44 24 08
007722a0: 00 00 00 00 e8 e7 70 ff ff 8b f8 85 ff 0f 84 8e
007722b0: 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a ff 8d
007722c0: 44 24 14 56 50 e8 86 18 d8 ff 83 c4 10 6a 01 6a
007722d0: 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88
007722e0: 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38 0b 00
007722f0: e8 cb 36 d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83
00772300: e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 cf 21 d7
00772310: ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50 8d 4c
00772320: 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44 24 1c
00772330: f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 1f 34 d8
00772340: ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00772290 <.text+0x371290>:
  772290:	83 ec 34                                        	sub    esp,0x34
  772293:	56                                              	push   esi
  772294:	57                                              	push   edi
  772295:	e8 a6 04 2b 00                                  	call   0xa22740
  77229a:	8b f0                                           	mov    esi,eax
  77229c:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7722a4:	e8 e7 70 ff ff                                  	call   0x769390
  7722a9:	8b f8                                           	mov    edi,eax
  7722ab:	85 ff                                           	test   edi,edi
  7722ad:	0f 84 8e 00 00 00                               	je     0x772341
  7722b3:	85 f6                                           	test   esi,esi
  7722b5:	0f 84 86 00 00 00                               	je     0x772341
  7722bb:	6a 00                                           	push   0x0
  7722bd:	6a ff                                           	push   0xffffffff
  7722bf:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7722c3:	56                                              	push   esi
  7722c4:	50                                              	push   eax
  7722c5:	e8 86 18 d8 ff                                  	call   0x4f3b50
  7722ca:	83 c4 10                                        	add    esp,0x10
  7722cd:	6a 01                                           	push   0x1
  7722cf:	6a 10                                           	push   0x10
  7722d1:	50                                              	push   eax
  7722d2:	6a 09                                           	push   0x9
  7722d4:	6a 13                                           	push   0x13
  7722d6:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7722da:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7722e2:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7722e9:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7722f0:	e8 cb 36 d8 ff                                  	call   0x4f59c0
  7722f5:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7722f9:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7722fd:	2b c8                                           	sub    ecx,eax
  7722ff:	83 e1 fe                                        	and    ecx,0xfffffffe
  772302:	83 f9 02                                        	cmp    ecx,0x2
  772305:	7e 0d                                           	jle    0x772314
  772307:	85 c0                                           	test   eax,eax
  772309:	74 09                                           	je     0x772314
  77230b:	50                                              	push   eax
  77230c:	e8 cf 21 d7 ff                                  	call   0x4e44e0
  772311:	83 c4 04                                        	add    esp,0x4
  772314:	8b 17                                           	mov    edx,DWORD PTR [edi]
  772316:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  772319:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77231d:	50                                              	push   eax
  77231e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772322:	51                                              	push   ecx
  772323:	8b cf                                           	mov    ecx,edi
  772325:	ff d2                                           	call   edx
  772327:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77232c:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772334:	74 0b                                           	je     0x772341
  772336:	6a 00                                           	push   0x0
  772338:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77233c:	e8 1f 34 d8 ff                                  	call   0x4f5760
  772341:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772345:	5f                                              	pop    edi
  772346:	5e                                              	pop    esi
  772347:	83 c4 34                                        	add    esp,0x34
  77234a:	c3                                              	ret
  77234b:	cc                                              	int3
  77234c:	cc                                              	int3
  77234d:	cc                                              	int3
  77234e:	cc                                              	int3
  77234f:	cc                                              	int3
