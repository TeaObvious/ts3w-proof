# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f570 (CameraWrap_Destroy)
Paired Ghidra pseudocode: 1098F570_CameraWrap_Destroy.c
Window: [0x1098f570, 0x1098f5a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f5a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f570: 8b 4c 24 04 8d 41 04 56 8b d0 83 ce ff f0 0f c1
1098f580: 32 4e 5e 75 13 ba 01 00 00 00 87 10 85 c9 74 08
1098f590: 8b 01 8b 10 6a 01 ff d2 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f570 <.text+0x98e570>:
1098f570:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098f574:	8d 41 04                                        	lea    eax,[ecx+0x4]
1098f577:	56                                              	push   esi
1098f578:	8b d0                                           	mov    edx,eax
1098f57a:	83 ce ff                                        	or     esi,0xffffffff
1098f57d:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
1098f581:	4e                                              	dec    esi
1098f582:	5e                                              	pop    esi
1098f583:	75 13                                           	jne    0x1098f598
1098f585:	ba 01 00 00 00                                  	mov    edx,0x1
1098f58a:	87 10                                           	xchg   DWORD PTR [eax],edx
1098f58c:	85 c9                                           	test   ecx,ecx
1098f58e:	74 08                                           	je     0x1098f598
1098f590:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098f592:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098f594:	6a 01                                           	push   0x1
1098f596:	ff d2                                           	call   edx
1098f598:	c3                                              	ret
1098f599:	cc                                              	int3
1098f59a:	cc                                              	int3
1098f59b:	cc                                              	int3
1098f59c:	cc                                              	int3
1098f59d:	cc                                              	int3
1098f59e:	cc                                              	int3
1098f59f:	cc                                              	int3
