# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039fec0 (CASUtils_SimBuilderGetBodyTypeAndRegionFromPickDataImpl)
Paired Ghidra pseudocode: 1039FEC0_CASUtils_SimBuilderGetBodyTypeAndRegionFromPickDataImpl.c
Window: [0x1039fec0, 0x1039ff10) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ff10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039fec0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039fed0: 35 75 2c e8 48 b2 1b 00 8b 10 8b c8 8b 82 cc 00
1039fee0: 00 00 56 ff d0 85 c0 74 16 8b 4c 24 14 8b 54 24
1039fef0: 10 51 8b 4c 24 10 52 51 8b c8 e8 91 b5 03 00 5e
1039ff00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039fec0 <.text+0x39eec0>:
1039fec0:	56                                              	push   esi
1039fec1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039fec5:	8b c6                                           	mov    eax,esi
1039fec7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039fecc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039fed1:	75 2c                                           	jne    0x1039feff
1039fed3:	e8 48 b2 1b 00                                  	call   0x1055b120
1039fed8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039feda:	8b c8                                           	mov    ecx,eax
1039fedc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039fee2:	56                                              	push   esi
1039fee3:	ff d0                                           	call   eax
1039fee5:	85 c0                                           	test   eax,eax
1039fee7:	74 16                                           	je     0x1039feff
1039fee9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1039feed:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1039fef1:	51                                              	push   ecx
1039fef2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1039fef6:	52                                              	push   edx
1039fef7:	51                                              	push   ecx
1039fef8:	8b c8                                           	mov    ecx,eax
1039fefa:	e8 91 b5 03 00                                  	call   0x103db490
1039feff:	5e                                              	pop    esi
1039ff00:	c3                                              	ret
1039ff01:	cc                                              	int3
1039ff02:	cc                                              	int3
1039ff03:	cc                                              	int3
1039ff04:	cc                                              	int3
1039ff05:	cc                                              	int3
1039ff06:	cc                                              	int3
1039ff07:	cc                                              	int3
1039ff08:	cc                                              	int3
1039ff09:	cc                                              	int3
1039ff0a:	cc                                              	int3
1039ff0b:	cc                                              	int3
1039ff0c:	cc                                              	int3
1039ff0d:	cc                                              	int3
1039ff0e:	cc                                              	int3
1039ff0f:	cc                                              	int3
