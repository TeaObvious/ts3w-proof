# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532d40 (DeviceConfig_GetOption)
Paired Ghidra pseudocode: 10532D40_DeviceConfig_GetOption.c
Window: [0x10532d40, 0x10532dc0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532d40: 83 ec 10 57 e8 d7 83 02 00 8b 4c 24 18 8b 10 8b
10532d50: 52 58 51 8b c8 ff d2 8b f8 85 ff 74 52 53 56 e8
10532d60: 2c 96 e5 ff 6a 00 6a ff 8b f0 8d 44 24 14 57 50
10532d70: e8 ab 41 3f 00 8b 4c 24 34 8b 00 83 c4 10 51 50
10532d80: 8d 4e 04 e8 58 9a e5 ff 8b 54 24 14 8a d8 8b 44
10532d90: 24 0c 2b d0 83 fa 01 7e 0d 85 c0 74 09 50 e8 ed
10532da0: 60 3e 00 83 c4 04 5e 8a c3 5b 5f 83 c4 10 c3 32
10532db0: c0 5f 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532d40 <.text+0x531d40>:
10532d40:	83 ec 10                                        	sub    esp,0x10
10532d43:	57                                              	push   edi
10532d44:	e8 d7 83 02 00                                  	call   0x1055b120
10532d49:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10532d4d:	8b 10                                           	mov    edx,DWORD PTR [eax]
10532d4f:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10532d52:	51                                              	push   ecx
10532d53:	8b c8                                           	mov    ecx,eax
10532d55:	ff d2                                           	call   edx
10532d57:	8b f8                                           	mov    edi,eax
10532d59:	85 ff                                           	test   edi,edi
10532d5b:	74 52                                           	je     0x10532daf
10532d5d:	53                                              	push   ebx
10532d5e:	56                                              	push   esi
10532d5f:	e8 2c 96 e5 ff                                  	call   0x1038c390
10532d64:	6a 00                                           	push   0x0
10532d66:	6a ff                                           	push   0xffffffff
10532d68:	8b f0                                           	mov    esi,eax
10532d6a:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10532d6e:	57                                              	push   edi
10532d6f:	50                                              	push   eax
10532d70:	e8 ab 41 3f 00                                  	call   0x10926f20
10532d75:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10532d79:	8b 00                                           	mov    eax,DWORD PTR [eax]
10532d7b:	83 c4 10                                        	add    esp,0x10
10532d7e:	51                                              	push   ecx
10532d7f:	50                                              	push   eax
10532d80:	8d 4e 04                                        	lea    ecx,[esi+0x4]
10532d83:	e8 58 9a e5 ff                                  	call   0x1038c7e0
10532d88:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10532d8c:	8a d8                                           	mov    bl,al
10532d8e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10532d92:	2b d0                                           	sub    edx,eax
10532d94:	83 fa 01                                        	cmp    edx,0x1
10532d97:	7e 0d                                           	jle    0x10532da6
10532d99:	85 c0                                           	test   eax,eax
10532d9b:	74 09                                           	je     0x10532da6
10532d9d:	50                                              	push   eax
10532d9e:	e8 ed 60 3e 00                                  	call   0x10918e90
10532da3:	83 c4 04                                        	add    esp,0x4
10532da6:	5e                                              	pop    esi
10532da7:	8a c3                                           	mov    al,bl
10532da9:	5b                                              	pop    ebx
10532daa:	5f                                              	pop    edi
10532dab:	83 c4 10                                        	add    esp,0x10
10532dae:	c3                                              	ret
10532daf:	32 c0                                           	xor    al,al
10532db1:	5f                                              	pop    edi
10532db2:	83 c4 10                                        	add    esp,0x10
10532db5:	c3                                              	ret
10532db6:	cc                                              	int3
10532db7:	cc                                              	int3
10532db8:	cc                                              	int3
10532db9:	cc                                              	int3
10532dba:	cc                                              	int3
10532dbb:	cc                                              	int3
10532dbc:	cc                                              	int3
10532dbd:	cc                                              	int3
10532dbe:	cc                                              	int3
10532dbf:	cc                                              	int3
