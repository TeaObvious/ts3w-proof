# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x005f7ab0 (RenderDevice_SubmitGlobalQuad)
Paired actual Ghidra pseudocode: 005F7AB0_RenderDevice_SubmitGlobalQuad.c
Envelope [0x005f7ab0,0x005f7b05); 85 bytes; exact owned ranges: [0x005f7ab0,0x005f7b05)
Owned: 85 original bytes / 30 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
005f7ab0 <original>:
  5f7ab0:	a1 d4 8d 15 01                                  	mov    eax,ds:0x1158dd4
  5f7ab5:	56                                              	push   esi
  5f7ab6:	8b 35 c8 fc 1c 01                               	mov    esi,DWORD PTR ds:0x11cfcc8
  5f7abc:	50                                              	push   eax
  5f7abd:	8b ce                                           	mov    ecx,esi
  5f7abf:	e8 2c 7b 01 00                                  	call   0x60f5f0
  5f7ac4:	8b 0d d8 8d 15 01                               	mov    ecx,DWORD PTR ds:0x1158dd8
  5f7aca:	51                                              	push   ecx
  5f7acb:	8b ce                                           	mov    ecx,esi
  5f7acd:	e8 5e 7c 01 00                                  	call   0x60f730
  5f7ad2:	8b 15 d4 8d 15 01                               	mov    edx,DWORD PTR ds:0x1158dd4
  5f7ad8:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  5f7adb:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  5f7add:	8b 15 dc 8d 15 01                               	mov    edx,DWORD PTR ds:0x1158ddc
  5f7ae3:	51                                              	push   ecx
  5f7ae4:	6a 00                                           	push   0x0
  5f7ae6:	52                                              	push   edx
  5f7ae7:	6a 00                                           	push   0x0
  5f7ae9:	8b ce                                           	mov    ecx,esi
  5f7aeb:	e8 70 7b 01 00                                  	call   0x60f660
  5f7af0:	6a 02                                           	push   0x2
  5f7af2:	6a 00                                           	push   0x0
  5f7af4:	6a 04                                           	push   0x4
  5f7af6:	6a 00                                           	push   0x0
  5f7af8:	6a 00                                           	push   0x0
  5f7afa:	6a 03                                           	push   0x3
  5f7afc:	8b ce                                           	mov    ecx,esi
  5f7afe:	e8 bd 7c 01 00                                  	call   0x60f7c0
  5f7b03:	5e                                              	pop    esi
  5f7b04:	c3                                              	ret
