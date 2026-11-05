# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; SpeedTree_GetHorizontalBillboardTextureRow; owned ranges [[007b8870, 007b8880]]
007b8870	8b4154	MOV EAX,dword ptr [ECX + 0x54]
007b8873	8b4808	MOV ECX,dword ptr [EAX + 0x8]
007b8876	8b500c	MOV EDX,dword ptr [EAX + 0xc]
007b8879	c1e105	SHL ECX,0x5
007b887c	8d4411e0	LEA EAX,[ECX + EDX*0x1 + -0x20]
007b8880	c3	RET
