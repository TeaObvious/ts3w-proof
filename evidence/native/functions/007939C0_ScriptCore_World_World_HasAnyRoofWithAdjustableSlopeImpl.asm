# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007939c0 (ScriptCore.World::World_HasAnyRoofWithAdjustableSlopeImpl)
Paired Ghidra pseudocode: 007939C0_ScriptCore_World_World_HasAnyRoofWithAdjustableSlopeImpl.c
Window: [0x007939c0, 0x00793aa0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00793aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007939c0: 8b 0d c4 db 1e 01 81 ec 14 01 00 00 85 c9 53 56
007939d0: 57 0f 84 98 00 00 00 8b 84 24 28 01 00 00 8b 94
007939e0: 24 24 01 00 00 6a 00 50 52 e8 22 ee 4c 00 85 c0
007939f0: 74 7d 8b 98 ac 02 00 00 85 db 74 73 8d 44 24 20
00793a00: 8b c8 89 4c 24 10 8b d0 8d 4c 24 0c 89 44 24 1c
00793a10: 8d 84 24 20 01 00 00 51 8b cb c7 44 24 1c c8 aa
00793a20: f9 00 89 54 24 10 89 44 24 18 e8 a1 43 40 00 8b
00793a30: 74 24 10 8b 44 24 0c 2b f0 c1 fe 02 33 ff 85 f6
00793a40: 7e 1a 8b 04 b8 50 8b cb e8 c3 24 40 00 84 c0 8b
00793a50: 44 24 0c 75 26 83 c7 01 3b fe 7c e6 85 c0 74 0f
00793a60: 3b 44 24 1c 74 09 50 e8 74 0a d5 ff 83 c4 04 5f
00793a70: 5e 32 c0 5b 81 c4 14 01 00 00 c3 85 c0 74 0f 3b
00793a80: 44 24 1c 74 09 50 e8 55 0a d5 ff 83 c4 04 5f 5e
00793a90: b0 01 5b 81 c4 14 01 00 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007939c0 <.text+0x3929c0>:
  7939c0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7939c6:	81 ec 14 01 00 00                               	sub    esp,0x114
  7939cc:	85 c9                                           	test   ecx,ecx
  7939ce:	53                                              	push   ebx
  7939cf:	56                                              	push   esi
  7939d0:	57                                              	push   edi
  7939d1:	0f 84 98 00 00 00                               	je     0x793a6f
  7939d7:	8b 84 24 28 01 00 00                            	mov    eax,DWORD PTR [esp+0x128]
  7939de:	8b 94 24 24 01 00 00                            	mov    edx,DWORD PTR [esp+0x124]
  7939e5:	6a 00                                           	push   0x0
  7939e7:	50                                              	push   eax
  7939e8:	52                                              	push   edx
  7939e9:	e8 22 ee 4c 00                                  	call   0xc62810
  7939ee:	85 c0                                           	test   eax,eax
  7939f0:	74 7d                                           	je     0x793a6f
  7939f2:	8b 98 ac 02 00 00                               	mov    ebx,DWORD PTR [eax+0x2ac]
  7939f8:	85 db                                           	test   ebx,ebx
  7939fa:	74 73                                           	je     0x793a6f
  7939fc:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  793a00:	8b c8                                           	mov    ecx,eax
  793a02:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  793a06:	8b d0                                           	mov    edx,eax
  793a08:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  793a0c:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  793a10:	8d 84 24 20 01 00 00                            	lea    eax,[esp+0x120]
  793a17:	51                                              	push   ecx
  793a18:	8b cb                                           	mov    ecx,ebx
  793a1a:	c7 44 24 1c c8 aa f9 00                         	mov    DWORD PTR [esp+0x1c],0xf9aac8
  793a22:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  793a26:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  793a2a:	e8 a1 43 40 00                                  	call   0xb97dd0
  793a2f:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  793a33:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  793a37:	2b f0                                           	sub    esi,eax
  793a39:	c1 fe 02                                        	sar    esi,0x2
  793a3c:	33 ff                                           	xor    edi,edi
  793a3e:	85 f6                                           	test   esi,esi
  793a40:	7e 1a                                           	jle    0x793a5c
  793a42:	8b 04 b8                                        	mov    eax,DWORD PTR [eax+edi*4]
  793a45:	50                                              	push   eax
  793a46:	8b cb                                           	mov    ecx,ebx
  793a48:	e8 c3 24 40 00                                  	call   0xb95f10
  793a4d:	84 c0                                           	test   al,al
  793a4f:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  793a53:	75 26                                           	jne    0x793a7b
  793a55:	83 c7 01                                        	add    edi,0x1
  793a58:	3b fe                                           	cmp    edi,esi
  793a5a:	7c e6                                           	jl     0x793a42
  793a5c:	85 c0                                           	test   eax,eax
  793a5e:	74 0f                                           	je     0x793a6f
  793a60:	3b 44 24 1c                                     	cmp    eax,DWORD PTR [esp+0x1c]
  793a64:	74 09                                           	je     0x793a6f
  793a66:	50                                              	push   eax
  793a67:	e8 74 0a d5 ff                                  	call   0x4e44e0
  793a6c:	83 c4 04                                        	add    esp,0x4
  793a6f:	5f                                              	pop    edi
  793a70:	5e                                              	pop    esi
  793a71:	32 c0                                           	xor    al,al
  793a73:	5b                                              	pop    ebx
  793a74:	81 c4 14 01 00 00                               	add    esp,0x114
  793a7a:	c3                                              	ret
  793a7b:	85 c0                                           	test   eax,eax
  793a7d:	74 0f                                           	je     0x793a8e
  793a7f:	3b 44 24 1c                                     	cmp    eax,DWORD PTR [esp+0x1c]
  793a83:	74 09                                           	je     0x793a8e
  793a85:	50                                              	push   eax
  793a86:	e8 55 0a d5 ff                                  	call   0x4e44e0
  793a8b:	83 c4 04                                        	add    esp,0x4
  793a8e:	5f                                              	pop    edi
  793a8f:	5e                                              	pop    esi
  793a90:	b0 01                                           	mov    al,0x1
  793a92:	5b                                              	pop    ebx
  793a93:	81 c4 14 01 00 00                               	add    esp,0x114
  793a99:	c3                                              	ret
  793a9a:	cc                                              	int3
  793a9b:	cc                                              	int3
  793a9c:	cc                                              	int3
  793a9d:	cc                                              	int3
  793a9e:	cc                                              	int3
  793a9f:	cc                                              	int3
