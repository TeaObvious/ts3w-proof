# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575f80 (VideoRecorder_SetSettings)
Paired Ghidra pseudocode: 10575F80_VideoRecorder_SetSettings.c
Window: [0x10575f80, 0x105760c0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x105760c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575f80: 83 ec 24 53 56 e8 e6 71 25 00 8b f0 33 db 3b f3
10575f90: 0f 84 1f 01 00 00 e8 85 51 fe ff 8d 4c 24 0c 51
10575fa0: 8d 4c 24 0c 51 8b 4c 24 38 89 5c 24 14 8b 10 8b
10575fb0: 52 6c 51 8b c8 ff d2 83 7c 24 0c 08 0f 85 f3 00
10575fc0: 00 00 33 c0 89 44 24 14 89 44 24 18 89 44 24 1c
10575fd0: 89 44 24 20 89 44 24 24 89 44 24 28 8b 44 24 08
10575fe0: 8b c8 83 c0 04 89 44 24 08 83 39 03 c7 44 24 10
10575ff0: 03 00 00 00 76 04 8d 4c 24 10 8b 09 89 4c 24 14
10576000: 8b c8 83 c0 04 89 44 24 08 83 39 02 c7 44 24 10
10576010: 02 00 00 00 76 04 8d 4c 24 10 8b 11 8b c8 89 54
10576020: 24 18 83 c0 04 ba 01 00 00 00 89 44 24 08 39 11
10576030: 89 54 24 10 76 04 8d 4c 24 10 8b 09 89 4c 24 1c
10576040: 8b c8 83 c0 04 89 44 24 08 39 11 89 54 24 10 76
10576050: 04 8d 4c 24 10 8b 09 89 4c 24 20 8b 08 83 c0 04
10576060: 89 44 24 08 89 4c 24 24 8b 08 83 c0 04 85 c9 89
10576070: 44 24 08 88 54 24 28 75 04 88 5c 24 28 8b 08 83
10576080: c0 04 85 c9 89 44 24 08 88 54 24 29 75 04 88 5c
10576090: 24 29 8b 08 83 c0 04 85 c9 89 44 24 08 88 54 24
105760a0: 2a 75 04 88 5c 24 2a 8b 16 8b 52 04 8d 44 24 14
105760b0: 50 8b ce ff d2 5e 5b 83 c4 24 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10575f80 <.text+0x574f80>:
10575f80:	83 ec 24                                        	sub    esp,0x24
10575f83:	53                                              	push   ebx
10575f84:	56                                              	push   esi
10575f85:	e8 e6 71 25 00                                  	call   0x107cd170
10575f8a:	8b f0                                           	mov    esi,eax
10575f8c:	33 db                                           	xor    ebx,ebx
10575f8e:	3b f3                                           	cmp    esi,ebx
10575f90:	0f 84 1f 01 00 00                               	je     0x105760b5
10575f96:	e8 85 51 fe ff                                  	call   0x1055b120
10575f9b:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10575f9f:	51                                              	push   ecx
10575fa0:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10575fa4:	51                                              	push   ecx
10575fa5:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10575fa9:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
10575fad:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575faf:	8b 52 6c                                        	mov    edx,DWORD PTR [edx+0x6c]
10575fb2:	51                                              	push   ecx
10575fb3:	8b c8                                           	mov    ecx,eax
10575fb5:	ff d2                                           	call   edx
10575fb7:	83 7c 24 0c 08                                  	cmp    DWORD PTR [esp+0xc],0x8
10575fbc:	0f 85 f3 00 00 00                               	jne    0x105760b5
10575fc2:	33 c0                                           	xor    eax,eax
10575fc4:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10575fc8:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10575fcc:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10575fd0:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
10575fd4:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
10575fd8:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
10575fdc:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10575fe0:	8b c8                                           	mov    ecx,eax
10575fe2:	83 c0 04                                        	add    eax,0x4
10575fe5:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10575fe9:	83 39 03                                        	cmp    DWORD PTR [ecx],0x3
10575fec:	c7 44 24 10 03 00 00 00                         	mov    DWORD PTR [esp+0x10],0x3
10575ff4:	76 04                                           	jbe    0x10575ffa
10575ff6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10575ffa:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
10575ffc:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
10576000:	8b c8                                           	mov    ecx,eax
10576002:	83 c0 04                                        	add    eax,0x4
10576005:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10576009:	83 39 02                                        	cmp    DWORD PTR [ecx],0x2
1057600c:	c7 44 24 10 02 00 00 00                         	mov    DWORD PTR [esp+0x10],0x2
10576014:	76 04                                           	jbe    0x1057601a
10576016:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1057601a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1057601c:	8b c8                                           	mov    ecx,eax
1057601e:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10576022:	83 c0 04                                        	add    eax,0x4
10576025:	ba 01 00 00 00                                  	mov    edx,0x1
1057602a:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1057602e:	39 11                                           	cmp    DWORD PTR [ecx],edx
10576030:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10576034:	76 04                                           	jbe    0x1057603a
10576036:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1057603a:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
1057603c:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
10576040:	8b c8                                           	mov    ecx,eax
10576042:	83 c0 04                                        	add    eax,0x4
10576045:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10576049:	39 11                                           	cmp    DWORD PTR [ecx],edx
1057604b:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1057604f:	76 04                                           	jbe    0x10576055
10576051:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10576055:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
10576057:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
1057605b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1057605d:	83 c0 04                                        	add    eax,0x4
10576060:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10576064:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
10576068:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1057606a:	83 c0 04                                        	add    eax,0x4
1057606d:	85 c9                                           	test   ecx,ecx
1057606f:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10576073:	88 54 24 28                                     	mov    BYTE PTR [esp+0x28],dl
10576077:	75 04                                           	jne    0x1057607d
10576079:	88 5c 24 28                                     	mov    BYTE PTR [esp+0x28],bl
1057607d:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1057607f:	83 c0 04                                        	add    eax,0x4
10576082:	85 c9                                           	test   ecx,ecx
10576084:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10576088:	88 54 24 29                                     	mov    BYTE PTR [esp+0x29],dl
1057608c:	75 04                                           	jne    0x10576092
1057608e:	88 5c 24 29                                     	mov    BYTE PTR [esp+0x29],bl
10576092:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10576094:	83 c0 04                                        	add    eax,0x4
10576097:	85 c9                                           	test   ecx,ecx
10576099:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1057609d:	88 54 24 2a                                     	mov    BYTE PTR [esp+0x2a],dl
105760a1:	75 04                                           	jne    0x105760a7
105760a3:	88 5c 24 2a                                     	mov    BYTE PTR [esp+0x2a],bl
105760a7:	8b 16                                           	mov    edx,DWORD PTR [esi]
105760a9:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
105760ac:	8d 44 24 14                                     	lea    eax,[esp+0x14]
105760b0:	50                                              	push   eax
105760b1:	8b ce                                           	mov    ecx,esi
105760b3:	ff d2                                           	call   edx
105760b5:	5e                                              	pop    esi
105760b6:	5b                                              	pop    ebx
105760b7:	83 c4 24                                        	add    esp,0x24
105760ba:	c3                                              	ret
105760bb:	cc                                              	int3
105760bc:	cc                                              	int3
105760bd:	cc                                              	int3
105760be:	cc                                              	int3
105760bf:	cc                                              	int3
