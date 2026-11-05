# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654ba0 (Audio_SetSoundArrayGainImpl)
Paired Ghidra pseudocode: 10654BA0_Audio_SetSoundArrayGainImpl.c
Window: [0x10654ba0, 0x10654c10) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654ba0: a1 a0 d4 c7 10 85 c0 56 57 74 53 8d b0 30 84 fd
10654bb0: ff 85 f6 74 49 8b 7c 24 0c 85 ff 74 41 8b 06 8b
10654bc0: 50 44 68 e5 f7 c8 0c 8b ce ff d2 8b 06 8b 50 4c
10654bd0: 57 68 85 53 47 03 8b ce ff d2 d9 44 24 10 8b 06
10654be0: 8b 50 48 51 d9 1c 24 68 a4 53 47 03 8b ce ff d2
10654bf0: 8b 06 8b 50 68 8b ce ff d2 5f b0 01 5e c3 5f 32
10654c00: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10654ba0 <.text+0x653ba0>:
10654ba0:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
10654ba5:	85 c0                                           	test   eax,eax
10654ba7:	56                                              	push   esi
10654ba8:	57                                              	push   edi
10654ba9:	74 53                                           	je     0x10654bfe
10654bab:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
10654bb1:	85 f6                                           	test   esi,esi
10654bb3:	74 49                                           	je     0x10654bfe
10654bb5:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
10654bb9:	85 ff                                           	test   edi,edi
10654bbb:	74 41                                           	je     0x10654bfe
10654bbd:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654bbf:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10654bc2:	68 e5 f7 c8 0c                                  	push   0xcc8f7e5
10654bc7:	8b ce                                           	mov    ecx,esi
10654bc9:	ff d2                                           	call   edx
10654bcb:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654bcd:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654bd0:	57                                              	push   edi
10654bd1:	68 85 53 47 03                                  	push   0x3475385
10654bd6:	8b ce                                           	mov    ecx,esi
10654bd8:	ff d2                                           	call   edx
10654bda:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10654bde:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654be0:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
10654be3:	51                                              	push   ecx
10654be4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10654be7:	68 a4 53 47 03                                  	push   0x34753a4
10654bec:	8b ce                                           	mov    ecx,esi
10654bee:	ff d2                                           	call   edx
10654bf0:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654bf2:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
10654bf5:	8b ce                                           	mov    ecx,esi
10654bf7:	ff d2                                           	call   edx
10654bf9:	5f                                              	pop    edi
10654bfa:	b0 01                                           	mov    al,0x1
10654bfc:	5e                                              	pop    esi
10654bfd:	c3                                              	ret
10654bfe:	5f                                              	pop    edi
10654bff:	32 c0                                           	xor    al,al
10654c01:	5e                                              	pop    esi
10654c02:	c3                                              	ret
10654c03:	cc                                              	int3
10654c04:	cc                                              	int3
10654c05:	cc                                              	int3
10654c06:	cc                                              	int3
10654c07:	cc                                              	int3
10654c08:	cc                                              	int3
10654c09:	cc                                              	int3
10654c0a:	cc                                              	int3
10654c0b:	cc                                              	int3
10654c0c:	cc                                              	int3
10654c0d:	cc                                              	int3
10654c0e:	cc                                              	int3
10654c0f:	cc                                              	int3
