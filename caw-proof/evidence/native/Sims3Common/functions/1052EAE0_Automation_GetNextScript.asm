# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052eae0 (Automation_GetNextScript)
Paired Ghidra pseudocode: 1052EAE0_Automation_GetNextScript.c
Window: [0x1052eae0, 0x1052ebe0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052ebe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052eae0: a1 b8 86 c7 10 81 ec 34 04 00 00 56 8b 70 04 8b
1052eaf0: 16 8b 42 64 6a 00 8b ce ff d0 84 c0 0f 84 cb 00
1052eb00: 00 00 8b 56 7c 8b 52 40 6a 00 8d 4e 7c 68 00 04
1052eb10: 00 00 8d 44 24 40 50 ff d2 85 c0 0f 8e ac 00 00
1052eb20: 00 68 a8 cc ac 10 c6 44 04 3c 00 68 00 04 00 00
1052eb30: 8d 44 24 40 50 8d 4c 24 14 51 e8 71 82 3f 00 83
1052eb40: c4 10 6a 01 6a 10 8d 54 24 10 52 6a 09 6a 13 8d
1052eb50: 4c 24 2c c7 44 24 2c b4 a5 ac 10 66 c7 44 24 36
1052eb60: 13 00 66 c7 44 24 34 0b 00 e8 22 a0 3f 00 e8 ad
1052eb70: c5 02 00 8b 10 8b 52 50 8d 4c 24 04 51 8d 4c 24
1052eb80: 1c 51 8b c8 ff d2 f6 44 24 20 04 8b 74 24 04 c7
1052eb90: 44 24 18 b4 a5 ac 10 74 0b 6a 00 8d 4c 24 1c e8
1052eba0: ec 9e 3f 00 8b 4c 24 10 8b 44 24 08 2b c8 83 e1
1052ebb0: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 d0 a2 3e 00
1052ebc0: 83 c4 04 8b c6 5e 81 c4 34 04 00 00 c3 33 c0 5e
1052ebd0: 81 c4 34 04 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052eae0 <.text+0x52dae0>:
1052eae0:	a1 b8 86 c7 10                                  	mov    eax,ds:0x10c786b8
1052eae5:	81 ec 34 04 00 00                               	sub    esp,0x434
1052eaeb:	56                                              	push   esi
1052eaec:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
1052eaef:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052eaf1:	8b 42 64                                        	mov    eax,DWORD PTR [edx+0x64]
1052eaf4:	6a 00                                           	push   0x0
1052eaf6:	8b ce                                           	mov    ecx,esi
1052eaf8:	ff d0                                           	call   eax
1052eafa:	84 c0                                           	test   al,al
1052eafc:	0f 84 cb 00 00 00                               	je     0x1052ebcd
1052eb02:	8b 56 7c                                        	mov    edx,DWORD PTR [esi+0x7c]
1052eb05:	8b 52 40                                        	mov    edx,DWORD PTR [edx+0x40]
1052eb08:	6a 00                                           	push   0x0
1052eb0a:	8d 4e 7c                                        	lea    ecx,[esi+0x7c]
1052eb0d:	68 00 04 00 00                                  	push   0x400
1052eb12:	8d 44 24 40                                     	lea    eax,[esp+0x40]
1052eb16:	50                                              	push   eax
1052eb17:	ff d2                                           	call   edx
1052eb19:	85 c0                                           	test   eax,eax
1052eb1b:	0f 8e ac 00 00 00                               	jle    0x1052ebcd
1052eb21:	68 a8 cc ac 10                                  	push   0x10accca8
1052eb26:	c6 44 04 3c 00                                  	mov    BYTE PTR [esp+eax*1+0x3c],0x0
1052eb2b:	68 00 04 00 00                                  	push   0x400
1052eb30:	8d 44 24 40                                     	lea    eax,[esp+0x40]
1052eb34:	50                                              	push   eax
1052eb35:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1052eb39:	51                                              	push   ecx
1052eb3a:	e8 71 82 3f 00                                  	call   0x10926db0
1052eb3f:	83 c4 10                                        	add    esp,0x10
1052eb42:	6a 01                                           	push   0x1
1052eb44:	6a 10                                           	push   0x10
1052eb46:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1052eb4a:	52                                              	push   edx
1052eb4b:	6a 09                                           	push   0x9
1052eb4d:	6a 13                                           	push   0x13
1052eb4f:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1052eb53:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
1052eb5b:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
1052eb62:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
1052eb69:	e8 22 a0 3f 00                                  	call   0x10928b90
1052eb6e:	e8 ad c5 02 00                                  	call   0x1055b120
1052eb73:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052eb75:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1052eb78:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1052eb7c:	51                                              	push   ecx
1052eb7d:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1052eb81:	51                                              	push   ecx
1052eb82:	8b c8                                           	mov    ecx,eax
1052eb84:	ff d2                                           	call   edx
1052eb86:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
1052eb8b:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
1052eb8f:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
1052eb97:	74 0b                                           	je     0x1052eba4
1052eb99:	6a 00                                           	push   0x0
1052eb9b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1052eb9f:	e8 ec 9e 3f 00                                  	call   0x10928a90
1052eba4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052eba8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1052ebac:	2b c8                                           	sub    ecx,eax
1052ebae:	83 e1 fe                                        	and    ecx,0xfffffffe
1052ebb1:	83 f9 02                                        	cmp    ecx,0x2
1052ebb4:	7e 0d                                           	jle    0x1052ebc3
1052ebb6:	85 c0                                           	test   eax,eax
1052ebb8:	74 09                                           	je     0x1052ebc3
1052ebba:	50                                              	push   eax
1052ebbb:	e8 d0 a2 3e 00                                  	call   0x10918e90
1052ebc0:	83 c4 04                                        	add    esp,0x4
1052ebc3:	8b c6                                           	mov    eax,esi
1052ebc5:	5e                                              	pop    esi
1052ebc6:	81 c4 34 04 00 00                               	add    esp,0x434
1052ebcc:	c3                                              	ret
1052ebcd:	33 c0                                           	xor    eax,eax
1052ebcf:	5e                                              	pop    esi
1052ebd0:	81 c4 34 04 00 00                               	add    esp,0x434
1052ebd6:	c3                                              	ret
1052ebd7:	cc                                              	int3
1052ebd8:	cc                                              	int3
1052ebd9:	cc                                              	int3
1052ebda:	cc                                              	int3
1052ebdb:	cc                                              	int3
1052ebdc:	cc                                              	int3
1052ebdd:	cc                                              	int3
1052ebde:	cc                                              	int3
1052ebdf:	cc                                              	int3
