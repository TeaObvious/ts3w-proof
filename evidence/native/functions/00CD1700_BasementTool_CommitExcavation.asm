# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementTool_CommitExcavation(void * this)
Owned ranges: [[00cd1700, 00cd17a7]]

00cd1700  81ec80000000  SUB ESP,0x80
00cd1706  53  PUSH EBX
00cd1707  56  PUSH ESI
00cd1708  8bf1  MOV ESI,ECX
00cd170a  8b8e94000000  MOV ECX,dword ptr [ESI + 0x94]
00cd1710  6a01  PUSH 0x1
00cd1712  e8e9ac0400  CALL 0x00d1c400
00cd1717  8d4c2408  LEA ECX,[ESP + 0x8]
00cd171b  e82060e0ff  CALL 0x00ad7740
00cd1720  d98688000000  FLD float ptr [ESI + 0x88]
00cd1726  8b8694000000  MOV EAX,dword ptr [ESI + 0x94]
00cd172c  807e5e00  CMP byte ptr [ESI + 0x5e],0x0
00cd1730  8d4c2408  LEA ECX,[ESP + 0x8]
00cd1734  51  PUSH ECX
00cd1735  6a00  PUSH 0x0
00cd1737  6a00  PUSH 0x0
00cd1739  50  PUSH EAX
00cd173a  51  PUSH ECX
00cd173b  0f94c1  SETZ CL
00cd173e  d91c24  FSTP float ptr [ESP]
00cd1741  8d567f  LEA EDX,[ESI + 0x7f]
00cd1744  52  PUSH EDX
00cd1745  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00cd1748  8d467c  LEA EAX,[ESI + 0x7c]
00cd174b  50  PUSH EAX
00cd174c  51  PUSH ECX
00cd174d  52  PUSH EDX
00cd174e  e83ddffcff  CALL 0x00c9f690
00cd1753  8b8e94000000  MOV ECX,dword ptr [ESI + 0x94]
00cd1759  83c424  ADD ESP,0x24
00cd175c  6a01  PUSH 0x1
00cd175e  8ad8  MOV BL,AL
00cd1760  e8ebac0400  CALL 0x00d1c450
00cd1765  8b442468  MOV EAX,dword ptr [ESP + 0x68]
00cd1769  50  PUSH EAX
00cd176a  8d4c2460  LEA ECX,[ESP + 0x60]
00cd176e  e84d10d8ff  CALL 0x00a527c0
00cd1773  8b4c244c  MOV ECX,dword ptr [ESP + 0x4c]
00cd1777  51  PUSH ECX
00cd1778  8d4c2444  LEA ECX,[ESP + 0x44]
00cd177c  e83f10d8ff  CALL 0x00a527c0
00cd1781  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00cd1785  52  PUSH EDX
00cd1786  8d4c2428  LEA ECX,[ESP + 0x28]
00cd178a  e83110d8ff  CALL 0x00a527c0
00cd178f  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00cd1793  50  PUSH EAX
00cd1794  8d4c240c  LEA ECX,[ESP + 0xc]
00cd1798  e8e30fd8ff  CALL 0x00a52780
00cd179d  5e  POP ESI
00cd179e  8ac3  MOV AL,BL
00cd17a0  5b  POP EBX
00cd17a1  81c480000000  ADD ESP,0x80
00cd17a7  c3  RET
