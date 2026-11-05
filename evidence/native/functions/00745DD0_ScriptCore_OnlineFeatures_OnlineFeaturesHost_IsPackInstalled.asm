# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745dd0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsPackInstalled)
Paired Ghidra pseudocode: 00745DD0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_IsPackInstalled.c
Window: [0x00745dd0, 0x00745e30) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745e30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745dd0: 83 ec 10 56 e8 87 d0 23 00 8b f0 e8 b0 35 02 00
00745de0: 85 f6 74 3b 85 c0 74 37 8b 4c 24 18 8b 10 8b 52
00745df0: 58 51 8b c8 ff d2 6a 10 50 8d 4c 24 0c e8 9e c2
00745e00: db ff 6a 00 83 ec 10 8d 44 24 18 8b cc 50 e8 7d
00745e10: ae db ff 8b ce e8 a6 45 24 00 5e 83 c4 10 c3 32
00745e20: c0 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745dd0 <.text+0x344dd0>:
  745dd0:	83 ec 10                                        	sub    esp,0x10
  745dd3:	56                                              	push   esi
  745dd4:	e8 87 d0 23 00                                  	call   0x982e60
  745dd9:	8b f0                                           	mov    esi,eax
  745ddb:	e8 b0 35 02 00                                  	call   0x769390
  745de0:	85 f6                                           	test   esi,esi
  745de2:	74 3b                                           	je     0x745e1f
  745de4:	85 c0                                           	test   eax,eax
  745de6:	74 37                                           	je     0x745e1f
  745de8:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  745dec:	8b 10                                           	mov    edx,DWORD PTR [eax]
  745dee:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  745df1:	51                                              	push   ecx
  745df2:	8b c8                                           	mov    ecx,eax
  745df4:	ff d2                                           	call   edx
  745df6:	6a 10                                           	push   0x10
  745df8:	50                                              	push   eax
  745df9:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  745dfd:	e8 9e c2 db ff                                  	call   0x5020a0
  745e02:	6a 00                                           	push   0x0
  745e04:	83 ec 10                                        	sub    esp,0x10
  745e07:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  745e0b:	8b cc                                           	mov    ecx,esp
  745e0d:	50                                              	push   eax
  745e0e:	e8 7d ae db ff                                  	call   0x500c90
  745e13:	8b ce                                           	mov    ecx,esi
  745e15:	e8 a6 45 24 00                                  	call   0x98a3c0
  745e1a:	5e                                              	pop    esi
  745e1b:	83 c4 10                                        	add    esp,0x10
  745e1e:	c3                                              	ret
  745e1f:	32 c0                                           	xor    al,al
  745e21:	5e                                              	pop    esi
  745e22:	83 c4 10                                        	add    esp,0x10
  745e25:	c3                                              	ret
  745e26:	cc                                              	int3
  745e27:	cc                                              	int3
  745e28:	cc                                              	int3
  745e29:	cc                                              	int3
  745e2a:	cc                                              	int3
  745e2b:	cc                                              	int3
  745e2c:	cc                                              	int3
  745e2d:	cc                                              	int3
  745e2e:	cc                                              	int3
  745e2f:	cc                                              	int3
