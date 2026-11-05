# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575ed0 (VideoRecorder_GetLastVideoKey)
Paired Ghidra pseudocode: 10575ED0_VideoRecorder_GetLastVideoKey.c
Window: [0x10575ed0, 0x10575f30) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575ed0: 83 ec 10 56 8b 74 24 18 c7 06 00 00 00 00 c7 46
10575ee0: 04 00 00 00 00 c7 46 08 00 00 00 00 c7 46 0c 00
10575ef0: 00 00 00 e8 78 72 25 00 85 c0 74 29 8b 10 8b 52
10575f00: 24 8d 4c 24 04 51 8b c8 ff d2 8b 44 24 0c 8b 4c
10575f10: 24 10 8b 54 24 04 89 06 8b 44 24 08 89 4e 04 89
10575f20: 56 08 89 46 0c 8b c6 5e 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
10575ed0 <.text+0x574ed0>:
10575ed0:	83 ec 10                                        	sub    esp,0x10
10575ed3:	56                                              	push   esi
10575ed4:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
10575ed8:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
10575ede:	c7 46 04 00 00 00 00                            	mov    DWORD PTR [esi+0x4],0x0
10575ee5:	c7 46 08 00 00 00 00                            	mov    DWORD PTR [esi+0x8],0x0
10575eec:	c7 46 0c 00 00 00 00                            	mov    DWORD PTR [esi+0xc],0x0
10575ef3:	e8 78 72 25 00                                  	call   0x107cd170
10575ef8:	85 c0                                           	test   eax,eax
10575efa:	74 29                                           	je     0x10575f25
10575efc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575efe:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
10575f01:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10575f05:	51                                              	push   ecx
10575f06:	8b c8                                           	mov    ecx,eax
10575f08:	ff d2                                           	call   edx
10575f0a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10575f0e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10575f12:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10575f16:	89 06                                           	mov    DWORD PTR [esi],eax
10575f18:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10575f1c:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
10575f1f:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
10575f22:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
10575f25:	8b c6                                           	mov    eax,esi
10575f27:	5e                                              	pop    esi
10575f28:	83 c4 10                                        	add    esp,0x10
10575f2b:	c3                                              	ret
10575f2c:	cc                                              	int3
10575f2d:	cc                                              	int3
10575f2e:	cc                                              	int3
10575f2f:	cc                                              	int3
