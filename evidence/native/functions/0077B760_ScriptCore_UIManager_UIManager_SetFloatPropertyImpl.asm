# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b760 (ScriptCore.UIManager::UIManager_SetFloatPropertyImpl)
Paired Ghidra pseudocode: 0077B760_ScriptCore_UIManager_UIManager_SetFloatPropertyImpl.c
Window: [0x0077b760, 0x0077b860) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b760: 83 ec 50 e8 28 dc fe ff 8b 4c 24 54 8b d1 81 e2
0077b770: 00 00 00 ff 81 fa 00 00 00 30 0f 85 d1 00 00 00
0077b780: 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 0f
0077b790: 84 bc 00 00 00 8b 10 56 8b c8 8b 42 0c 68 82 83
0077b7a0: c5 ee ff d0 8b f0 85 f6 0f 84 a2 00 00 00 6a 00
0077b7b0: 6a 00 6a 00 6a ff 6a 00 8d 4c 24 44 c7 44 24 40
0077b7c0: a8 ee 00 01 e8 e7 d4 d6 ff 8b 16 8b 52 10 8d 44
0077b7d0: 24 1c 50 8b ce ff d2 8b 4c 24 5c 8d 44 24 2c 50
0077b7e0: 51 8d 54 24 18 52 8d 4c 24 28 e8 b1 64 d9 ff 85
0077b7f0: c0 74 4c 0f b7 48 0c 81 e1 ff 0f 00 00 8b 14 8d
0077b800: f8 f4 14 01 89 54 24 04 8d 4c 24 60 89 4c 24 08
0077b810: 8d 54 24 2c 52 8d 4c 24 08 51 8d 54 24 18 52 8b
0077b820: c8 c7 44 24 18 01 00 00 00 e8 12 65 d9 ff 8b 44
0077b830: 24 20 8b 4c 24 1c 8b 51 1c 50 ff d2 83 c4 04 8d
0077b840: 4c 24 30 c7 44 24 2c a8 ee 00 01 e8 50 d5 d6 ff
0077b850: 5e 83 c4 50 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b760 <.text+0x37a760>:
  77b760:	83 ec 50                                        	sub    esp,0x50
  77b763:	e8 28 dc fe ff                                  	call   0x769390
  77b768:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  77b76c:	8b d1                                           	mov    edx,ecx
  77b76e:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b774:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b77a:	0f 85 d1 00 00 00                               	jne    0x77b851
  77b780:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b782:	51                                              	push   ecx
  77b783:	8b c8                                           	mov    ecx,eax
  77b785:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b78b:	ff d0                                           	call   eax
  77b78d:	85 c0                                           	test   eax,eax
  77b78f:	0f 84 bc 00 00 00                               	je     0x77b851
  77b795:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b797:	56                                              	push   esi
  77b798:	8b c8                                           	mov    ecx,eax
  77b79a:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b79d:	68 82 83 c5 ee                                  	push   0xeec58382
  77b7a2:	ff d0                                           	call   eax
  77b7a4:	8b f0                                           	mov    esi,eax
  77b7a6:	85 f6                                           	test   esi,esi
  77b7a8:	0f 84 a2 00 00 00                               	je     0x77b850
  77b7ae:	6a 00                                           	push   0x0
  77b7b0:	6a 00                                           	push   0x0
  77b7b2:	6a 00                                           	push   0x0
  77b7b4:	6a ff                                           	push   0xffffffff
  77b7b6:	6a 00                                           	push   0x0
  77b7b8:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  77b7bc:	c7 44 24 40 a8 ee 00 01                         	mov    DWORD PTR [esp+0x40],0x100eea8
  77b7c4:	e8 e7 d4 d6 ff                                  	call   0x4e8cb0
  77b7c9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77b7cb:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  77b7ce:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  77b7d2:	50                                              	push   eax
  77b7d3:	8b ce                                           	mov    ecx,esi
  77b7d5:	ff d2                                           	call   edx
  77b7d7:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  77b7db:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  77b7df:	50                                              	push   eax
  77b7e0:	51                                              	push   ecx
  77b7e1:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  77b7e5:	52                                              	push   edx
  77b7e6:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  77b7ea:	e8 b1 64 d9 ff                                  	call   0x511ca0
  77b7ef:	85 c0                                           	test   eax,eax
  77b7f1:	74 4c                                           	je     0x77b83f
  77b7f3:	0f b7 48 0c                                     	movzx  ecx,WORD PTR [eax+0xc]
  77b7f7:	81 e1 ff 0f 00 00                               	and    ecx,0xfff
  77b7fd:	8b 14 8d f8 f4 14 01                            	mov    edx,DWORD PTR [ecx*4+0x114f4f8]
  77b804:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  77b808:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  77b80c:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  77b810:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  77b814:	52                                              	push   edx
  77b815:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  77b819:	51                                              	push   ecx
  77b81a:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  77b81e:	52                                              	push   edx
  77b81f:	8b c8                                           	mov    ecx,eax
  77b821:	c7 44 24 18 01 00 00 00                         	mov    DWORD PTR [esp+0x18],0x1
  77b829:	e8 12 65 d9 ff                                  	call   0x511d40
  77b82e:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  77b832:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77b836:	8b 51 1c                                        	mov    edx,DWORD PTR [ecx+0x1c]
  77b839:	50                                              	push   eax
  77b83a:	ff d2                                           	call   edx
  77b83c:	83 c4 04                                        	add    esp,0x4
  77b83f:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77b843:	c7 44 24 2c a8 ee 00 01                         	mov    DWORD PTR [esp+0x2c],0x100eea8
  77b84b:	e8 50 d5 d6 ff                                  	call   0x4e8da0
  77b850:	5e                                              	pop    esi
  77b851:	83 c4 50                                        	add    esp,0x50
  77b854:	c3                                              	ret
  77b855:	cc                                              	int3
  77b856:	cc                                              	int3
  77b857:	cc                                              	int3
  77b858:	cc                                              	int3
  77b859:	cc                                              	int3
  77b85a:	cc                                              	int3
  77b85b:	cc                                              	int3
  77b85c:	cc                                              	int3
  77b85d:	cc                                              	int3
  77b85e:	cc                                              	int3
  77b85f:	cc                                              	int3
