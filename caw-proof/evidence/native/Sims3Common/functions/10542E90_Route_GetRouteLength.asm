# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542e90 (Route_GetRouteLength)
Paired Ghidra pseudocode: 10542E90_Route_GetRouteLength.c
Window: [0x10542e90, 0x10542ee0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542e90: 51 8b 0d 44 89 c7 10 85 c9 56 74 34 8b 44 24 0c
10542ea0: 50 e8 4a 92 ff ff 8b f0 85 f6 74 24 8b 16 8b 42
10542eb0: 10 8b ce ff d0 8b ce e8 74 e3 ff ff d9 5c 24 04
10542ec0: 8b 16 8b 42 14 8b ce ff d0 d9 44 24 04 5e 59 c3
10542ed0: d9 ee 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542e90 <.text+0x541e90>:
10542e90:	51                                              	push   ecx
10542e91:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10542e97:	85 c9                                           	test   ecx,ecx
10542e99:	56                                              	push   esi
10542e9a:	74 34                                           	je     0x10542ed0
10542e9c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10542ea0:	50                                              	push   eax
10542ea1:	e8 4a 92 ff ff                                  	call   0x1053c0f0
10542ea6:	8b f0                                           	mov    esi,eax
10542ea8:	85 f6                                           	test   esi,esi
10542eaa:	74 24                                           	je     0x10542ed0
10542eac:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542eae:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10542eb1:	8b ce                                           	mov    ecx,esi
10542eb3:	ff d0                                           	call   eax
10542eb5:	8b ce                                           	mov    ecx,esi
10542eb7:	e8 74 e3 ff ff                                  	call   0x10541230
10542ebc:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10542ec0:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542ec2:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10542ec5:	8b ce                                           	mov    ecx,esi
10542ec7:	ff d0                                           	call   eax
10542ec9:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
10542ecd:	5e                                              	pop    esi
10542ece:	59                                              	pop    ecx
10542ecf:	c3                                              	ret
10542ed0:	d9 ee                                           	fldz
10542ed2:	5e                                              	pop    esi
10542ed3:	59                                              	pop    ecx
10542ed4:	c3                                              	ret
10542ed5:	cc                                              	int3
10542ed6:	cc                                              	int3
10542ed7:	cc                                              	int3
10542ed8:	cc                                              	int3
10542ed9:	cc                                              	int3
10542eda:	cc                                              	int3
10542edb:	cc                                              	int3
10542edc:	cc                                              	int3
10542edd:	cc                                              	int3
10542ede:	cc                                              	int3
10542edf:	cc                                              	int3
