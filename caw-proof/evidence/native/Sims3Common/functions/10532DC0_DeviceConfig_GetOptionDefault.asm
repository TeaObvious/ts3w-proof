# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532dc0 (DeviceConfig_GetOptionDefault)
Paired Ghidra pseudocode: 10532DC0_DeviceConfig_GetOptionDefault.c
Window: [0x10532dc0, 0x10532e40) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532dc0: 83 ec 10 57 e8 57 83 02 00 8b 4c 24 18 8b 10 8b
10532dd0: 52 58 51 8b c8 ff d2 8b f8 85 ff 74 52 53 56 e8
10532de0: ac 95 e5 ff 6a 00 6a ff 8b f0 8d 44 24 14 57 50
10532df0: e8 2b 41 3f 00 8b 4c 24 34 8b 00 83 c4 10 51 50
10532e00: 8d 4e 04 e8 48 9a e5 ff 8b 54 24 14 8a d8 8b 44
10532e10: 24 0c 2b d0 83 fa 01 7e 0d 85 c0 74 09 50 e8 6d
10532e20: 60 3e 00 83 c4 04 5e 8a c3 5b 5f 83 c4 10 c3 32
10532e30: c0 5f 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532dc0 <.text+0x531dc0>:
10532dc0:	83 ec 10                                        	sub    esp,0x10
10532dc3:	57                                              	push   edi
10532dc4:	e8 57 83 02 00                                  	call   0x1055b120
10532dc9:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10532dcd:	8b 10                                           	mov    edx,DWORD PTR [eax]
10532dcf:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10532dd2:	51                                              	push   ecx
10532dd3:	8b c8                                           	mov    ecx,eax
10532dd5:	ff d2                                           	call   edx
10532dd7:	8b f8                                           	mov    edi,eax
10532dd9:	85 ff                                           	test   edi,edi
10532ddb:	74 52                                           	je     0x10532e2f
10532ddd:	53                                              	push   ebx
10532dde:	56                                              	push   esi
10532ddf:	e8 ac 95 e5 ff                                  	call   0x1038c390
10532de4:	6a 00                                           	push   0x0
10532de6:	6a ff                                           	push   0xffffffff
10532de8:	8b f0                                           	mov    esi,eax
10532dea:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10532dee:	57                                              	push   edi
10532def:	50                                              	push   eax
10532df0:	e8 2b 41 3f 00                                  	call   0x10926f20
10532df5:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10532df9:	8b 00                                           	mov    eax,DWORD PTR [eax]
10532dfb:	83 c4 10                                        	add    esp,0x10
10532dfe:	51                                              	push   ecx
10532dff:	50                                              	push   eax
10532e00:	8d 4e 04                                        	lea    ecx,[esi+0x4]
10532e03:	e8 48 9a e5 ff                                  	call   0x1038c850
10532e08:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10532e0c:	8a d8                                           	mov    bl,al
10532e0e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10532e12:	2b d0                                           	sub    edx,eax
10532e14:	83 fa 01                                        	cmp    edx,0x1
10532e17:	7e 0d                                           	jle    0x10532e26
10532e19:	85 c0                                           	test   eax,eax
10532e1b:	74 09                                           	je     0x10532e26
10532e1d:	50                                              	push   eax
10532e1e:	e8 6d 60 3e 00                                  	call   0x10918e90
10532e23:	83 c4 04                                        	add    esp,0x4
10532e26:	5e                                              	pop    esi
10532e27:	8a c3                                           	mov    al,bl
10532e29:	5b                                              	pop    ebx
10532e2a:	5f                                              	pop    edi
10532e2b:	83 c4 10                                        	add    esp,0x10
10532e2e:	c3                                              	ret
10532e2f:	32 c0                                           	xor    al,al
10532e31:	5f                                              	pop    edi
10532e32:	83 c4 10                                        	add    esp,0x10
10532e35:	c3                                              	ret
10532e36:	cc                                              	int3
10532e37:	cc                                              	int3
10532e38:	cc                                              	int3
10532e39:	cc                                              	int3
10532e3a:	cc                                              	int3
10532e3b:	cc                                              	int3
10532e3c:	cc                                              	int3
10532e3d:	cc                                              	int3
10532e3e:	cc                                              	int3
10532e3f:	cc                                              	int3
