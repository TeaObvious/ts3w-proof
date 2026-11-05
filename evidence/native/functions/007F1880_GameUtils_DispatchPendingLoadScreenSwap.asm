# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

007f1880  83ec20  SUB ESP,0x20
007f1883  833d4c9c1d0100  CMP dword ptr [0x011d9c4c],0x0
007f188a  7448  JZ 0x007f18d4
007f188c  e8ff7af7ff  CALL 0x00769390
007f1891  85c0  TEST EAX,EAX
007f1893  743f  JZ 0x007f18d4
007f1895  8b0d4c9c1d01  MOV ECX,dword ptr [0x011d9c4c]
007f189b  8b10  MOV EDX,dword ptr [EAX]
007f189d  8b9234010000  MOV EDX,dword ptr [EDX + 0x134]
007f18a3  6a00  PUSH 0x0
007f18a5  6a00  PUSH 0x0
007f18a7  51  PUSH ECX
007f18a8  8d4c240c  LEA ECX,[ESP + 0xc]
007f18ac  51  PUSH ECX
007f18ad  8bc8  MOV ECX,EAX
007f18af  ffd2  CALL EDX
007f18b1  f644240804  TEST byte ptr [ESP + 0x8],0x4
007f18b6  c70424f4a6fb00  MOV dword ptr [ESP],0xfba6f4
007f18bd  740b  JZ 0x007f18ca
007f18bf  6a00  PUSH 0x0
007f18c1  8d4c2404  LEA ECX,[ESP + 0x4]
007f18c5  e8963ed0ff  CALL 0x004f5760
007f18ca  c7054c9c1d0100000000  MOV dword ptr [0x011d9c4c],0x0
007f18d4  83c420  ADD ESP,0x20
007f18d7  c3  RET
