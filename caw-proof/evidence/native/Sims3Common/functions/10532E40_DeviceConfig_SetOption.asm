# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532e40 (DeviceConfig_SetOption)
Paired Ghidra pseudocode: 10532E40_DeviceConfig_SetOption.c
Window: [0x10532e40, 0x10532ec0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532ec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532e40: 83 ec 10 57 e8 d7 82 02 00 8b 4c 24 18 8b 10 8b
10532e50: 52 58 51 8b c8 ff d2 8b f8 85 ff 74 52 53 56 e8
10532e60: 2c 95 e5 ff 6a 00 6a ff 8b f0 8d 44 24 14 57 50
10532e70: e8 ab 40 3f 00 8b 4c 24 34 8b 00 83 c4 10 51 50
10532e80: 8d 4e 04 e8 08 98 e5 ff 8b 54 24 14 8a d8 8b 44
10532e90: 24 0c 2b d0 83 fa 01 7e 0d 85 c0 74 09 50 e8 ed
10532ea0: 5f 3e 00 83 c4 04 5e 8a c3 5b 5f 83 c4 10 c3 32
10532eb0: c0 5f 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532e40 <.text+0x531e40>:
10532e40:	83 ec 10                                        	sub    esp,0x10
10532e43:	57                                              	push   edi
10532e44:	e8 d7 82 02 00                                  	call   0x1055b120
10532e49:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10532e4d:	8b 10                                           	mov    edx,DWORD PTR [eax]
10532e4f:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10532e52:	51                                              	push   ecx
10532e53:	8b c8                                           	mov    ecx,eax
10532e55:	ff d2                                           	call   edx
10532e57:	8b f8                                           	mov    edi,eax
10532e59:	85 ff                                           	test   edi,edi
10532e5b:	74 52                                           	je     0x10532eaf
10532e5d:	53                                              	push   ebx
10532e5e:	56                                              	push   esi
10532e5f:	e8 2c 95 e5 ff                                  	call   0x1038c390
10532e64:	6a 00                                           	push   0x0
10532e66:	6a ff                                           	push   0xffffffff
10532e68:	8b f0                                           	mov    esi,eax
10532e6a:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10532e6e:	57                                              	push   edi
10532e6f:	50                                              	push   eax
10532e70:	e8 ab 40 3f 00                                  	call   0x10926f20
10532e75:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10532e79:	8b 00                                           	mov    eax,DWORD PTR [eax]
10532e7b:	83 c4 10                                        	add    esp,0x10
10532e7e:	51                                              	push   ecx
10532e7f:	50                                              	push   eax
10532e80:	8d 4e 04                                        	lea    ecx,[esi+0x4]
10532e83:	e8 08 98 e5 ff                                  	call   0x1038c690
10532e88:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10532e8c:	8a d8                                           	mov    bl,al
10532e8e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10532e92:	2b d0                                           	sub    edx,eax
10532e94:	83 fa 01                                        	cmp    edx,0x1
10532e97:	7e 0d                                           	jle    0x10532ea6
10532e99:	85 c0                                           	test   eax,eax
10532e9b:	74 09                                           	je     0x10532ea6
10532e9d:	50                                              	push   eax
10532e9e:	e8 ed 5f 3e 00                                  	call   0x10918e90
10532ea3:	83 c4 04                                        	add    esp,0x4
10532ea6:	5e                                              	pop    esi
10532ea7:	8a c3                                           	mov    al,bl
10532ea9:	5b                                              	pop    ebx
10532eaa:	5f                                              	pop    edi
10532eab:	83 c4 10                                        	add    esp,0x10
10532eae:	c3                                              	ret
10532eaf:	32 c0                                           	xor    al,al
10532eb1:	5f                                              	pop    edi
10532eb2:	83 c4 10                                        	add    esp,0x10
10532eb5:	c3                                              	ret
10532eb6:	cc                                              	int3
10532eb7:	cc                                              	int3
10532eb8:	cc                                              	int3
10532eb9:	cc                                              	int3
10532eba:	cc                                              	int3
10532ebb:	cc                                              	int3
10532ebc:	cc                                              	int3
10532ebd:	cc                                              	int3
10532ebe:	cc                                              	int3
10532ebf:	cc                                              	int3
