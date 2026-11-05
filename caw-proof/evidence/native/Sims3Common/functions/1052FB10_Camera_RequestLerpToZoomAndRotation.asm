# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fb10 (Camera_RequestLerpToZoomAndRotation)
Paired Ghidra pseudocode: 1052FB10_Camera_RequestLerpToZoomAndRotation.c
Window: [0x1052fb10, 0x1052fb70) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fb70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fb10: e8 1b cb 22 00 85 c0 74 51 8b c8 e8 60 7f 40 00
1052fb20: 85 c0 74 46 8b c8 e8 25 ce 22 00 85 c0 74 3b 8b
1052fb30: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052fb40: 29 d9 44 24 10 83 ec 10 d9 5c 24 0c 8b c8 d9 44
1052fb50: 24 1c d9 5c 24 08 d9 44 24 18 d9 5c 24 04 d9 44
1052fb60: 24 14 d9 1c 24 e8 b6 60 23 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1052fb10 <.text+0x52eb10>:
1052fb10:	e8 1b cb 22 00                                  	call   0x1075c630
1052fb15:	85 c0                                           	test   eax,eax
1052fb17:	74 51                                           	je     0x1052fb6a
1052fb19:	8b c8                                           	mov    ecx,eax
1052fb1b:	e8 60 7f 40 00                                  	call   0x10937a80
1052fb20:	85 c0                                           	test   eax,eax
1052fb22:	74 46                                           	je     0x1052fb6a
1052fb24:	8b c8                                           	mov    ecx,eax
1052fb26:	e8 25 ce 22 00                                  	call   0x1075c950
1052fb2b:	85 c0                                           	test   eax,eax
1052fb2d:	74 3b                                           	je     0x1052fb6a
1052fb2f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052fb31:	8b c8                                           	mov    ecx,eax
1052fb33:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052fb36:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fb3b:	ff d0                                           	call   eax
1052fb3d:	85 c0                                           	test   eax,eax
1052fb3f:	74 29                                           	je     0x1052fb6a
1052fb41:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1052fb45:	83 ec 10                                        	sub    esp,0x10
1052fb48:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1052fb4c:	8b c8                                           	mov    ecx,eax
1052fb4e:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
1052fb52:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1052fb56:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
1052fb5a:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1052fb5e:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1052fb62:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052fb65:	e8 b6 60 23 00                                  	call   0x10765c20
1052fb6a:	c3                                              	ret
1052fb6b:	cc                                              	int3
1052fb6c:	cc                                              	int3
1052fb6d:	cc                                              	int3
1052fb6e:	cc                                              	int3
1052fb6f:	cc                                              	int3
