# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774800 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportSimName)
Paired Ghidra pseudocode: 00774800_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportSimName.c
Window: [0x00774800, 0x007748d0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007748d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774800: 83 ec 34 8b 44 24 38 56 57 50 e8 f1 0a 2b 00 83
00774810: c4 04 8b f0 c7 44 24 08 00 00 00 00 e8 6f 4b ff
00774820: ff 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86
00774830: 00 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 0e f3
00774840: d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c
00774850: 24 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13
00774860: 00 66 c7 44 24 38 0b 00 e8 53 11 d8 ff 8b 54 24
00774870: 14 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85
00774880: c0 74 09 50 e8 57 fc d6 ff 83 c4 04 8b 07 8b 40
00774890: 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6
007748a0: 44 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00
007748b0: 8d 4c 24 20 e8 a7 0e d8 ff 8b 44 24 08 5f 5e 83
007748c0: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774800 <.text+0x373800>:
  774800:	83 ec 34                                        	sub    esp,0x34
  774803:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  774807:	56                                              	push   esi
  774808:	57                                              	push   edi
  774809:	50                                              	push   eax
  77480a:	e8 f1 0a 2b 00                                  	call   0xa25300
  77480f:	83 c4 04                                        	add    esp,0x4
  774812:	8b f0                                           	mov    esi,eax
  774814:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  77481c:	e8 6f 4b ff ff                                  	call   0x769390
  774821:	8b f8                                           	mov    edi,eax
  774823:	85 ff                                           	test   edi,edi
  774825:	0f 84 8e 00 00 00                               	je     0x7748b9
  77482b:	85 f6                                           	test   esi,esi
  77482d:	0f 84 86 00 00 00                               	je     0x7748b9
  774833:	6a 00                                           	push   0x0
  774835:	6a ff                                           	push   0xffffffff
  774837:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77483b:	56                                              	push   esi
  77483c:	51                                              	push   ecx
  77483d:	e8 0e f3 d7 ff                                  	call   0x4f3b50
  774842:	83 c4 10                                        	add    esp,0x10
  774845:	6a 01                                           	push   0x1
  774847:	6a 10                                           	push   0x10
  774849:	50                                              	push   eax
  77484a:	6a 09                                           	push   0x9
  77484c:	6a 13                                           	push   0x13
  77484e:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  774852:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  77485a:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  774861:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  774868:	e8 53 11 d8 ff                                  	call   0x4f59c0
  77486d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  774871:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  774875:	2b d0                                           	sub    edx,eax
  774877:	83 e2 fe                                        	and    edx,0xfffffffe
  77487a:	83 fa 02                                        	cmp    edx,0x2
  77487d:	7e 0d                                           	jle    0x77488c
  77487f:	85 c0                                           	test   eax,eax
  774881:	74 09                                           	je     0x77488c
  774883:	50                                              	push   eax
  774884:	e8 57 fc d6 ff                                  	call   0x4e44e0
  774889:	83 c4 04                                        	add    esp,0x4
  77488c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77488e:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  774891:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  774895:	51                                              	push   ecx
  774896:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  77489a:	52                                              	push   edx
  77489b:	8b cf                                           	mov    ecx,edi
  77489d:	ff d0                                           	call   eax
  77489f:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7748a4:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7748ac:	74 0b                                           	je     0x7748b9
  7748ae:	6a 00                                           	push   0x0
  7748b0:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7748b4:	e8 a7 0e d8 ff                                  	call   0x4f5760
  7748b9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7748bd:	5f                                              	pop    edi
  7748be:	5e                                              	pop    esi
  7748bf:	83 c4 34                                        	add    esp,0x34
  7748c2:	c3                                              	ret
  7748c3:	cc                                              	int3
  7748c4:	cc                                              	int3
  7748c5:	cc                                              	int3
  7748c6:	cc                                              	int3
  7748c7:	cc                                              	int3
  7748c8:	cc                                              	int3
  7748c9:	cc                                              	int3
  7748ca:	cc                                              	int3
  7748cb:	cc                                              	int3
  7748cc:	cc                                              	int3
  7748cd:	cc                                              	int3
  7748ce:	cc                                              	int3
  7748cf:	cc                                              	int3
