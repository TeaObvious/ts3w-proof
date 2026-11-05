# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fbe0 (Camera_FocusOnLotForBuildBuy)
Paired Ghidra pseudocode: 1052FBE0_Camera_FocusOnLotForBuildBuy.c
Window: [0x1052fbe0, 0x1052fc50) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fc50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fbe0: e8 4b ca 22 00 85 c0 74 5d 8b c8 e8 90 7e 40 00
1052fbf0: 85 c0 74 52 8b c8 e8 55 cd 22 00 85 c0 74 47 8b
1052fc00: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052fc10: 35 d9 44 24 18 8b 4c 24 08 8b 54 24 04 6a 01 83
1052fc20: ec 10 d9 5c 24 0c d9 44 24 28 d9 5c 24 08 d9 44
1052fc30: 24 24 d9 5c 24 04 d9 44 24 20 d9 1c 24 51 52 8b
1052fc40: c8 e8 2a 81 23 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052fbe0 <.text+0x52ebe0>:
1052fbe0:	e8 4b ca 22 00                                  	call   0x1075c630
1052fbe5:	85 c0                                           	test   eax,eax
1052fbe7:	74 5d                                           	je     0x1052fc46
1052fbe9:	8b c8                                           	mov    ecx,eax
1052fbeb:	e8 90 7e 40 00                                  	call   0x10937a80
1052fbf0:	85 c0                                           	test   eax,eax
1052fbf2:	74 52                                           	je     0x1052fc46
1052fbf4:	8b c8                                           	mov    ecx,eax
1052fbf6:	e8 55 cd 22 00                                  	call   0x1075c950
1052fbfb:	85 c0                                           	test   eax,eax
1052fbfd:	74 47                                           	je     0x1052fc46
1052fbff:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052fc01:	8b c8                                           	mov    ecx,eax
1052fc03:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052fc06:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fc0b:	ff d0                                           	call   eax
1052fc0d:	85 c0                                           	test   eax,eax
1052fc0f:	74 35                                           	je     0x1052fc46
1052fc11:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
1052fc15:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1052fc19:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1052fc1d:	6a 01                                           	push   0x1
1052fc1f:	83 ec 10                                        	sub    esp,0x10
1052fc22:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1052fc26:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
1052fc2a:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1052fc2e:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
1052fc32:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1052fc36:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
1052fc3a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052fc3d:	51                                              	push   ecx
1052fc3e:	52                                              	push   edx
1052fc3f:	8b c8                                           	mov    ecx,eax
1052fc41:	e8 2a 81 23 00                                  	call   0x10767d70
1052fc46:	c3                                              	ret
1052fc47:	cc                                              	int3
1052fc48:	cc                                              	int3
1052fc49:	cc                                              	int3
1052fc4a:	cc                                              	int3
1052fc4b:	cc                                              	int3
1052fc4c:	cc                                              	int3
1052fc4d:	cc                                              	int3
1052fc4e:	cc                                              	int3
1052fc4f:	cc                                              	int3
