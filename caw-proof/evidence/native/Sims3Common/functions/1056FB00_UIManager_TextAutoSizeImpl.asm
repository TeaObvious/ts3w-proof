# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fb00 (UIManager_TextAutoSizeImpl)
Paired Ghidra pseudocode: 1056FB00_UIManager_TextAutoSizeImpl.c
Window: [0x1056fb00, 0x1056fb50) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fb50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fb00: e8 1b b6 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056fb10: ff 81 fa 00 00 00 30 75 31 8b 10 51 8b c8 8b 82
1056fb20: cc 00 00 00 ff d0 85 c0 74 20 8b 10 8b c8 8b 42
1056fb30: 0c 68 bd f4 15 0f ff d0 85 c0 74 0e 8b 4c 24 08
1056fb40: 8b 10 8b 52 14 51 8b c8 ff d2 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1056fb00 <.text+0x56eb00>:
1056fb00:	e8 1b b6 fe ff                                  	call   0x1055b120
1056fb05:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056fb09:	8b d1                                           	mov    edx,ecx
1056fb0b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056fb11:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056fb17:	75 31                                           	jne    0x1056fb4a
1056fb19:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056fb1b:	51                                              	push   ecx
1056fb1c:	8b c8                                           	mov    ecx,eax
1056fb1e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056fb24:	ff d0                                           	call   eax
1056fb26:	85 c0                                           	test   eax,eax
1056fb28:	74 20                                           	je     0x1056fb4a
1056fb2a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056fb2c:	8b c8                                           	mov    ecx,eax
1056fb2e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056fb31:	68 bd f4 15 0f                                  	push   0xf15f4bd
1056fb36:	ff d0                                           	call   eax
1056fb38:	85 c0                                           	test   eax,eax
1056fb3a:	74 0e                                           	je     0x1056fb4a
1056fb3c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1056fb40:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056fb42:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
1056fb45:	51                                              	push   ecx
1056fb46:	8b c8                                           	mov    ecx,eax
1056fb48:	ff d2                                           	call   edx
1056fb4a:	c3                                              	ret
1056fb4b:	cc                                              	int3
1056fb4c:	cc                                              	int3
1056fb4d:	cc                                              	int3
1056fb4e:	cc                                              	int3
1056fb4f:	cc                                              	int3
