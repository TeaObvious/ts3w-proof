# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsState_ApplyAuthoredFlagMask
Paired actual annotated Ghidra pseudocode: 007FD650_SacsState_ApplyAuthoredFlagMask.c
Owned ranges: [[007fd650, 007fd7d0]]
Envelope bytes=385

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd650  53  PUSH EBX
007fd651  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
007fd655  56  PUSH ESI
007fd656  8bf1  MOV ESI,ECX
007fd658  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007fd65c  f6c101  TEST CL,0x1
007fd65f  742e  JZ 0x007fd68f
007fd661  8ac3  MOV AL,BL
007fd663  2401  AND AL,0x1
007fd665  38464f  CMP byte ptr [ESI + 0x4f],AL
007fd668  7425  JZ 0x007fd68f
007fd66a  84c0  TEST AL,AL
007fd66c  88464f  MOV byte ptr [ESI + 0x4f],AL
007fd66f  740a  JZ 0x007fd67b
007fd671  c6464d00  MOV byte ptr [ESI + 0x4d],0x0
007fd675  c6464e01  MOV byte ptr [ESI + 0x4e],0x1
007fd679  eb14  JMP 0x007fd68f
007fd67b  c6465000  MOV byte ptr [ESI + 0x50],0x0
007fd67f  c6465100  MOV byte ptr [ESI + 0x51],0x0
007fd683  c6465200  MOV byte ptr [ESI + 0x52],0x0
007fd687  c6465300  MOV byte ptr [ESI + 0x53],0x0
007fd68b  c6465400  MOV byte ptr [ESI + 0x54],0x0
007fd68f  f6c102  TEST CL,0x2
007fd692  7435  JZ 0x007fd6c9
007fd694  8bc3  MOV EAX,EBX
007fd696  d1e8  SHR EAX,0x1
007fd698  2401  AND AL,0x1
007fd69a  884651  MOV byte ptr [ESI + 0x51],AL
007fd69d  742a  JZ 0x007fd6c9
007fd69f  807e4f01  CMP byte ptr [ESI + 0x4f],0x1
007fd6a3  740c  JZ 0x007fd6b1
007fd6a5  c6464f01  MOV byte ptr [ESI + 0x4f],0x1
007fd6a9  c6464d00  MOV byte ptr [ESI + 0x4d],0x0
007fd6ad  c6464e01  MOV byte ptr [ESI + 0x4e],0x1
007fd6b1  807e5300  CMP byte ptr [ESI + 0x53],0x0
007fd6b5  7404  JZ 0x007fd6bb
007fd6b7  c6465300  MOV byte ptr [ESI + 0x53],0x0
007fd6bb  807e5400  CMP byte ptr [ESI + 0x54],0x0
007fd6bf  7404  JZ 0x007fd6c5
007fd6c1  c6465400  MOV byte ptr [ESI + 0x54],0x0
007fd6c5  c6465000  MOV byte ptr [ESI + 0x50],0x0
007fd6c9  f6c104  TEST CL,0x4
007fd6cc  7436  JZ 0x007fd704
007fd6ce  8bc3  MOV EAX,EBX
007fd6d0  c1e802  SHR EAX,0x2
007fd6d3  2401  AND AL,0x1
007fd6d5  884652  MOV byte ptr [ESI + 0x52],AL
007fd6d8  742a  JZ 0x007fd704
007fd6da  807e4f01  CMP byte ptr [ESI + 0x4f],0x1
007fd6de  740c  JZ 0x007fd6ec
007fd6e0  c6464f01  MOV byte ptr [ESI + 0x4f],0x1
007fd6e4  c6464d00  MOV byte ptr [ESI + 0x4d],0x0
007fd6e8  c6464e01  MOV byte ptr [ESI + 0x4e],0x1
007fd6ec  807e5300  CMP byte ptr [ESI + 0x53],0x0
007fd6f0  7404  JZ 0x007fd6f6
007fd6f2  c6465300  MOV byte ptr [ESI + 0x53],0x0
007fd6f6  807e5400  CMP byte ptr [ESI + 0x54],0x0
007fd6fa  7404  JZ 0x007fd700
007fd6fc  c6465400  MOV byte ptr [ESI + 0x54],0x0
007fd700  c6465000  MOV byte ptr [ESI + 0x50],0x0
007fd704  f6c108  TEST CL,0x8
007fd707  7432  JZ 0x007fd73b
007fd709  8bc3  MOV EAX,EBX
007fd70b  c1e803  SHR EAX,0x3
007fd70e  2401  AND AL,0x1
007fd710  884650  MOV byte ptr [ESI + 0x50],AL
007fd713  7426  JZ 0x007fd73b
007fd715  807e4f01  CMP byte ptr [ESI + 0x4f],0x1
007fd719  740c  JZ 0x007fd727
007fd71b  c6464f01  MOV byte ptr [ESI + 0x4f],0x1
007fd71f  c6464d00  MOV byte ptr [ESI + 0x4d],0x0
007fd723  c6464e01  MOV byte ptr [ESI + 0x4e],0x1
007fd727  807e5300  CMP byte ptr [ESI + 0x53],0x0
007fd72b  7404  JZ 0x007fd731
007fd72d  c6465300  MOV byte ptr [ESI + 0x53],0x0
007fd731  807e5400  CMP byte ptr [ESI + 0x54],0x0
007fd735  7404  JZ 0x007fd73b
007fd737  c6465400  MOV byte ptr [ESI + 0x54],0x0
007fd73b  f6c110  TEST CL,0x10
007fd73e  7416  JZ 0x007fd756
007fd740  8bc3  MOV EAX,EBX
007fd742  c1e804  SHR EAX,0x4
007fd745  2501ffffff  AND EAX,0xffffff01
007fd74a  50  PUSH EAX
007fd74b  8bce  MOV ECX,ESI
007fd74d  e85efeffff  CALL 0x007fd5b0
007fd752  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007fd756  f6c120  TEST CL,0x20
007fd759  7417  JZ 0x007fd772
007fd75b  8bcb  MOV ECX,EBX
007fd75d  c1e905  SHR ECX,0x5
007fd760  81e101ffffff  AND ECX,0xffffff01
007fd766  51  PUSH ECX
007fd767  8bce  MOV ECX,ESI
007fd769  e812fdffff  CALL 0x007fd480
007fd76e  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007fd772  f6c140  TEST CL,0x40
007fd775  741d  JZ 0x007fd794
007fd777  8bc3  MOV EAX,EBX
007fd779  c1e806  SHR EAX,0x6
007fd77c  2401  AND AL,0x1
007fd77e  38464c  CMP byte ptr [ESI + 0x4c],AL
007fd781  7411  JZ 0x007fd794
007fd783  84c0  TEST AL,AL
007fd785  88464c  MOV byte ptr [ESI + 0x4c],AL
007fd788  740a  JZ 0x007fd794
007fd78a  807e4d00  CMP byte ptr [ESI + 0x4d],0x0
007fd78e  7404  JZ 0x007fd794
007fd790  c6464d00  MOV byte ptr [ESI + 0x4d],0x0
007fd794  84c9  TEST CL,CL
007fd796  7917  JNS 0x007fd7af
007fd798  8bd3  MOV EDX,EBX
007fd79a  c1ea07  SHR EDX,0x7
007fd79d  81e201ffffff  AND EDX,0xffffff01
007fd7a3  52  PUSH EDX
007fd7a4  8bce  MOV ECX,ESI
007fd7a6  e8e5fbffff  CALL 0x007fd390
007fd7ab  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007fd7af  f7c100010000  TEST ECX,0x100
007fd7b5  740e  JZ 0x007fd7c5
007fd7b7  c1eb08  SHR EBX,0x8
007fd7ba  80e301  AND BL,0x1
007fd7bd  385e4e  CMP byte ptr [ESI + 0x4e],BL
007fd7c0  7403  JZ 0x007fd7c5
007fd7c2  885e4e  MOV byte ptr [ESI + 0x4e],BL
007fd7c5  8bce  MOV ECX,ESI
007fd7c7  e834faffff  CALL 0x007fd200
007fd7cc  5e  POP ESI
007fd7cd  5b  POP EBX
007fd7ce  c20800  RET 0x8
Owned instructions=130 owned bytes=385 gap/nonowned bytes=0
