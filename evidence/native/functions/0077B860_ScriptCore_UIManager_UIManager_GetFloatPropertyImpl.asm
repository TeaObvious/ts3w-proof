# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b860 (ScriptCore.UIManager::UIManager_GetFloatPropertyImpl)
Paired Ghidra pseudocode: 0077B860_ScriptCore_UIManager_UIManager_GetFloatPropertyImpl.c
Window: [0x0077b860, 0x0077b950) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b860: 83 ec 50 56 e8 27 db fe ff 8b 4c 24 58 8b d1 81
0077b870: e2 00 00 00 ff 81 fa 00 00 00 30 0f 85 c1 00 00
0077b880: 00 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0
0077b890: 0f 84 ac 00 00 00 8b 10 8b c8 8b 42 0c 68 82 83
0077b8a0: c5 ee ff d0 8b f0 85 f6 0f 84 94 00 00 00 6a 00
0077b8b0: 6a 00 6a 00 6a ff 6a 00 8d 4c 24 44 c7 44 24 40
0077b8c0: a8 ee 00 01 e8 e7 d3 d6 ff 8b 16 8b 52 10 8d 44
0077b8d0: 24 1c 50 8b ce ff d2 8b 4c 24 5c 8d 44 24 2c 50
0077b8e0: 51 8d 54 24 0c 52 8d 4c 24 28 e8 b1 63 d9 ff 85
0077b8f0: c0 74 3e 8d 4c 24 2c 51 8d 54 24 08 52 8d 4c 24
0077b900: 18 51 8b c8 e8 97 61 d9 ff 84 c0 74 24 8b 54 24
0077b910: 14 d9 02 8d 4c 24 30 d9 5c 24 58 c7 44 24 2c a8
0077b920: ee 00 01 e8 78 d4 d6 ff d9 44 24 58 5e 83 c4 50
0077b930: c3 8d 4c 24 30 c7 44 24 2c a8 ee 00 01 e8 5e d4
0077b940: d6 ff d9 ee 5e 83 c4 50 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b860 <.text+0x37a860>:
  77b860:	83 ec 50                                        	sub    esp,0x50
  77b863:	56                                              	push   esi
  77b864:	e8 27 db fe ff                                  	call   0x769390
  77b869:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  77b86d:	8b d1                                           	mov    edx,ecx
  77b86f:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b875:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b87b:	0f 85 c1 00 00 00                               	jne    0x77b942
  77b881:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b883:	51                                              	push   ecx
  77b884:	8b c8                                           	mov    ecx,eax
  77b886:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b88c:	ff d0                                           	call   eax
  77b88e:	85 c0                                           	test   eax,eax
  77b890:	0f 84 ac 00 00 00                               	je     0x77b942
  77b896:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b898:	8b c8                                           	mov    ecx,eax
  77b89a:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b89d:	68 82 83 c5 ee                                  	push   0xeec58382
  77b8a2:	ff d0                                           	call   eax
  77b8a4:	8b f0                                           	mov    esi,eax
  77b8a6:	85 f6                                           	test   esi,esi
  77b8a8:	0f 84 94 00 00 00                               	je     0x77b942
  77b8ae:	6a 00                                           	push   0x0
  77b8b0:	6a 00                                           	push   0x0
  77b8b2:	6a 00                                           	push   0x0
  77b8b4:	6a ff                                           	push   0xffffffff
  77b8b6:	6a 00                                           	push   0x0
  77b8b8:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  77b8bc:	c7 44 24 40 a8 ee 00 01                         	mov    DWORD PTR [esp+0x40],0x100eea8
  77b8c4:	e8 e7 d3 d6 ff                                  	call   0x4e8cb0
  77b8c9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77b8cb:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  77b8ce:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  77b8d2:	50                                              	push   eax
  77b8d3:	8b ce                                           	mov    ecx,esi
  77b8d5:	ff d2                                           	call   edx
  77b8d7:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  77b8db:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  77b8df:	50                                              	push   eax
  77b8e0:	51                                              	push   ecx
  77b8e1:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  77b8e5:	52                                              	push   edx
  77b8e6:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  77b8ea:	e8 b1 63 d9 ff                                  	call   0x511ca0
  77b8ef:	85 c0                                           	test   eax,eax
  77b8f1:	74 3e                                           	je     0x77b931
  77b8f3:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  77b8f7:	51                                              	push   ecx
  77b8f8:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  77b8fc:	52                                              	push   edx
  77b8fd:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77b901:	51                                              	push   ecx
  77b902:	8b c8                                           	mov    ecx,eax
  77b904:	e8 97 61 d9 ff                                  	call   0x511aa0
  77b909:	84 c0                                           	test   al,al
  77b90b:	74 24                                           	je     0x77b931
  77b90d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  77b911:	d9 02                                           	fld    DWORD PTR [edx]
  77b913:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77b917:	d9 5c 24 58                                     	fstp   DWORD PTR [esp+0x58]
  77b91b:	c7 44 24 2c a8 ee 00 01                         	mov    DWORD PTR [esp+0x2c],0x100eea8
  77b923:	e8 78 d4 d6 ff                                  	call   0x4e8da0
  77b928:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
  77b92c:	5e                                              	pop    esi
  77b92d:	83 c4 50                                        	add    esp,0x50
  77b930:	c3                                              	ret
  77b931:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77b935:	c7 44 24 2c a8 ee 00 01                         	mov    DWORD PTR [esp+0x2c],0x100eea8
  77b93d:	e8 5e d4 d6 ff                                  	call   0x4e8da0
  77b942:	d9 ee                                           	fldz
  77b944:	5e                                              	pop    esi
  77b945:	83 c4 50                                        	add    esp,0x50
  77b948:	c3                                              	ret
  77b949:	cc                                              	int3
  77b94a:	cc                                              	int3
  77b94b:	cc                                              	int3
  77b94c:	cc                                              	int3
  77b94d:	cc                                              	int3
  77b94e:	cc                                              	int3
  77b94f:	cc                                              	int3
