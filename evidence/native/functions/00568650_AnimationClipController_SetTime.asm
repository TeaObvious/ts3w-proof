# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568650, 0x005686f8); analyst name AnimationClipController_SetTime.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568650 <.text+0x167650>:
  568650:	f3 0f 10 44 24 04    	movss  xmm0,DWORD PTR [esp+0x4]
  568656:	8b 81 ec 05 00 00    	mov    eax,DWORD PTR [ecx+0x5ec]
  56865c:	ba 01 00 00 00       	mov    edx,0x1
  568661:	3b c2                	cmp    eax,edx
  568663:	f3 0f 11 81 e4 05 00 00 	movss  DWORD PTR [ecx+0x5e4],xmm0
  56866b:	f3 0f 11 81 dc 05 00 00 	movss  DWORD PTR [ecx+0x5dc],xmm0
  568673:	f3 0f 11 81 e0 05 00 00 	movss  DWORD PTR [ecx+0x5e0],xmm0
  56867b:	75 1f                	jne    0x56869c
  56867d:	0f 2f 81 e8 05 00 00 	comiss xmm0,DWORD PTR [ecx+0x5e8]
  568684:	76 09                	jbe    0x56868f
  568686:	89 91 f0 05 00 00    	mov    DWORD PTR [ecx+0x5f0],edx
  56868c:	c2 04 00             	ret    0x4
  56868f:	c7 81 f0 05 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x5f0],0x0
  568699:	c2 04 00             	ret    0x4
  56869c:	f3 0f 10 89 e8 05 00 00 	movss  xmm1,DWORD PTR [ecx+0x5e8]
  5686a4:	0f 2f c1             	comiss xmm0,xmm1
  5686a7:	c7 81 f0 05 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x5f0],0x0
  5686b1:	76 30                	jbe    0x5686e3
  5686b3:	eb 0b                	jmp    0x5686c0
  5686b5:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  5686bc:	8d 64 24 00          	lea    esp,[esp+0x0]
  5686c0:	f3 0f 10 81 dc 05 00 00 	movss  xmm0,DWORD PTR [ecx+0x5dc]
  5686c8:	01 91 f0 05 00 00    	add    DWORD PTR [ecx+0x5f0],edx
  5686ce:	f3 0f 5c c1          	subss  xmm0,xmm1
  5686d2:	f3 0f 11 81 dc 05 00 00 	movss  DWORD PTR [ecx+0x5dc],xmm0
  5686da:	0f 2f 81 e8 05 00 00 	comiss xmm0,DWORD PTR [ecx+0x5e8]
  5686e1:	77 dd                	ja     0x5686c0
  5686e3:	85 c0                	test   eax,eax
  5686e5:	74 0e                	je     0x5686f5
  5686e7:	39 81 f0 05 00 00    	cmp    DWORD PTR [ecx+0x5f0],eax
  5686ed:	76 06                	jbe    0x5686f5
  5686ef:	89 81 f0 05 00 00    	mov    DWORD PTR [ecx+0x5f0],eax
  5686f5:	c2 04 00             	ret    0x4
