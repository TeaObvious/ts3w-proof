# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b090 (ScriptCore.UIManager::UIManager_WindowScreenTransformImpl)
Paired Ghidra pseudocode: 0077B090_ScriptCore_UIManager_UIManager_WindowScreenTransformImpl.c
Window: [0x0077b090, 0x0077b130) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b090: 83 ec 10 e8 f8 e2 fe ff 8b 4c 24 14 8b d1 81 e2
0077b0a0: 00 00 00 ff 81 fa 00 00 00 30 75 7d 8b 10 51 8b
0077b0b0: c8 8b 82 cc 00 00 00 ff d0 85 c0 74 6c 8b 10 8b
0077b0c0: c8 8b 42 0c 68 18 82 ee ee ff d0 8b c8 85 c9 74
0077b0d0: 58 8b 54 24 18 d9 02 83 ec 08 80 7c 24 28 00 8b
0077b0e0: c4 d9 18 d9 42 04 d9 58 04 74 21 8b 11 8b 92 c4
0077b0f0: 00 00 00 8d 44 24 08 50 ff d2 d9 00 8b 4c 24 1c
0077b100: d9 19 d9 40 04 d9 59 04 83 c4 10 c3 8b 01 8b 80
0077b110: c8 00 00 00 8d 54 24 10 52 ff d0 d9 00 8b 4c 24
0077b120: 1c d9 19 d9 40 04 d9 59 04 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
0077b090 <.text+0x37a090>:
  77b090:	83 ec 10                                        	sub    esp,0x10
  77b093:	e8 f8 e2 fe ff                                  	call   0x769390
  77b098:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77b09c:	8b d1                                           	mov    edx,ecx
  77b09e:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b0a4:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b0aa:	75 7d                                           	jne    0x77b129
  77b0ac:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b0ae:	51                                              	push   ecx
  77b0af:	8b c8                                           	mov    ecx,eax
  77b0b1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b0b7:	ff d0                                           	call   eax
  77b0b9:	85 c0                                           	test   eax,eax
  77b0bb:	74 6c                                           	je     0x77b129
  77b0bd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b0bf:	8b c8                                           	mov    ecx,eax
  77b0c1:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b0c4:	68 18 82 ee ee                                  	push   0xeeee8218
  77b0c9:	ff d0                                           	call   eax
  77b0cb:	8b c8                                           	mov    ecx,eax
  77b0cd:	85 c9                                           	test   ecx,ecx
  77b0cf:	74 58                                           	je     0x77b129
  77b0d1:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  77b0d5:	d9 02                                           	fld    DWORD PTR [edx]
  77b0d7:	83 ec 08                                        	sub    esp,0x8
  77b0da:	80 7c 24 28 00                                  	cmp    BYTE PTR [esp+0x28],0x0
  77b0df:	8b c4                                           	mov    eax,esp
  77b0e1:	d9 18                                           	fstp   DWORD PTR [eax]
  77b0e3:	d9 42 04                                        	fld    DWORD PTR [edx+0x4]
  77b0e6:	d9 58 04                                        	fstp   DWORD PTR [eax+0x4]
  77b0e9:	74 21                                           	je     0x77b10c
  77b0eb:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  77b0ed:	8b 92 c4 00 00 00                               	mov    edx,DWORD PTR [edx+0xc4]
  77b0f3:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77b0f7:	50                                              	push   eax
  77b0f8:	ff d2                                           	call   edx
  77b0fa:	d9 00                                           	fld    DWORD PTR [eax]
  77b0fc:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77b100:	d9 19                                           	fstp   DWORD PTR [ecx]
  77b102:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
  77b105:	d9 59 04                                        	fstp   DWORD PTR [ecx+0x4]
  77b108:	83 c4 10                                        	add    esp,0x10
  77b10b:	c3                                              	ret
  77b10c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  77b10e:	8b 80 c8 00 00 00                               	mov    eax,DWORD PTR [eax+0xc8]
  77b114:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  77b118:	52                                              	push   edx
  77b119:	ff d0                                           	call   eax
  77b11b:	d9 00                                           	fld    DWORD PTR [eax]
  77b11d:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77b121:	d9 19                                           	fstp   DWORD PTR [ecx]
  77b123:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
  77b126:	d9 59 04                                        	fstp   DWORD PTR [ecx+0x4]
  77b129:	83 c4 10                                        	add    esp,0x10
  77b12c:	c3                                              	ret
  77b12d:	cc                                              	int3
  77b12e:	cc                                              	int3
  77b12f:	cc                                              	int3
