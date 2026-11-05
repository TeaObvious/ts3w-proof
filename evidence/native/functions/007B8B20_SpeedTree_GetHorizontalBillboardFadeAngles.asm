# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; SpeedTree_GetHorizontalBillboardFadeAngles; owned ranges [[007b8b20, 007b8b40]]
007b8b20	f30f100510421601	MOVSS XMM0,dword ptr [0x01164210]
007b8b28	8b442404	MOV EAX,dword ptr [ESP + 0x4]
007b8b2c	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
007b8b30	f30f1100	MOVSS dword ptr [EAX],XMM0
007b8b34	f30f100514421601	MOVSS XMM0,dword ptr [0x01164214]
007b8b3c	f30f1101	MOVSS dword ptr [ECX],XMM0
007b8b40	c3	RET
