# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b240 (ScriptCore.UIManager::UIManager_RegisterWindowCursorImpl)
Paired Ghidra pseudocode: 0077B240_ScriptCore_UIManager_UIManager_RegisterWindowCursorImpl.c
Window: [0x0077b240, 0x0077b2e0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b2e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b240: 83 ec 08 56 e8 c7 74 07 00 8b f0 85 f6 0f 84 86
0077b250: 00 00 00 80 7c 24 1c 00 74 6a e8 31 e1 fe ff 8b
0077b260: 4c 24 14 8b d1 81 e2 00 00 00 ff 81 fa 00 00 00
0077b270: 30 75 66 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0
0077b280: 85 c0 74 55 8b 10 8b c8 8b 42 0c 68 18 82 ee ee
0077b290: ff d0 85 c0 74 43 8b 4c 24 18 f3 0f 2c 11 f3 0f
0077b2a0: 2c 49 04 6a 01 89 54 24 08 8d 54 24 08 52 50 8b
0077b2b0: 44 24 1c 89 4c 24 14 50 8b ce e8 41 79 07 00 5e
0077b2c0: 83 c4 08 c3 8b 54 24 10 6a 00 8d 4c 24 08 51 6a
0077b2d0: 00 52 8b ce e8 27 79 07 00 5e 83 c4 08 c3 cc cc

LINEAR DISASSEMBLY
0077b240 <.text+0x37a240>:
  77b240:	83 ec 08                                        	sub    esp,0x8
  77b243:	56                                              	push   esi
  77b244:	e8 c7 74 07 00                                  	call   0x7f2710
  77b249:	8b f0                                           	mov    esi,eax
  77b24b:	85 f6                                           	test   esi,esi
  77b24d:	0f 84 86 00 00 00                               	je     0x77b2d9
  77b253:	80 7c 24 1c 00                                  	cmp    BYTE PTR [esp+0x1c],0x0
  77b258:	74 6a                                           	je     0x77b2c4
  77b25a:	e8 31 e1 fe ff                                  	call   0x769390
  77b25f:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77b263:	8b d1                                           	mov    edx,ecx
  77b265:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b26b:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b271:	75 66                                           	jne    0x77b2d9
  77b273:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b275:	51                                              	push   ecx
  77b276:	8b c8                                           	mov    ecx,eax
  77b278:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b27e:	ff d0                                           	call   eax
  77b280:	85 c0                                           	test   eax,eax
  77b282:	74 55                                           	je     0x77b2d9
  77b284:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b286:	8b c8                                           	mov    ecx,eax
  77b288:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b28b:	68 18 82 ee ee                                  	push   0xeeee8218
  77b290:	ff d0                                           	call   eax
  77b292:	85 c0                                           	test   eax,eax
  77b294:	74 43                                           	je     0x77b2d9
  77b296:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  77b29a:	f3 0f 2c 11                                     	cvttss2si edx,DWORD PTR [ecx]
  77b29e:	f3 0f 2c 49 04                                  	cvttss2si ecx,DWORD PTR [ecx+0x4]
  77b2a3:	6a 01                                           	push   0x1
  77b2a5:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  77b2a9:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  77b2ad:	52                                              	push   edx
  77b2ae:	50                                              	push   eax
  77b2af:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  77b2b3:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  77b2b7:	50                                              	push   eax
  77b2b8:	8b ce                                           	mov    ecx,esi
  77b2ba:	e8 41 79 07 00                                  	call   0x7f2c00
  77b2bf:	5e                                              	pop    esi
  77b2c0:	83 c4 08                                        	add    esp,0x8
  77b2c3:	c3                                              	ret
  77b2c4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77b2c8:	6a 00                                           	push   0x0
  77b2ca:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  77b2ce:	51                                              	push   ecx
  77b2cf:	6a 00                                           	push   0x0
  77b2d1:	52                                              	push   edx
  77b2d2:	8b ce                                           	mov    ecx,esi
  77b2d4:	e8 27 79 07 00                                  	call   0x7f2c00
  77b2d9:	5e                                              	pop    esi
  77b2da:	83 c4 08                                        	add    esp,0x8
  77b2dd:	c3                                              	ret
  77b2de:	cc                                              	int3
  77b2df:	cc                                              	int3
