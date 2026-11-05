# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x005694b0, 0x005694ea); analyst name Animation_ClipControllerStop.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005694b0 <.text+0x1684b0>:
  5694b0:	56                   	push   esi
  5694b1:	8b f1                	mov    esi,ecx
  5694b3:	80 be f8 05 00 00 00 	cmp    BYTE PTR [esi+0x5f8],0x0
  5694ba:	74 26                	je     0x5694e2
  5694bc:	83 be d0 05 00 00 00 	cmp    DWORD PTR [esi+0x5d0],0x0
  5694c3:	74 1d                	je     0x5694e2
  5694c5:	f3 0f 10 86 e8 05 00 00 	movss  xmm0,DWORD PTR [esi+0x5e8]
  5694cd:	f3 0f 58 05 f8 98 f9 00 	addss  xmm0,DWORD PTR ds:0xf998f8
  5694d5:	6a 01                	push   0x1
  5694d7:	51                   	push   ecx
  5694d8:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  5694dd:	e8 fe f8 ff ff       	call   0x568de0
  5694e2:	8b ce                	mov    ecx,esi
  5694e4:	5e                   	pop    esi
  5694e5:	e9 e6 cb ff ff       	jmp    0x5660d0
