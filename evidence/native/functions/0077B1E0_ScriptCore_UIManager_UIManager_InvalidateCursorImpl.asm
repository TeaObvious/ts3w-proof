# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b1e0 (ScriptCore.UIManager::UIManager_InvalidateCursorImpl)
Paired Ghidra pseudocode: 0077B1E0_ScriptCore_UIManager_UIManager_InvalidateCursorImpl.c
Window: [0x0077b1e0, 0x0077b240) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b1e0: e8 ab e1 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077b1f0: ff 81 fa 00 00 00 30 75 3a 8b 10 51 8b c8 8b 82
0077b200: cc 00 00 00 ff d0 85 c0 74 29 8b 10 56 8b c8 8b
0077b210: 42 0c 68 18 82 ee ee ff d0 8b f0 85 f6 74 13 57
0077b220: 8b 3e 8b 57 24 8b ce ff d2 50 8b 47 70 8b ce ff
0077b230: d0 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b1e0 <.text+0x37a1e0>:
  77b1e0:	e8 ab e1 fe ff                                  	call   0x769390
  77b1e5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77b1e9:	8b d1                                           	mov    edx,ecx
  77b1eb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b1f1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b1f7:	75 3a                                           	jne    0x77b233
  77b1f9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b1fb:	51                                              	push   ecx
  77b1fc:	8b c8                                           	mov    ecx,eax
  77b1fe:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b204:	ff d0                                           	call   eax
  77b206:	85 c0                                           	test   eax,eax
  77b208:	74 29                                           	je     0x77b233
  77b20a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b20c:	56                                              	push   esi
  77b20d:	8b c8                                           	mov    ecx,eax
  77b20f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b212:	68 18 82 ee ee                                  	push   0xeeee8218
  77b217:	ff d0                                           	call   eax
  77b219:	8b f0                                           	mov    esi,eax
  77b21b:	85 f6                                           	test   esi,esi
  77b21d:	74 13                                           	je     0x77b232
  77b21f:	57                                              	push   edi
  77b220:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  77b222:	8b 57 24                                        	mov    edx,DWORD PTR [edi+0x24]
  77b225:	8b ce                                           	mov    ecx,esi
  77b227:	ff d2                                           	call   edx
  77b229:	50                                              	push   eax
  77b22a:	8b 47 70                                        	mov    eax,DWORD PTR [edi+0x70]
  77b22d:	8b ce                                           	mov    ecx,esi
  77b22f:	ff d0                                           	call   eax
  77b231:	5f                                              	pop    edi
  77b232:	5e                                              	pop    esi
  77b233:	c3                                              	ret
  77b234:	cc                                              	int3
  77b235:	cc                                              	int3
  77b236:	cc                                              	int3
  77b237:	cc                                              	int3
  77b238:	cc                                              	int3
  77b239:	cc                                              	int3
  77b23a:	cc                                              	int3
  77b23b:	cc                                              	int3
  77b23c:	cc                                              	int3
  77b23d:	cc                                              	int3
  77b23e:	cc                                              	int3
  77b23f:	cc                                              	int3
