# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097db10 (App3D_ShutdownUserToolManager)
Paired Ghidra pseudocode: 1097DB10_App3D_ShutdownUserToolManager.c
Window: [0x1097db10, 0x1097db80) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097db80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097db10: 51 8b 0d 44 7b cb 10 85 c9 74 58 e8 90 a1 94 ff
1097db20: 8b 0d c4 00 c7 10 85 c9 74 0a 68 c8 00 00 00 e8
1097db30: 2c bf 8b ff 8b 0d 44 7b cb 10 e8 81 a1 94 ff 8b
1097db40: 0d 44 7b cb 10 85 c9 74 2a 8d 41 04 56 c7 05 44
1097db50: 7b cb 10 00 00 00 00 8b d0 83 ce ff f0 0f c1 32
1097db60: 4e 5e 75 0f ba 01 00 00 00 87 10 8b 01 8b 10 6a
1097db70: 01 ff d2 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097db10 <.text+0x97cb10>:
1097db10:	51                                              	push   ecx
1097db11:	8b 0d 44 7b cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7b44
1097db17:	85 c9                                           	test   ecx,ecx
1097db19:	74 58                                           	je     0x1097db73
1097db1b:	e8 90 a1 94 ff                                  	call   0x102c7cb0
1097db20:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1097db26:	85 c9                                           	test   ecx,ecx
1097db28:	74 0a                                           	je     0x1097db34
1097db2a:	68 c8 00 00 00                                  	push   0xc8
1097db2f:	e8 2c bf 8b ff                                  	call   0x10239a60
1097db34:	8b 0d 44 7b cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7b44
1097db3a:	e8 81 a1 94 ff                                  	call   0x102c7cc0
1097db3f:	8b 0d 44 7b cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7b44
1097db45:	85 c9                                           	test   ecx,ecx
1097db47:	74 2a                                           	je     0x1097db73
1097db49:	8d 41 04                                        	lea    eax,[ecx+0x4]
1097db4c:	56                                              	push   esi
1097db4d:	c7 05 44 7b cb 10 00 00 00 00                   	mov    DWORD PTR ds:0x10cb7b44,0x0
1097db57:	8b d0                                           	mov    edx,eax
1097db59:	83 ce ff                                        	or     esi,0xffffffff
1097db5c:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
1097db60:	4e                                              	dec    esi
1097db61:	5e                                              	pop    esi
1097db62:	75 0f                                           	jne    0x1097db73
1097db64:	ba 01 00 00 00                                  	mov    edx,0x1
1097db69:	87 10                                           	xchg   DWORD PTR [eax],edx
1097db6b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097db6d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097db6f:	6a 01                                           	push   0x1
1097db71:	ff d2                                           	call   edx
1097db73:	59                                              	pop    ecx
1097db74:	c3                                              	ret
1097db75:	cc                                              	int3
1097db76:	cc                                              	int3
1097db77:	cc                                              	int3
1097db78:	cc                                              	int3
1097db79:	cc                                              	int3
1097db7a:	cc                                              	int3
1097db7b:	cc                                              	int3
1097db7c:	cc                                              	int3
1097db7d:	cc                                              	int3
1097db7e:	cc                                              	int3
1097db7f:	cc                                              	int3
