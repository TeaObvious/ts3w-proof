# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; SpeedTree_GetVerticalBillboardFadeAngles; owned ranges [[007b8b50, 007b8b70]]
007b8b50	f30f10051c421601	MOVSS XMM0,dword ptr [0x0116421c]
007b8b58	8b442404	MOV EAX,dword ptr [ESP + 0x4]
007b8b5c	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
007b8b60	f30f1100	MOVSS dword ptr [EAX],XMM0
007b8b64	f30f100520421601	MOVSS XMM0,dword ptr [0x01164220]
007b8b6c	f30f1101	MOVSS dword ptr [ECX],XMM0
007b8b70	c3	RET
