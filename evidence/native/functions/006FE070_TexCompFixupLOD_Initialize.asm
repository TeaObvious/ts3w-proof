# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[006fe070, 006fe0c1]]
006fe070	8bc1	MOV EAX,ECX
006fe072	c700dc0fff00	MOV dword ptr [EAX],0xff0fdc
006fe078	33c9	XOR ECX,ECX
006fe07a	8d5004	LEA EDX,[EAX + 0x4]
006fe07d	870a	XCHG dword ptr [EDX],ECX
006fe07f	8b4c2404	MOV ECX,dword ptr [ESP + 0x4]
006fe083	c70088afff00	MOV dword ptr [EAX],0xffaf88
006fe089	8b11	MOV EDX,dword ptr [ECX]
006fe08b	895008	MOV dword ptr [EAX + 0x8],EDX
006fe08e	8b5104	MOV EDX,dword ptr [ECX + 0x4]
006fe091	89500c	MOV dword ptr [EAX + 0xc],EDX
006fe094	8b5108	MOV EDX,dword ptr [ECX + 0x8]
006fe097	895010	MOV dword ptr [EAX + 0x10],EDX
006fe09a	8b490c	MOV ECX,dword ptr [ECX + 0xc]
006fe09d	894814	MOV dword ptr [EAX + 0x14],ECX
006fe0a0	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
006fe0a4	8b11	MOV EDX,dword ptr [ECX]
006fe0a6	895018	MOV dword ptr [EAX + 0x18],EDX
006fe0a9	8b5104	MOV EDX,dword ptr [ECX + 0x4]
006fe0ac	89501c	MOV dword ptr [EAX + 0x1c],EDX
006fe0af	8b5108	MOV EDX,dword ptr [ECX + 0x8]
006fe0b2	895020	MOV dword ptr [EAX + 0x20],EDX
006fe0b5	8b490c	MOV ECX,dword ptr [ECX + 0xc]
006fe0b8	806028fc	AND byte ptr [EAX + 0x28],0xfc
006fe0bc	894824	MOV dword ptr [EAX + 0x24],ECX
006fe0bf	c20800	RET 0x8
