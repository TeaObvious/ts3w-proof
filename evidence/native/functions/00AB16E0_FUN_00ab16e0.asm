# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00ab16e0,00ab1817]. 312 owned bytes/69 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Lot-local XZ to world XZ transform. ECX lot plus localX/localZ/outputX/outputZ, RET10 void. Original angle+1A0 uses FSIN/FCOS with binary32 stores; MULPS/ADDPS combine separate rounded products, then add originX+190 and originZ+198. worldX=originX+sin*z+cos*x; worldZ=originZ-sin*x+cos*z. No Y/level or edge allowance; no FMA/extended-precision equivalence claim.

00ab16e0	55	PUSH EBP
00ab16e1	8bec	MOV EBP, ESP
00ab16e3	83e4f0	AND ESP, 0xfffffff0
00ab16e6	83ec30	SUB ESP, 0x30
00ab16e9	d981a0010000	FLD float ptr [ECX + 0x1a0]
00ab16ef	f30f104d0c	MOVSS XMM1, dword ptr [EBP + 0xc]
00ab16f4	d9c0	FLD ST0
00ab16f6	f30f105508	MOVSS XMM2, dword ptr [EBP + 0x8]
00ab16fb	d9fe	FSIN
00ab16fd	8b4510	MOV EAX, dword ptr [EBP + 0x10]
00ab1700	d9542408	FST float ptr [ESP + 0x8]
00ab1704	d9c9	FXCH
00ab1706	d9ff	FCOS
00ab1708	f30f10442408	MOVSS XMM0, dword ptr [ESP + 0x8]
00ab170e	f30f1144241c	MOVSS dword ptr [ESP + 0x1c], XMM0
00ab1714	f30f10442408	MOVSS XMM0, dword ptr [ESP + 0x8]
00ab171a	f30f11442418	MOVSS dword ptr [ESP + 0x18], XMM0
00ab1720	d95c2404	FSTP float ptr [ESP + 0x4]
00ab1724	d9e0	FCHS
00ab1726	d95c240c	FSTP float ptr [ESP + 0xc]
00ab172a	f30f1044240c	MOVSS XMM0, dword ptr [ESP + 0xc]
00ab1730	f30f11442414	MOVSS dword ptr [ESP + 0x14], XMM0
00ab1736	f30f10442408	MOVSS XMM0, dword ptr [ESP + 0x8]
00ab173c	f30f11442410	MOVSS dword ptr [ESP + 0x10], XMM0
00ab1742	0f28442410	MOVAPS XMM0, xmmword ptr [ESP + 0x10]
00ab1747	f30f11542414	MOVSS dword ptr [ESP + 0x14], XMM2
00ab174d	f30f114c241c	MOVSS dword ptr [ESP + 0x1c], XMM1
00ab1753	f30f114c2418	MOVSS dword ptr [ESP + 0x18], XMM1
00ab1759	f30f114c2410	MOVSS dword ptr [ESP + 0x10], XMM1
00ab175f	0f285c2410	MOVAPS XMM3, xmmword ptr [ESP + 0x10]
00ab1764	0f59c3	MULPS XMM0, XMM3
00ab1767	f30f105c2404	MOVSS XMM3, dword ptr [ESP + 0x4]
00ab176d	f30f115c241c	MOVSS dword ptr [ESP + 0x1c], XMM3
00ab1773	f30f105c2404	MOVSS XMM3, dword ptr [ESP + 0x4]
00ab1779	f30f115c2418	MOVSS dword ptr [ESP + 0x18], XMM3
00ab177f	f30f105c2404	MOVSS XMM3, dword ptr [ESP + 0x4]
00ab1785	f30f115c2414	MOVSS dword ptr [ESP + 0x14], XMM3
00ab178b	f30f105c2404	MOVSS XMM3, dword ptr [ESP + 0x4]
00ab1791	f30f115c2410	MOVSS dword ptr [ESP + 0x10], XMM3
00ab1797	0f285c2410	MOVAPS XMM3, xmmword ptr [ESP + 0x10]
00ab179c	f30f1154241c	MOVSS dword ptr [ESP + 0x1c], XMM2
00ab17a2	f30f11542418	MOVSS dword ptr [ESP + 0x18], XMM2
00ab17a8	f30f11542410	MOVSS dword ptr [ESP + 0x10], XMM2
00ab17ae	f30f114c2414	MOVSS dword ptr [ESP + 0x14], XMM1
00ab17b4	0f284c2410	MOVAPS XMM1, xmmword ptr [ESP + 0x10]
00ab17b9	0f59d9	MULPS XMM3, XMM1
00ab17bc	0f58c3	ADDPS XMM0, XMM3
00ab17bf	0f29442420	MOVAPS xmmword ptr [ESP + 0x20], XMM0
00ab17c4	0f288990010000	MOVAPS XMM1, xmmword ptr [ECX + 0x190]
00ab17cb	0f28d1	MOVAPS XMM2, XMM1
00ab17ce	0fc6d100	SHUFPS XMM2, XMM1, 0x0
00ab17d2	0f28c8	MOVAPS XMM1, XMM0
00ab17d5	0fc6c800	SHUFPS XMM1, XMM0, 0x0
00ab17d9	0f58d1	ADDPS XMM2, XMM1
00ab17dc	0f29542410	MOVAPS xmmword ptr [ESP + 0x10], XMM2
00ab17e1	f30f104c2410	MOVSS XMM1, dword ptr [ESP + 0x10]
00ab17e7	f30f1108	MOVSS dword ptr [EAX], XMM1
00ab17eb	0f288990010000	MOVAPS XMM1, xmmword ptr [ECX + 0x190]
00ab17f2	8b4d14	MOV ECX, dword ptr [EBP + 0x14]
00ab17f5	0f28d1	MOVAPS XMM2, XMM1
00ab17f8	0fc6c055	SHUFPS XMM0, XMM0, 0x55
00ab17fc	0fc6d1aa	SHUFPS XMM2, XMM1, 0xaa
00ab1800	0f58d0	ADDPS XMM2, XMM0
00ab1803	0f29542410	MOVAPS xmmword ptr [ESP + 0x10], XMM2
00ab1808	f30f10442410	MOVSS XMM0, dword ptr [ESP + 0x10]
00ab180e	f30f1101	MOVSS dword ptr [ECX], XMM0
00ab1812	8be5	MOV ESP, EBP
00ab1814	5d	POP EBP
00ab1815	c21000	RET 0x10
