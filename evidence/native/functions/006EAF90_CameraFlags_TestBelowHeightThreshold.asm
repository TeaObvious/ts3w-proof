# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual Ghidra function metadata
; entry=006eaf90 name="CameraFlags_TestBelowHeightThreshold" source=USER_DEFINED signatureSource=ANALYSIS prototype="undefined4 __fastcall CameraFlags_TestBelowHeightThreshold(int param_1)" cc="__fastcall" custom=false purge=0 return=/undefined4 returnStorage=EAX:4 inline=false noreturn=false thunk=false external=false varargs=false callfixup=null bodyMetadata=[[006eaf90, 006eaff4]] bodyAddressCount=101
; PARAM 0 "param_1" type=/int storage=ECX:4 source=DEFAULT firstUse=0 auto=false
; LOCAL "local_20" type=/undefined4 storage=Stack[-0x20]:4 source=DEFAULT firstUse=0
; LOCAL "local_30" type=/undefined4 storage=Stack[-0x30]:4 source=DEFAULT firstUse=0
; 
; Actual entry PLATE: PC1.67, full101B/30 instructions checked against pristine PE. ECX receiver; returns EAX1 only when byte+520 nonzero, bytes+515/+270 zero, pointer+24 nonnull and camera float+64 strictly below receiver float+554. COMISS/JBE rejects unordered comparison. Other paths return EAX0; plain RET. Upstream flag identities remain unexpanded. No ABI/type change.
006eaf90  55  PUSH EBP
006eaf91  8bec  MOV EBP,ESP
006eaf93  83e4f0  AND ESP,0xfffffff0
006eaf96  83ec20  SUB ESP,0x20
006eaf99  80b92005000000  CMP byte ptr [ECX + 0x520],0x0
006eafa0  744d  JZ 0x006eafef
006eafa2  80b91505000000  CMP byte ptr [ECX + 0x515],0x0
006eafa9  7544  JNZ 0x006eafef
006eafab  80b97002000000  CMP byte ptr [ECX + 0x270],0x0
006eafb2  753b  JNZ 0x006eafef
006eafb4  8b4124  MOV EAX,dword ptr [ECX + 0x24]
006eafb7  85c0  TEST EAX,EAX
006eafb9  7434  JZ 0x006eafef
006eafbb  0f284060  MOVAPS XMM0,xmmword ptr [EAX + 0x60]
006eafbf  0fc6c055  SHUFPS XMM0,XMM0,0x55
006eafc3  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006eafc9  f30f108154050000  MOVSS XMM0,dword ptr [ECX + 0x554]
006eafd1  0fc6c000  SHUFPS XMM0,XMM0,0x0
006eafd5  f30f110424  MOVSS dword ptr [ESP],XMM0
006eafda  f30f100424  MOVSS XMM0,dword ptr [ESP]
006eafdf  0f2f442410  COMISS XMM0,dword ptr [ESP + 0x10]
006eafe4  7609  JBE 0x006eafef
006eafe6  b801000000  MOV EAX,0x1
006eafeb  8be5  MOV ESP,EBP
006eafed  5d  POP EBP
006eafee  c3  RET
006eafef  33c0  XOR EAX,EAX
006eaff1  8be5  MOV ESP,EBP
006eaff3  5d  POP EBP
006eaff4  c3  RET
