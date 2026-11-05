# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105329e0 (DeviceConfig_SetProperty)
Paired Ghidra pseudocode: 105329E0_DeviceConfig_SetProperty.c
Window: [0x105329e0, 0x10532a50) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105329e0: 83 ec 40 56 57 e8 36 87 02 00 8b f0 e8 0f 6b e5
105329f0: ff 8b 4c 24 4c 8b f8 8b 06 8b 50 58 51 8b ce ff
10532a00: d2 8b f0 85 f6 74 3b 85 ff 74 37 6a 3e 8d 44 24
10532a10: 0e 6a 00 50 66 c7 44 24 14 00 00 e8 9e de 55 00
10532a20: 8b 54 24 5c 6a 0a 8d 4c 24 18 51 52 e8 5f ea 3f
10532a30: 00 83 c4 18 50 56 68 c8 76 ae 10 8b cf e8 3e 81
10532a40: e5 ff 5f 5e 83 c4 40 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105329e0 <.text+0x5319e0>:
105329e0:	83 ec 40                                        	sub    esp,0x40
105329e3:	56                                              	push   esi
105329e4:	57                                              	push   edi
105329e5:	e8 36 87 02 00                                  	call   0x1055b120
105329ea:	8b f0                                           	mov    esi,eax
105329ec:	e8 0f 6b e5 ff                                  	call   0x10389500
105329f1:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
105329f5:	8b f8                                           	mov    edi,eax
105329f7:	8b 06                                           	mov    eax,DWORD PTR [esi]
105329f9:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
105329fc:	51                                              	push   ecx
105329fd:	8b ce                                           	mov    ecx,esi
105329ff:	ff d2                                           	call   edx
10532a01:	8b f0                                           	mov    esi,eax
10532a03:	85 f6                                           	test   esi,esi
10532a05:	74 3b                                           	je     0x10532a42
10532a07:	85 ff                                           	test   edi,edi
10532a09:	74 37                                           	je     0x10532a42
10532a0b:	6a 3e                                           	push   0x3e
10532a0d:	8d 44 24 0e                                     	lea    eax,[esp+0xe]
10532a11:	6a 00                                           	push   0x0
10532a13:	50                                              	push   eax
10532a14:	66 c7 44 24 14 00 00                            	mov    WORD PTR [esp+0x14],0x0
10532a1b:	e8 9e de 55 00                                  	call   0x10a908be
10532a20:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
10532a24:	6a 0a                                           	push   0xa
10532a26:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10532a2a:	51                                              	push   ecx
10532a2b:	52                                              	push   edx
10532a2c:	e8 5f ea 3f 00                                  	call   0x10931490
10532a31:	83 c4 18                                        	add    esp,0x18
10532a34:	50                                              	push   eax
10532a35:	56                                              	push   esi
10532a36:	68 c8 76 ae 10                                  	push   0x10ae76c8
10532a3b:	8b cf                                           	mov    ecx,edi
10532a3d:	e8 3e 81 e5 ff                                  	call   0x1038ab80
10532a42:	5f                                              	pop    edi
10532a43:	5e                                              	pop    esi
10532a44:	83 c4 40                                        	add    esp,0x40
10532a47:	c3                                              	ret
10532a48:	cc                                              	int3
10532a49:	cc                                              	int3
10532a4a:	cc                                              	int3
10532a4b:	cc                                              	int3
10532a4c:	cc                                              	int3
10532a4d:	cc                                              	int3
10532a4e:	cc                                              	int3
10532a4f:	cc                                              	int3
