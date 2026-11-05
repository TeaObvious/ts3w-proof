# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; SpeedTree_GetCameraAzimuthPitchDegrees; owned ranges [[007b87a0, 007b87c0]]
007b87a0	f30f100530961d01	MOVSS XMM0,dword ptr [0x011d9630]
007b87a8	8b442404	MOV EAX,dword ptr [ESP + 0x4]
007b87ac	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
007b87b0	f30f1100	MOVSS dword ptr [EAX],XMM0
007b87b4	f30f100534961d01	MOVSS XMM0,dword ptr [0x011d9634]
007b87bc	f30f1101	MOVSS dword ptr [ECX],XMM0
007b87c0	c3	RET
