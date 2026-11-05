# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3PipelineHelper.dll CAW 1.22.10 original-byte window and independent linear disassembly
Export: CreateSpeedTreeConverter at 0x10001da0
Paired annotated Ghidra pseudocode: 10001DA0_CreateSpeedTreeConverter.c
Window: [0x10001da0, 0x10001dcf) (47 bytes, stop exclusive)
Ghidra function-body intervals: [0x10001da0, 0x10001dcf)
Boundary rule: entry through the maximum address of the currently defined Ghidra body.
This is a bounded original-file byte window, not a proof of complete function extent;
it can include gaps, padding, or data. Branches and noncontiguous bodies may extend beyond it.
GNU objdump decodes linearly in Intel syntax; verify control flow against bytes and pseudocode.

ORIGINAL BYTES (16 per line)
10001da0: 6a 00 6a 00 6a 00 6a 00 68 f0 4a 3a 10 6a 08 e8
10001db0: 4c aa 05 00 83 c4 18 85 c0 74 11 c7 00 d8 4a 3a
10001dc0: 10 b9 01 00 00 00 8d 50 04 87 0a c3 33 c0 c3

LINEAR DISASSEMBLY
10001da0 <.text+0xda0>:
10001da0:	6a 00                	push   0x0
10001da2:	6a 00                	push   0x0
10001da4:	6a 00                	push   0x0
10001da6:	6a 00                	push   0x0
10001da8:	68 f0 4a 3a 10       	push   0x103a4af0
10001dad:	6a 08                	push   0x8
10001daf:	e8 4c aa 05 00       	call   0x1005c800
10001db4:	83 c4 18             	add    esp,0x18
10001db7:	85 c0                	test   eax,eax
10001db9:	74 11                	je     0x10001dcc
10001dbb:	c7 00 d8 4a 3a 10    	mov    DWORD PTR [eax],0x103a4ad8
10001dc1:	b9 01 00 00 00       	mov    ecx,0x1
10001dc6:	8d 50 04             	lea    edx,[eax+0x4]
10001dc9:	87 0a                	xchg   DWORD PTR [edx],ecx
10001dcb:	c3                   	ret
10001dcc:	33 c0                	xor    eax,eax
10001dce:	c3                   	ret
