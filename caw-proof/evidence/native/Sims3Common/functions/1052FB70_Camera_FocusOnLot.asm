# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fb70 (Camera_FocusOnLot)
Paired Ghidra pseudocode: 1052FB70_Camera_FocusOnLot.c
Window: [0x1052fb70, 0x1052fbe0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fbe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fb70: e8 bb ca 22 00 85 c0 74 5b 8b c8 e8 00 7f 40 00
1052fb80: 85 c0 74 50 8b c8 e8 c5 cd 22 00 85 c0 74 45 8b
1052fb90: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052fba0: 33 d9 ee 8b 4c 24 08 8b 54 24 04 6a 00 83 ec 10
1052fbb0: d9 5c 24 0c d9 44 24 28 d9 5c 24 08 d9 44 24 24
1052fbc0: d9 5c 24 04 d9 44 24 20 d9 1c 24 51 52 8b c8 e8
1052fbd0: 9c 81 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052fb70 <.text+0x52eb70>:
1052fb70:	e8 bb ca 22 00                                  	call   0x1075c630
1052fb75:	85 c0                                           	test   eax,eax
1052fb77:	74 5b                                           	je     0x1052fbd4
1052fb79:	8b c8                                           	mov    ecx,eax
1052fb7b:	e8 00 7f 40 00                                  	call   0x10937a80
1052fb80:	85 c0                                           	test   eax,eax
1052fb82:	74 50                                           	je     0x1052fbd4
1052fb84:	8b c8                                           	mov    ecx,eax
1052fb86:	e8 c5 cd 22 00                                  	call   0x1075c950
1052fb8b:	85 c0                                           	test   eax,eax
1052fb8d:	74 45                                           	je     0x1052fbd4
1052fb8f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052fb91:	8b c8                                           	mov    ecx,eax
1052fb93:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052fb96:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fb9b:	ff d0                                           	call   eax
1052fb9d:	85 c0                                           	test   eax,eax
1052fb9f:	74 33                                           	je     0x1052fbd4
1052fba1:	d9 ee                                           	fldz
1052fba3:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1052fba7:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1052fbab:	6a 00                                           	push   0x0
1052fbad:	83 ec 10                                        	sub    esp,0x10
1052fbb0:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1052fbb4:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
1052fbb8:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1052fbbc:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
1052fbc0:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1052fbc4:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
1052fbc8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052fbcb:	51                                              	push   ecx
1052fbcc:	52                                              	push   edx
1052fbcd:	8b c8                                           	mov    ecx,eax
1052fbcf:	e8 9c 81 23 00                                  	call   0x10767d70
1052fbd4:	c3                                              	ret
1052fbd5:	cc                                              	int3
1052fbd6:	cc                                              	int3
1052fbd7:	cc                                              	int3
1052fbd8:	cc                                              	int3
1052fbd9:	cc                                              	int3
1052fbda:	cc                                              	int3
1052fbdb:	cc                                              	int3
1052fbdc:	cc                                              	int3
1052fbdd:	cc                                              	int3
1052fbde:	cc                                              	int3
1052fbdf:	cc                                              	int3
