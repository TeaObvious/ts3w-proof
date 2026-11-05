# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052dbc0 (Animation_EnableDisableScubaDivingMode)
Paired Ghidra pseudocode: 1052DBC0_Animation_EnableDisableScubaDivingMode.c
Window: [0x1052dbc0, 0x1052dc40) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052dc40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052dbc0: 51 56 e8 d9 c5 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052dbd0: 52 8b c8 e8 d8 cf 1f 00 8b f0 85 f6 74 56 57 8d
1052dbe0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c4
1052dbf0: 0c c8 10 52 8b ce e8 a5 91 1f 00 85 c0 74 17 80
1052dc00: 7c 24 18 00 74 09 81 48 2c 00 00 08 00 eb 07 81
1052dc10: 60 2c ff ff f7 ff 8b c7 83 c9 ff f0 0f c1 08 49
1052dc20: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
1052dc30: ce ff d2 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052dbc0 <.text+0x52cbc0>:
1052dbc0:	51                                              	push   ecx
1052dbc1:	56                                              	push   esi
1052dbc2:	e8 d9 c5 1f 00                                  	call   0x1072a1a0
1052dbc7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052dbcb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052dbcf:	51                                              	push   ecx
1052dbd0:	52                                              	push   edx
1052dbd1:	8b c8                                           	mov    ecx,eax
1052dbd3:	e8 d8 cf 1f 00                                  	call   0x1072abb0
1052dbd8:	8b f0                                           	mov    esi,eax
1052dbda:	85 f6                                           	test   esi,esi
1052dbdc:	74 56                                           	je     0x1052dc34
1052dbde:	57                                              	push   edi
1052dbdf:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052dbe2:	8b c7                                           	mov    eax,edi
1052dbe4:	b9 01 00 00 00                                  	mov    ecx,0x1
1052dbe9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052dbed:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052dbf3:	52                                              	push   edx
1052dbf4:	8b ce                                           	mov    ecx,esi
1052dbf6:	e8 a5 91 1f 00                                  	call   0x10726da0
1052dbfb:	85 c0                                           	test   eax,eax
1052dbfd:	74 17                                           	je     0x1052dc16
1052dbff:	80 7c 24 18 00                                  	cmp    BYTE PTR [esp+0x18],0x0
1052dc04:	74 09                                           	je     0x1052dc0f
1052dc06:	81 48 2c 00 00 08 00                            	or     DWORD PTR [eax+0x2c],0x80000
1052dc0d:	eb 07                                           	jmp    0x1052dc16
1052dc0f:	81 60 2c ff ff f7 ff                            	and    DWORD PTR [eax+0x2c],0xfff7ffff
1052dc16:	8b c7                                           	mov    eax,edi
1052dc18:	83 c9 ff                                        	or     ecx,0xffffffff
1052dc1b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052dc1f:	49                                              	dec    ecx
1052dc20:	75 11                                           	jne    0x1052dc33
1052dc22:	ba 01 00 00 00                                  	mov    edx,0x1
1052dc27:	87 17                                           	xchg   DWORD PTR [edi],edx
1052dc29:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052dc2b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052dc2d:	6a 01                                           	push   0x1
1052dc2f:	8b ce                                           	mov    ecx,esi
1052dc31:	ff d2                                           	call   edx
1052dc33:	5f                                              	pop    edi
1052dc34:	5e                                              	pop    esi
1052dc35:	59                                              	pop    ecx
1052dc36:	c3                                              	ret
1052dc37:	cc                                              	int3
1052dc38:	cc                                              	int3
1052dc39:	cc                                              	int3
1052dc3a:	cc                                              	int3
1052dc3b:	cc                                              	int3
1052dc3c:	cc                                              	int3
1052dc3d:	cc                                              	int3
1052dc3e:	cc                                              	int3
1052dc3f:	cc                                              	int3
