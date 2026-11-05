# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a120 (ScriptCore.UIManager::UIManager_CaptureSceneAsImage)
Paired Ghidra pseudocode: 0077A120_ScriptCore_UIManager_UIManager_CaptureSceneAsImage.c
Window: [0x0077a120, 0x0077a220) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a120: 83 ec 0c 56 57 e8 f6 5f 26 00 8b f8 89 7c 24 08
0077a130: e8 5b f2 fe ff 85 ff 8b f0 0f 84 d2 00 00 00 85
0077a140: f6 0f 84 ca 00 00 00 6a 00 6a 00 6a 00 6a 00 68
0077a150: 0c f0 00 01 6a 2c e8 a5 a3 d6 ff 83 c4 18 85 c0
0077a160: 0f 84 ab 00 00 00 8b c8 e8 d3 07 d9 ff 8b f8 85
0077a170: ff 0f 84 9a 00 00 00 8b 07 8b 10 8b cf ff d2 8b
0077a180: 07 8b 10 53 55 8b cf ff d2 8b 06 8b 90 c8 00 00
0077a190: 00 6a 30 57 8b ce ff d2 8b d8 8b 06 8b 90 18 01
0077a1a0: 00 00 8b ce ff d2 8b 4c 24 38 6a 00 51 6a ff 89
0077a1b0: 54 24 24 89 44 24 20 8b 2e 52 8b 95 20 01 00 00
0077a1c0: 50 8b ce ff d2 8b 4c 24 34 8b 54 24 30 57 8d 44
0077a1d0: 24 18 50 8b 44 24 34 51 8b 4c 24 34 52 8b 54 24
0077a1e0: 34 50 8b 44 24 34 51 8b 4c 24 28 52 50 e8 3e 24
0077a1f0: 26 00 8b 16 8b 82 1c 01 00 00 8b ce ff d0 8b 17
0077a200: 8b 42 04 8b cf ff d0 5d 8b c3 5b 5f 5e 83 c4 0c
0077a210: c3 5f 33 c0 5e 83 c4 0c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077a120 <.text+0x379120>:
  77a120:	83 ec 0c                                        	sub    esp,0xc
  77a123:	56                                              	push   esi
  77a124:	57                                              	push   edi
  77a125:	e8 f6 5f 26 00                                  	call   0x9e0120
  77a12a:	8b f8                                           	mov    edi,eax
  77a12c:	89 7c 24 08                                     	mov    DWORD PTR [esp+0x8],edi
  77a130:	e8 5b f2 fe ff                                  	call   0x769390
  77a135:	85 ff                                           	test   edi,edi
  77a137:	8b f0                                           	mov    esi,eax
  77a139:	0f 84 d2 00 00 00                               	je     0x77a211
  77a13f:	85 f6                                           	test   esi,esi
  77a141:	0f 84 ca 00 00 00                               	je     0x77a211
  77a147:	6a 00                                           	push   0x0
  77a149:	6a 00                                           	push   0x0
  77a14b:	6a 00                                           	push   0x0
  77a14d:	6a 00                                           	push   0x0
  77a14f:	68 0c f0 00 01                                  	push   0x100f00c
  77a154:	6a 2c                                           	push   0x2c
  77a156:	e8 a5 a3 d6 ff                                  	call   0x4e4500
  77a15b:	83 c4 18                                        	add    esp,0x18
  77a15e:	85 c0                                           	test   eax,eax
  77a160:	0f 84 ab 00 00 00                               	je     0x77a211
  77a166:	8b c8                                           	mov    ecx,eax
  77a168:	e8 d3 07 d9 ff                                  	call   0x50a940
  77a16d:	8b f8                                           	mov    edi,eax
  77a16f:	85 ff                                           	test   edi,edi
  77a171:	0f 84 9a 00 00 00                               	je     0x77a211
  77a177:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77a179:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a17b:	8b cf                                           	mov    ecx,edi
  77a17d:	ff d2                                           	call   edx
  77a17f:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77a181:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a183:	53                                              	push   ebx
  77a184:	55                                              	push   ebp
  77a185:	8b cf                                           	mov    ecx,edi
  77a187:	ff d2                                           	call   edx
  77a189:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77a18b:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
  77a191:	6a 30                                           	push   0x30
  77a193:	57                                              	push   edi
  77a194:	8b ce                                           	mov    ecx,esi
  77a196:	ff d2                                           	call   edx
  77a198:	8b d8                                           	mov    ebx,eax
  77a19a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77a19c:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  77a1a2:	8b ce                                           	mov    ecx,esi
  77a1a4:	ff d2                                           	call   edx
  77a1a6:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77a1aa:	6a 00                                           	push   0x0
  77a1ac:	51                                              	push   ecx
  77a1ad:	6a ff                                           	push   0xffffffff
  77a1af:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  77a1b3:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  77a1b7:	8b 2e                                           	mov    ebp,DWORD PTR [esi]
  77a1b9:	52                                              	push   edx
  77a1ba:	8b 95 20 01 00 00                               	mov    edx,DWORD PTR [ebp+0x120]
  77a1c0:	50                                              	push   eax
  77a1c1:	8b ce                                           	mov    ecx,esi
  77a1c3:	ff d2                                           	call   edx
  77a1c5:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  77a1c9:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  77a1cd:	57                                              	push   edi
  77a1ce:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  77a1d2:	50                                              	push   eax
  77a1d3:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  77a1d7:	51                                              	push   ecx
  77a1d8:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  77a1dc:	52                                              	push   edx
  77a1dd:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  77a1e1:	50                                              	push   eax
  77a1e2:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  77a1e6:	51                                              	push   ecx
  77a1e7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  77a1eb:	52                                              	push   edx
  77a1ec:	50                                              	push   eax
  77a1ed:	e8 3e 24 26 00                                  	call   0x9dc630
  77a1f2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77a1f4:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
  77a1fa:	8b ce                                           	mov    ecx,esi
  77a1fc:	ff d0                                           	call   eax
  77a1fe:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77a200:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77a203:	8b cf                                           	mov    ecx,edi
  77a205:	ff d0                                           	call   eax
  77a207:	5d                                              	pop    ebp
  77a208:	8b c3                                           	mov    eax,ebx
  77a20a:	5b                                              	pop    ebx
  77a20b:	5f                                              	pop    edi
  77a20c:	5e                                              	pop    esi
  77a20d:	83 c4 0c                                        	add    esp,0xc
  77a210:	c3                                              	ret
  77a211:	5f                                              	pop    edi
  77a212:	33 c0                                           	xor    eax,eax
  77a214:	5e                                              	pop    esi
  77a215:	83 c4 0c                                        	add    esp,0xc
  77a218:	c3                                              	ret
  77a219:	cc                                              	int3
  77a21a:	cc                                              	int3
  77a21b:	cc                                              	int3
  77a21c:	cc                                              	int3
  77a21d:	cc                                              	int3
  77a21e:	cc                                              	int3
  77a21f:	cc                                              	int3
