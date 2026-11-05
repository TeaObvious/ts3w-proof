# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052dac0 (Animation_EnableDisableForceDiscontinuousOnParenting)
Paired Ghidra pseudocode: 1052DAC0_Animation_EnableDisableForceDiscontinuousOnParenting.c
Window: [0x1052dac0, 0x1052db40) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052db40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052dac0: 51 56 e8 d9 c6 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052dad0: 52 8b c8 e8 d8 d0 1f 00 8b f0 85 f6 74 56 57 8d
1052dae0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c4
1052daf0: 0c c8 10 52 8b ce e8 a5 92 1f 00 85 c0 74 17 80
1052db00: 7c 24 18 00 74 09 81 60 2c ff ff fd ff eb 07 81
1052db10: 48 2c 00 00 02 00 8b c7 83 c9 ff f0 0f c1 08 49
1052db20: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
1052db30: ce ff d2 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052dac0 <.text+0x52cac0>:
1052dac0:	51                                              	push   ecx
1052dac1:	56                                              	push   esi
1052dac2:	e8 d9 c6 1f 00                                  	call   0x1072a1a0
1052dac7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052dacb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052dacf:	51                                              	push   ecx
1052dad0:	52                                              	push   edx
1052dad1:	8b c8                                           	mov    ecx,eax
1052dad3:	e8 d8 d0 1f 00                                  	call   0x1072abb0
1052dad8:	8b f0                                           	mov    esi,eax
1052dada:	85 f6                                           	test   esi,esi
1052dadc:	74 56                                           	je     0x1052db34
1052dade:	57                                              	push   edi
1052dadf:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052dae2:	8b c7                                           	mov    eax,edi
1052dae4:	b9 01 00 00 00                                  	mov    ecx,0x1
1052dae9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052daed:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052daf3:	52                                              	push   edx
1052daf4:	8b ce                                           	mov    ecx,esi
1052daf6:	e8 a5 92 1f 00                                  	call   0x10726da0
1052dafb:	85 c0                                           	test   eax,eax
1052dafd:	74 17                                           	je     0x1052db16
1052daff:	80 7c 24 18 00                                  	cmp    BYTE PTR [esp+0x18],0x0
1052db04:	74 09                                           	je     0x1052db0f
1052db06:	81 60 2c ff ff fd ff                            	and    DWORD PTR [eax+0x2c],0xfffdffff
1052db0d:	eb 07                                           	jmp    0x1052db16
1052db0f:	81 48 2c 00 00 02 00                            	or     DWORD PTR [eax+0x2c],0x20000
1052db16:	8b c7                                           	mov    eax,edi
1052db18:	83 c9 ff                                        	or     ecx,0xffffffff
1052db1b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052db1f:	49                                              	dec    ecx
1052db20:	75 11                                           	jne    0x1052db33
1052db22:	ba 01 00 00 00                                  	mov    edx,0x1
1052db27:	87 17                                           	xchg   DWORD PTR [edi],edx
1052db29:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052db2b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052db2d:	6a 01                                           	push   0x1
1052db2f:	8b ce                                           	mov    ecx,esi
1052db31:	ff d2                                           	call   edx
1052db33:	5f                                              	pop    edi
1052db34:	5e                                              	pop    esi
1052db35:	59                                              	pop    ecx
1052db36:	c3                                              	ret
1052db37:	cc                                              	int3
1052db38:	cc                                              	int3
1052db39:	cc                                              	int3
1052db3a:	cc                                              	int3
1052db3b:	cc                                              	int3
1052db3c:	cc                                              	int3
1052db3d:	cc                                              	int3
1052db3e:	cc                                              	int3
1052db3f:	cc                                              	int3
