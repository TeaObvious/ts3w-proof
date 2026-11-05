# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073fea0 (ScriptCore.CommandSystem::Command_GetCommandListImpl)
Paired Ghidra pseudocode: 0073FEA0_ScriptCore_CommandSystem_Command_GetCommandListImpl.c
Window: [0x0073fea0, 0x00740020) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073fea0: 83 ec 64 55 57 e8 e6 94 02 00 8b e8 e8 ef 9b e4
0073feb0: ff 8b c8 33 ff 33 c0 3b ef 89 44 24 08 0f 84 50
0073fec0: 01 00 00 3b cf 0f 84 48 01 00 00 53 b8 54 8e 1c
0073fed0: 01 56 89 44 24 24 89 44 24 28 8d 44 24 14 ba 70
0073fee0: 14 00 01 50 68 d0 fd 73 00 89 54 24 38 c7 44 24
0073fef0: 34 56 8e 1c 01 89 7c 24 1c 89 7c 24 20 89 7c 24
0073ff00: 24 89 54 24 28 e8 b6 9f e4 ff 8b 4c 24 18 8b 54
0073ff10: 24 14 68 00 ee 73 00 51 52 e8 42 fe ff ff 8b 44
0073ff20: 24 24 8b 74 24 20 83 c4 0c 3b f0 8b d8 74 18 90
0073ff30: 8b 46 04 8b 0e 50 51 8d 4c 24 2c e8 50 8c cc ff
0073ff40: 83 c6 10 3b f3 75 e9 6a 01 6a 10 8d 54 24 2c 52
0073ff50: 6a 09 be f4 a6 fb 00 6a 13 8d 4c 24 48 89 74 24
0073ff60: 48 66 89 7c 24 50 66 89 7c 24 52 e8 50 5a db ff
0073ff70: 8d 44 24 34 50 8d 4c 24 58 89 74 24 58 66 89 7c
0073ff80: 24 60 66 89 7c 24 62 e8 24 65 db ff b3 04 84 5c
0073ff90: 24 3c 89 74 24 34 74 0a 57 8d 4c 24 38 e8 be 57
0073ffa0: db ff 8b 55 00 8b 52 50 8d 44 24 10 50 8d 4c 24
0073ffb0: 58 51 8b cd ff d2 84 5c 24 5c 89 74 24 54 5e 5b
0073ffc0: 74 0a 57 8d 4c 24 50 e8 94 57 db ff 8b 44 24 10
0073ffd0: 8b 4c 24 0c 50 51 8d 4c 24 14 e8 51 ee ff ff 8b
0073ffe0: 44 24 0c 3b c7 74 09 50 e8 f3 44 da ff 83 c4 04
0073fff0: 8b 54 24 24 8b 44 24 1c 2b d0 83 e2 fe 83 fa 02
00740000: 7e 0d 3b c7 74 09 50 e8 d4 44 da ff 83 c4 04 8b
00740010: 44 24 08 5f 5d 83 c4 64 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073fea0 <.text+0x33eea0>:
  73fea0:	83 ec 64                                        	sub    esp,0x64
  73fea3:	55                                              	push   ebp
  73fea4:	57                                              	push   edi
  73fea5:	e8 e6 94 02 00                                  	call   0x769390
  73feaa:	8b e8                                           	mov    ebp,eax
  73feac:	e8 ef 9b e4 ff                                  	call   0x589aa0
  73feb1:	8b c8                                           	mov    ecx,eax
  73feb3:	33 ff                                           	xor    edi,edi
  73feb5:	33 c0                                           	xor    eax,eax
  73feb7:	3b ef                                           	cmp    ebp,edi
  73feb9:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  73febd:	0f 84 50 01 00 00                               	je     0x740013
  73fec3:	3b cf                                           	cmp    ecx,edi
  73fec5:	0f 84 48 01 00 00                               	je     0x740013
  73fecb:	53                                              	push   ebx
  73fecc:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  73fed1:	56                                              	push   esi
  73fed2:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  73fed6:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  73feda:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  73fede:	ba 70 14 00 01                                  	mov    edx,0x1001470
  73fee3:	50                                              	push   eax
  73fee4:	68 d0 fd 73 00                                  	push   0x73fdd0
  73fee9:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
  73feed:	c7 44 24 34 56 8e 1c 01                         	mov    DWORD PTR [esp+0x34],0x11c8e56
  73fef5:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  73fef9:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  73fefd:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  73ff01:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  73ff05:	e8 b6 9f e4 ff                                  	call   0x589ec0
  73ff0a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  73ff0e:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  73ff12:	68 00 ee 73 00                                  	push   0x73ee00
  73ff17:	51                                              	push   ecx
  73ff18:	52                                              	push   edx
  73ff19:	e8 42 fe ff ff                                  	call   0x73fd60
  73ff1e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  73ff22:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
  73ff26:	83 c4 0c                                        	add    esp,0xc
  73ff29:	3b f0                                           	cmp    esi,eax
  73ff2b:	8b d8                                           	mov    ebx,eax
  73ff2d:	74 18                                           	je     0x73ff47
  73ff2f:	90                                              	nop
  73ff30:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  73ff33:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  73ff35:	50                                              	push   eax
  73ff36:	51                                              	push   ecx
  73ff37:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  73ff3b:	e8 50 8c cc ff                                  	call   0x408b90
  73ff40:	83 c6 10                                        	add    esi,0x10
  73ff43:	3b f3                                           	cmp    esi,ebx
  73ff45:	75 e9                                           	jne    0x73ff30
  73ff47:	6a 01                                           	push   0x1
  73ff49:	6a 10                                           	push   0x10
  73ff4b:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  73ff4f:	52                                              	push   edx
  73ff50:	6a 09                                           	push   0x9
  73ff52:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  73ff57:	6a 13                                           	push   0x13
  73ff59:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  73ff5d:	89 74 24 48                                     	mov    DWORD PTR [esp+0x48],esi
  73ff61:	66 89 7c 24 50                                  	mov    WORD PTR [esp+0x50],di
  73ff66:	66 89 7c 24 52                                  	mov    WORD PTR [esp+0x52],di
  73ff6b:	e8 50 5a db ff                                  	call   0x4f59c0
  73ff70:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  73ff74:	50                                              	push   eax
  73ff75:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  73ff79:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
  73ff7d:	66 89 7c 24 60                                  	mov    WORD PTR [esp+0x60],di
  73ff82:	66 89 7c 24 62                                  	mov    WORD PTR [esp+0x62],di
  73ff87:	e8 24 65 db ff                                  	call   0x4f64b0
  73ff8c:	b3 04                                           	mov    bl,0x4
  73ff8e:	84 5c 24 3c                                     	test   BYTE PTR [esp+0x3c],bl
  73ff92:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
  73ff96:	74 0a                                           	je     0x73ffa2
  73ff98:	57                                              	push   edi
  73ff99:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  73ff9d:	e8 be 57 db ff                                  	call   0x4f5760
  73ffa2:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  73ffa5:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  73ffa8:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  73ffac:	50                                              	push   eax
  73ffad:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  73ffb1:	51                                              	push   ecx
  73ffb2:	8b cd                                           	mov    ecx,ebp
  73ffb4:	ff d2                                           	call   edx
  73ffb6:	84 5c 24 5c                                     	test   BYTE PTR [esp+0x5c],bl
  73ffba:	89 74 24 54                                     	mov    DWORD PTR [esp+0x54],esi
  73ffbe:	5e                                              	pop    esi
  73ffbf:	5b                                              	pop    ebx
  73ffc0:	74 0a                                           	je     0x73ffcc
  73ffc2:	57                                              	push   edi
  73ffc3:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  73ffc7:	e8 94 57 db ff                                  	call   0x4f5760
  73ffcc:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  73ffd0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73ffd4:	50                                              	push   eax
  73ffd5:	51                                              	push   ecx
  73ffd6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  73ffda:	e8 51 ee ff ff                                  	call   0x73ee30
  73ffdf:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  73ffe3:	3b c7                                           	cmp    eax,edi
  73ffe5:	74 09                                           	je     0x73fff0
  73ffe7:	50                                              	push   eax
  73ffe8:	e8 f3 44 da ff                                  	call   0x4e44e0
  73ffed:	83 c4 04                                        	add    esp,0x4
  73fff0:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  73fff4:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  73fff8:	2b d0                                           	sub    edx,eax
  73fffa:	83 e2 fe                                        	and    edx,0xfffffffe
  73fffd:	83 fa 02                                        	cmp    edx,0x2
  740000:	7e 0d                                           	jle    0x74000f
  740002:	3b c7                                           	cmp    eax,edi
  740004:	74 09                                           	je     0x74000f
  740006:	50                                              	push   eax
  740007:	e8 d4 44 da ff                                  	call   0x4e44e0
  74000c:	83 c4 04                                        	add    esp,0x4
  74000f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  740013:	5f                                              	pop    edi
  740014:	5d                                              	pop    ebp
  740015:	83 c4 64                                        	add    esp,0x64
  740018:	c3                                              	ret
  740019:	cc                                              	int3
  74001a:	cc                                              	int3
  74001b:	cc                                              	int3
  74001c:	cc                                              	int3
  74001d:	cc                                              	int3
  74001e:	cc                                              	int3
  74001f:	cc                                              	int3
