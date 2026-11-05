# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052db40 (Animation_EnableDisableLargeAnimalEvalNode)
Paired Ghidra pseudocode: 1052DB40_Animation_EnableDisableLargeAnimalEvalNode.c
Window: [0x1052db40, 0x1052dbc0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052dbc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052db40: 51 56 e8 59 c6 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052db50: 52 8b c8 e8 58 d0 1f 00 8b f0 85 f6 74 56 57 8d
1052db60: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c4
1052db70: 0c c8 10 52 8b ce e8 25 92 1f 00 85 c0 74 17 80
1052db80: 7c 24 18 00 74 09 81 60 2c ff ff fb ff eb 07 81
1052db90: 48 2c 00 00 04 00 8b c7 83 c9 ff f0 0f c1 08 49
1052dba0: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
1052dbb0: ce ff d2 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052db40 <.text+0x52cb40>:
1052db40:	51                                              	push   ecx
1052db41:	56                                              	push   esi
1052db42:	e8 59 c6 1f 00                                  	call   0x1072a1a0
1052db47:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052db4b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052db4f:	51                                              	push   ecx
1052db50:	52                                              	push   edx
1052db51:	8b c8                                           	mov    ecx,eax
1052db53:	e8 58 d0 1f 00                                  	call   0x1072abb0
1052db58:	8b f0                                           	mov    esi,eax
1052db5a:	85 f6                                           	test   esi,esi
1052db5c:	74 56                                           	je     0x1052dbb4
1052db5e:	57                                              	push   edi
1052db5f:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052db62:	8b c7                                           	mov    eax,edi
1052db64:	b9 01 00 00 00                                  	mov    ecx,0x1
1052db69:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052db6d:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052db73:	52                                              	push   edx
1052db74:	8b ce                                           	mov    ecx,esi
1052db76:	e8 25 92 1f 00                                  	call   0x10726da0
1052db7b:	85 c0                                           	test   eax,eax
1052db7d:	74 17                                           	je     0x1052db96
1052db7f:	80 7c 24 18 00                                  	cmp    BYTE PTR [esp+0x18],0x0
1052db84:	74 09                                           	je     0x1052db8f
1052db86:	81 60 2c ff ff fb ff                            	and    DWORD PTR [eax+0x2c],0xfffbffff
1052db8d:	eb 07                                           	jmp    0x1052db96
1052db8f:	81 48 2c 00 00 04 00                            	or     DWORD PTR [eax+0x2c],0x40000
1052db96:	8b c7                                           	mov    eax,edi
1052db98:	83 c9 ff                                        	or     ecx,0xffffffff
1052db9b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052db9f:	49                                              	dec    ecx
1052dba0:	75 11                                           	jne    0x1052dbb3
1052dba2:	ba 01 00 00 00                                  	mov    edx,0x1
1052dba7:	87 17                                           	xchg   DWORD PTR [edi],edx
1052dba9:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052dbab:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052dbad:	6a 01                                           	push   0x1
1052dbaf:	8b ce                                           	mov    ecx,esi
1052dbb1:	ff d2                                           	call   edx
1052dbb3:	5f                                              	pop    edi
1052dbb4:	5e                                              	pop    esi
1052dbb5:	59                                              	pop    ecx
1052dbb6:	c3                                              	ret
1052dbb7:	cc                                              	int3
1052dbb8:	cc                                              	int3
1052dbb9:	cc                                              	int3
1052dbba:	cc                                              	int3
1052dbbb:	cc                                              	int3
1052dbbc:	cc                                              	int3
1052dbbd:	cc                                              	int3
1052dbbe:	cc                                              	int3
1052dbbf:	cc                                              	int3
