# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00748980 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetBlazeServerURL)
Paired Ghidra pseudocode: 00748980_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetBlazeServerURL.c
Window: [0x00748980, 0x00748a80) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00748a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00748980: 83 ec 44 57 e8 07 0a 02 00 8b f8 a1 68 50 1d 01
00748990: 85 c0 74 05 8d 48 f8 eb 02 33 c9 33 c0 85 ff 89
007489a0: 44 24 04 0f 84 c4 00 00 00 85 c9 0f 84 bc 00 00
007489b0: 00 89 44 24 08 89 44 24 0c 89 44 24 10 8b 81 b8
007489c0: 00 00 00 50 8d 4c 24 0c c7 44 24 18 9c 40 00 01
007489d0: e8 fb d0 cb ff 8b 44 24 08 8b 4c 24 0c 3b c1 74
007489e0: 70 2b c8 74 6c 8d 4c 24 08 51 8d 54 24 1c 52 e8
007489f0: 9c b2 da ff 83 c4 08 50 8d 4c 24 2c e8 9f 28 e6
00748a00: ff 8b 4c 24 20 8b 44 24 18 2b c8 83 e1 fe 83 f9
00748a10: 02 7e 0d 85 c0 74 09 50 e8 c3 ba d9 ff 83 c4 04
00748a20: 8b 17 8b 52 50 8d 44 24 04 50 8d 4c 24 2c 51 8b
00748a30: cf ff d2 f6 44 24 30 04 c7 44 24 28 f4 a6 fb 00
00748a40: 74 0b 6a 00 8d 4c 24 2c e8 13 cd da ff 8b 44 24
00748a50: 08 8b 4c 24 10 2b c8 83 f9 01 7e 0d 85 c0 74 09
00748a60: 50 e8 7a ba d9 ff 83 c4 04 8b 44 24 04 5f 83 c4
00748a70: 44 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00748980 <.text+0x347980>:
  748980:	83 ec 44                                        	sub    esp,0x44
  748983:	57                                              	push   edi
  748984:	e8 07 0a 02 00                                  	call   0x769390
  748989:	8b f8                                           	mov    edi,eax
  74898b:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  748990:	85 c0                                           	test   eax,eax
  748992:	74 05                                           	je     0x748999
  748994:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  748997:	eb 02                                           	jmp    0x74899b
  748999:	33 c9                                           	xor    ecx,ecx
  74899b:	33 c0                                           	xor    eax,eax
  74899d:	85 ff                                           	test   edi,edi
  74899f:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  7489a3:	0f 84 c4 00 00 00                               	je     0x748a6d
  7489a9:	85 c9                                           	test   ecx,ecx
  7489ab:	0f 84 bc 00 00 00                               	je     0x748a6d
  7489b1:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  7489b5:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  7489b9:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  7489bd:	8b 81 b8 00 00 00                               	mov    eax,DWORD PTR [ecx+0xb8]
  7489c3:	50                                              	push   eax
  7489c4:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  7489c8:	c7 44 24 18 9c 40 00 01                         	mov    DWORD PTR [esp+0x18],0x100409c
  7489d0:	e8 fb d0 cb ff                                  	call   0x405ad0
  7489d5:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7489d9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7489dd:	3b c1                                           	cmp    eax,ecx
  7489df:	74 70                                           	je     0x748a51
  7489e1:	2b c8                                           	sub    ecx,eax
  7489e3:	74 6c                                           	je     0x748a51
  7489e5:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7489e9:	51                                              	push   ecx
  7489ea:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  7489ee:	52                                              	push   edx
  7489ef:	e8 9c b2 da ff                                  	call   0x4f3c90
  7489f4:	83 c4 08                                        	add    esp,0x8
  7489f7:	50                                              	push   eax
  7489f8:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  7489fc:	e8 9f 28 e6 ff                                  	call   0x5ab2a0
  748a01:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  748a05:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  748a09:	2b c8                                           	sub    ecx,eax
  748a0b:	83 e1 fe                                        	and    ecx,0xfffffffe
  748a0e:	83 f9 02                                        	cmp    ecx,0x2
  748a11:	7e 0d                                           	jle    0x748a20
  748a13:	85 c0                                           	test   eax,eax
  748a15:	74 09                                           	je     0x748a20
  748a17:	50                                              	push   eax
  748a18:	e8 c3 ba d9 ff                                  	call   0x4e44e0
  748a1d:	83 c4 04                                        	add    esp,0x4
  748a20:	8b 17                                           	mov    edx,DWORD PTR [edi]
  748a22:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  748a25:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  748a29:	50                                              	push   eax
  748a2a:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  748a2e:	51                                              	push   ecx
  748a2f:	8b cf                                           	mov    ecx,edi
  748a31:	ff d2                                           	call   edx
  748a33:	f6 44 24 30 04                                  	test   BYTE PTR [esp+0x30],0x4
  748a38:	c7 44 24 28 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x28],0xfba6f4
  748a40:	74 0b                                           	je     0x748a4d
  748a42:	6a 00                                           	push   0x0
  748a44:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  748a48:	e8 13 cd da ff                                  	call   0x4f5760
  748a4d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  748a51:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  748a55:	2b c8                                           	sub    ecx,eax
  748a57:	83 f9 01                                        	cmp    ecx,0x1
  748a5a:	7e 0d                                           	jle    0x748a69
  748a5c:	85 c0                                           	test   eax,eax
  748a5e:	74 09                                           	je     0x748a69
  748a60:	50                                              	push   eax
  748a61:	e8 7a ba d9 ff                                  	call   0x4e44e0
  748a66:	83 c4 04                                        	add    esp,0x4
  748a69:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  748a6d:	5f                                              	pop    edi
  748a6e:	83 c4 44                                        	add    esp,0x44
  748a71:	c3                                              	ret
  748a72:	cc                                              	int3
  748a73:	cc                                              	int3
  748a74:	cc                                              	int3
  748a75:	cc                                              	int3
  748a76:	cc                                              	int3
  748a77:	cc                                              	int3
  748a78:	cc                                              	int3
  748a79:	cc                                              	int3
  748a7a:	cc                                              	int3
  748a7b:	cc                                              	int3
  748a7c:	cc                                              	int3
  748a7d:	cc                                              	int3
  748a7e:	cc                                              	int3
  748a7f:	cc                                              	int3
