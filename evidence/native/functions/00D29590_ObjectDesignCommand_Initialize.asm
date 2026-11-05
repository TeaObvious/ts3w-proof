# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00d29590, 00d295cb]]
00d29590	56	PUSH ESI
00d29591	8bf1	MOV ESI,ECX
00d29593	e86819ffff	CALL 0x00d1af00
00d29598	c706686e0801	MOV dword ptr [ESI],0x1086e68
00d2959e	c746088c700801	MOV dword ptr [ESI + 0x8],0x108708c
00d295a5	8d4654	LEA EAX,[ESI + 0x54]
00d295a8	33c9	XOR ECX,ECX
00d295aa	894804	MOV dword ptr [EAX + 0x4],ECX
00d295ad	894808	MOV dword ptr [EAX + 0x8],ECX
00d295b0	89480c	MOV dword ptr [EAX + 0xc],ECX
00d295b3	c74668b86e0801	MOV dword ptr [ESI + 0x68],0x1086eb8
00d295ba	894658	MOV dword ptr [ESI + 0x58],EAX
00d295bd	8900	MOV dword ptr [EAX],EAX
00d295bf	894e5c	MOV dword ptr [ESI + 0x5c],ECX
00d295c2	884e60	MOV byte ptr [ESI + 0x60],CL
00d295c5	894e64	MOV dword ptr [ESI + 0x64],ECX
00d295c8	8bc6	MOV EAX,ESI
00d295ca	5e	POP ESI
00d295cb	c3	RET
