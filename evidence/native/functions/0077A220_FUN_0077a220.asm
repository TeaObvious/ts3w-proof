# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

0077a220  8bc1  MOV EAX,ECX
0077a222  c7001cc90601  MOV dword ptr [EAX],0x106c91c
0077a228  33c9  XOR ECX,ECX
0077a22a  8d5004  LEA EDX,[EAX + 0x4]
0077a22d  870a  XCHG dword ptr [EDX],ECX
0077a22f  8b542408  MOV EDX,dword ptr [ESP + 0x8]
0077a233  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077a237  894808  MOV dword ptr [EAX + 0x8],ECX
0077a23a  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0077a23e  89500c  MOV dword ptr [EAX + 0xc],EDX
0077a241  8a542410  MOV DL,byte ptr [ESP + 0x10]
0077a245  894810  MOV dword ptr [EAX + 0x10],ECX
0077a248  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
0077a24c  885014  MOV byte ptr [EAX + 0x14],DL
0077a24f  8b542418  MOV EDX,dword ptr [ESP + 0x18]
0077a253  894818  MOV dword ptr [EAX + 0x18],ECX
0077a256  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
0077a25a  89501c  MOV dword ptr [EAX + 0x1c],EDX
0077a25d  8a542420  MOV DL,byte ptr [ESP + 0x20]
0077a261  894820  MOV dword ptr [EAX + 0x20],ECX
0077a264  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
0077a268  885024  MOV byte ptr [EAX + 0x24],DL
0077a26b  8b542428  MOV EDX,dword ptr [ESP + 0x28]
0077a26f  c7001cc90601  MOV dword ptr [EAX],0x106c91c
0077a275  894828  MOV dword ptr [EAX + 0x28],ECX
0077a278  89502c  MOV dword ptr [EAX + 0x2c],EDX
0077a27b  c22800  RET 0x28
