# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 105cc2d0..105cc322; CAW_ResourceReaderOpenFirstOfType
105cc2d0: 8b442404  MOV EAX,dword ptr [ESP + 0x4]
105cc2d4: 56  PUSH ESI
105cc2d5: 57  PUSH EDI
105cc2d6: 8bf1  MOV ESI,ECX
105cc2d8: 8b0e  MOV ECX,dword ptr [ESI]
105cc2da: 8d7e04  LEA EDI,[ESI + 0x4]
105cc2dd: 57  PUSH EDI
105cc2de: 50  PUSH EAX
105cc2df: 51  PUSH ECX
105cc2e0: e86bfeffff  CALL 0x105cc150
105cc2e5: 83c40c  ADD ESP,0xc
105cc2e8: 204614  AND byte ptr [ESI + 0x14],AL
105cc2eb: 742e  JZ 0x105cc31b
105cc2ed: 8b0f  MOV ECX,dword ptr [EDI]
105cc2ef: 8b11  MOV EDX,dword ptr [ECX]
105cc2f1: 8b4218  MOV EAX,dword ptr [EDX + 0x18]
105cc2f4: ffd0  CALL EAX
105cc2f6: 85c0  TEST EAX,EAX
105cc2f8: 894608  MOV dword ptr [ESI + 0x8],EAX
105cc2fb: 741e  JZ 0x105cc31b
105cc2fd: 8b10  MOV EDX,dword ptr [EAX]
105cc2ff: 8bc8  MOV ECX,EAX
105cc301: 8b4210  MOV EAX,dword ptr [EDX + 0x10]
105cc304: ffd0  CALL EAX
105cc306: a802  TEST AL,0x2
105cc308: 7511  JNZ 0x105cc31b
105cc30a: 8b4e08  MOV ECX,dword ptr [ESI + 0x8]
105cc30d: 8b11  MOV EDX,dword ptr [ECX]
105cc30f: 8b421c  MOV EAX,dword ptr [EDX + 0x1c]
105cc312: ffd0  CALL EAX
105cc314: 89460c  MOV dword ptr [ESI + 0xc],EAX
105cc317: c6461501  MOV byte ptr [ESI + 0x15],0x1
105cc31b: 8a4614  MOV AL,byte ptr [ESI + 0x14]
105cc31e: 5f  POP EDI
105cc31f: 5e  POP ESI
105cc320: c20400  RET 0x4
