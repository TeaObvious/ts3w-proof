# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bfae0 (UserToolUtils_ShutdownUserToolManagerImpl)
Paired Ghidra pseudocode: 102BFAE0_UserToolUtils_ShutdownUserToolManagerImpl.c
Window: [0x102bfae0, 0x102bfb30) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bfb30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bfae0: 51 a1 20 0c c7 10 8b 48 08 85 c9 74 38 e8 ce 81
102bfaf0: 00 00 a1 20 0c c7 10 8b 48 08 85 c9 74 27 c7 40
102bfb00: 08 00 00 00 00 8d 41 04 56 8b d0 83 ce ff f0 0f
102bfb10: c1 32 4e 5e 75 0f ba 01 00 00 00 87 10 8b 01 8b
102bfb20: 10 6a 01 ff d2 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bfae0 <.text+0x2beae0>:
102bfae0:	51                                              	push   ecx
102bfae1:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102bfae6:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102bfae9:	85 c9                                           	test   ecx,ecx
102bfaeb:	74 38                                           	je     0x102bfb25
102bfaed:	e8 ce 81 00 00                                  	call   0x102c7cc0
102bfaf2:	a1 20 0c c7 10                                  	mov    eax,ds:0x10c70c20
102bfaf7:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
102bfafa:	85 c9                                           	test   ecx,ecx
102bfafc:	74 27                                           	je     0x102bfb25
102bfafe:	c7 40 08 00 00 00 00                            	mov    DWORD PTR [eax+0x8],0x0
102bfb05:	8d 41 04                                        	lea    eax,[ecx+0x4]
102bfb08:	56                                              	push   esi
102bfb09:	8b d0                                           	mov    edx,eax
102bfb0b:	83 ce ff                                        	or     esi,0xffffffff
102bfb0e:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
102bfb12:	4e                                              	dec    esi
102bfb13:	5e                                              	pop    esi
102bfb14:	75 0f                                           	jne    0x102bfb25
102bfb16:	ba 01 00 00 00                                  	mov    edx,0x1
102bfb1b:	87 10                                           	xchg   DWORD PTR [eax],edx
102bfb1d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
102bfb1f:	8b 10                                           	mov    edx,DWORD PTR [eax]
102bfb21:	6a 01                                           	push   0x1
102bfb23:	ff d2                                           	call   edx
102bfb25:	59                                              	pop    ecx
102bfb26:	c3                                              	ret
102bfb27:	cc                                              	int3
102bfb28:	cc                                              	int3
102bfb29:	cc                                              	int3
102bfb2a:	cc                                              	int3
102bfb2b:	cc                                              	int3
102bfb2c:	cc                                              	int3
102bfb2d:	cc                                              	int3
102bfb2e:	cc                                              	int3
102bfb2f:	cc                                              	int3
