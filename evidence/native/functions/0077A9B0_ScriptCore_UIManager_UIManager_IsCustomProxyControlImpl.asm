# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a9b0 (ScriptCore.UIManager::UIManager_IsCustomProxyControlImpl)
Paired Ghidra pseudocode: 0077A9B0_ScriptCore_UIManager_UIManager_IsCustomProxyControlImpl.c
Window: [0x0077a9b0, 0x0077aa10) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077aa10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a9b0: 56 e8 da e9 fe ff 8b 4c 24 08 8b d1 81 e2 00 00
0077a9c0: 00 ff 81 fa 00 00 00 30 75 3b 8b 10 51 8b c8 8b
0077a9d0: 82 cc 00 00 00 ff d0 8b f0 85 f6 74 28 8b 16 8b
0077a9e0: 42 0c 68 18 82 ee ee 8b ce ff d0 85 c0 74 16 8b
0077a9f0: 16 8b 42 0c 68 68 b7 6b 05 8b ce ff d0 85 c0 74
0077aa00: 04 b0 01 5e c3 32 c0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077a9b0 <.text+0x3799b0>:
  77a9b0:	56                                              	push   esi
  77a9b1:	e8 da e9 fe ff                                  	call   0x769390
  77a9b6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77a9ba:	8b d1                                           	mov    edx,ecx
  77a9bc:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77a9c2:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77a9c8:	75 3b                                           	jne    0x77aa05
  77a9ca:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a9cc:	51                                              	push   ecx
  77a9cd:	8b c8                                           	mov    ecx,eax
  77a9cf:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77a9d5:	ff d0                                           	call   eax
  77a9d7:	8b f0                                           	mov    esi,eax
  77a9d9:	85 f6                                           	test   esi,esi
  77a9db:	74 28                                           	je     0x77aa05
  77a9dd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77a9df:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77a9e2:	68 18 82 ee ee                                  	push   0xeeee8218
  77a9e7:	8b ce                                           	mov    ecx,esi
  77a9e9:	ff d0                                           	call   eax
  77a9eb:	85 c0                                           	test   eax,eax
  77a9ed:	74 16                                           	je     0x77aa05
  77a9ef:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77a9f1:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77a9f4:	68 68 b7 6b 05                                  	push   0x56bb768
  77a9f9:	8b ce                                           	mov    ecx,esi
  77a9fb:	ff d0                                           	call   eax
  77a9fd:	85 c0                                           	test   eax,eax
  77a9ff:	74 04                                           	je     0x77aa05
  77aa01:	b0 01                                           	mov    al,0x1
  77aa03:	5e                                              	pop    esi
  77aa04:	c3                                              	ret
  77aa05:	32 c0                                           	xor    al,al
  77aa07:	5e                                              	pop    esi
  77aa08:	c3                                              	ret
  77aa09:	cc                                              	int3
  77aa0a:	cc                                              	int3
  77aa0b:	cc                                              	int3
  77aa0c:	cc                                              	int3
  77aa0d:	cc                                              	int3
  77aa0e:	cc                                              	int3
  77aa0f:	cc                                              	int3
