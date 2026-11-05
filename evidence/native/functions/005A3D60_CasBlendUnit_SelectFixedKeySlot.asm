# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual saved annotated owned Listing; CasBlendUnit_SelectFixedKeySlot; owned ranges [[005a3d60, 005a3d78]]
005a3d60	8b442404	MOV EAX,dword ptr [ESP + 0x4]
005a3d64	83f802	CMP EAX,0x2
005a3d67	7206	JC 0x005a3d6f
005a3d69	8d4128	LEA EAX,[ECX + 0x28]
005a3d6c	c20400	RET 0x4
005a3d6f	c1e004	SHL EAX,0x4
005a3d72	8d440828	LEA EAX,[EAX + ECX*0x1 + 0x28]
005a3d76	c20400	RET 0x4
