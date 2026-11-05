# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; ShaderSet_SelectVariantFromOptions; owned ranges [[007a0030, 007a0054]]
007a0030	8b44240c	MOV EAX,dword ptr [ESP + 0xc]
007a0034	56	PUSH ESI
007a0035	8bf1	MOV ESI,ECX
007a0037	8b4c240c	MOV ECX,dword ptr [ESP + 0xc]
007a003b	50	PUSH EAX
007a003c	51	PUSH ECX
007a003d	8bce	MOV ECX,ESI
007a003f	e86cffffff	CALL 0x0079ffb0
007a0044	8b542408	MOV EDX,dword ptr [ESP + 0x8]
007a0048	50	PUSH EAX
007a0049	52	PUSH EDX
007a004a	8bce	MOV ECX,ESI
007a004c	e8affdffff	CALL 0x0079fe00
007a0051	5e	POP ESI
007a0052	c20c00	RET 0xc
