# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00570030, 0x00570066); analyst name AnimationHoldPoseController_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00570030 <.text+0x16f030>:
  570030:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  570034:	56                   	push   esi
  570035:	50                   	push   eax
  570036:	8b f1                	mov    esi,ecx
  570038:	e8 03 5e ff ff       	call   0x565e40
  57003d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  570041:	85 c0                	test   eax,eax
  570043:	c7 06 e0 31 fc 00    	mov    DWORD PTR [esi],0xfc31e0
  570049:	c7 46 08 d8 31 fc 00 	mov    DWORD PTR [esi+0x8],0xfc31d8
  570050:	c7 46 0c d4 31 fc 00 	mov    DWORD PTR [esi+0xc],0xfc31d4
  570057:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  57005a:	74 04                	je     0x570060
  57005c:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  570060:	8b c6                	mov    eax,esi
  570062:	5e                   	pop    esi
  570063:	c2 08 00             	ret    0x8
