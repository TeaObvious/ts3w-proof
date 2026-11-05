# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052ff60 (Camera_Lock)
Paired Ghidra pseudocode: 1052FF60_Camera_Lock.c
Window: [0x1052ff60, 0x1052ffe0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052ffe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052ff60: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 c1 c6 22 00 85
1052ff70: c0 74 65 8b c8 e8 06 7b 40 00 85 c0 74 5a 8b c8
1052ff80: e8 cb c9 22 00 85 c0 74 4f 8b 10 8b c8 8b 42 0c
1052ff90: 68 89 dd 0f 11 ff d0 8b f0 85 f6 74 3b d9 45 28
1052ffa0: 83 ec 10 d9 5c 24 0c 8d 4c 24 20 d9 45 24 d9 5c
1052ffb0: 24 08 d9 45 20 d9 5c 24 04 d9 45 1c d9 1c 24 51
1052ffc0: 8d 4d 10 e8 58 db 02 00 8b 55 0c 50 8b 45 08 52
1052ffd0: 50 8b ce e8 18 b5 23 00 5e 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
1052ff60 <.text+0x52ef60>:
1052ff60:	55                                              	push   ebp
1052ff61:	8b ec                                           	mov    ebp,esp
1052ff63:	83 e4 f0                                        	and    esp,0xfffffff0
1052ff66:	83 ec 1c                                        	sub    esp,0x1c
1052ff69:	56                                              	push   esi
1052ff6a:	e8 c1 c6 22 00                                  	call   0x1075c630
1052ff6f:	85 c0                                           	test   eax,eax
1052ff71:	74 65                                           	je     0x1052ffd8
1052ff73:	8b c8                                           	mov    ecx,eax
1052ff75:	e8 06 7b 40 00                                  	call   0x10937a80
1052ff7a:	85 c0                                           	test   eax,eax
1052ff7c:	74 5a                                           	je     0x1052ffd8
1052ff7e:	8b c8                                           	mov    ecx,eax
1052ff80:	e8 cb c9 22 00                                  	call   0x1075c950
1052ff85:	85 c0                                           	test   eax,eax
1052ff87:	74 4f                                           	je     0x1052ffd8
1052ff89:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052ff8b:	8b c8                                           	mov    ecx,eax
1052ff8d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052ff90:	68 89 dd 0f 11                                  	push   0x110fdd89
1052ff95:	ff d0                                           	call   eax
1052ff97:	8b f0                                           	mov    esi,eax
1052ff99:	85 f6                                           	test   esi,esi
1052ff9b:	74 3b                                           	je     0x1052ffd8
1052ff9d:	d9 45 28                                        	fld    DWORD PTR [ebp+0x28]
1052ffa0:	83 ec 10                                        	sub    esp,0x10
1052ffa3:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1052ffa7:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1052ffab:	d9 45 24                                        	fld    DWORD PTR [ebp+0x24]
1052ffae:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1052ffb2:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
1052ffb5:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1052ffb9:	d9 45 1c                                        	fld    DWORD PTR [ebp+0x1c]
1052ffbc:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052ffbf:	51                                              	push   ecx
1052ffc0:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
1052ffc3:	e8 58 db 02 00                                  	call   0x1055db20
1052ffc8:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1052ffcb:	50                                              	push   eax
1052ffcc:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1052ffcf:	52                                              	push   edx
1052ffd0:	50                                              	push   eax
1052ffd1:	8b ce                                           	mov    ecx,esi
1052ffd3:	e8 18 b5 23 00                                  	call   0x1076b4f0
1052ffd8:	5e                                              	pop    esi
1052ffd9:	8b e5                                           	mov    esp,ebp
1052ffdb:	5d                                              	pop    ebp
1052ffdc:	c3                                              	ret
1052ffdd:	cc                                              	int3
1052ffde:	cc                                              	int3
1052ffdf:	cc                                              	int3
