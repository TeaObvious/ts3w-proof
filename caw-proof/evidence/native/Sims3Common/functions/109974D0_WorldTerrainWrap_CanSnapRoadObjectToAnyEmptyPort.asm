# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 109974d0..1099751f; WorldTerrainWrap_CanSnapRoadObjectToAnyEmptyPort
109974d0: a1c400c710  MOV EAX,[0x10c700c4]
109974d5: 8b542418  MOV EDX,dword ptr [ESP + 0x18]
109974d9: 8b485c  MOV ECX,dword ptr [EAX + 0x5c]
109974dc: 8b44240c  MOV EAX,dword ptr [ESP + 0xc]
109974e0: 56  PUSH ESI
109974e1: 8b742414  MOV ESI,dword ptr [ESP + 0x14]
109974e5: 52  PUSH EDX
109974e6: 8b542410  MOV EDX,dword ptr [ESP + 0x10]
109974ea: 56  PUSH ESI
109974eb: 50  PUSH EAX
109974ec: 52  PUSH EDX
109974ed: e88eab7aff  CALL 0x10142080
109974f2: 84c0  TEST AL,AL
109974f4: 7416  JZ 0x1099750c
109974f6: 8b0e  MOV ECX,dword ptr [ESI]
109974f8: 8b01  MOV EAX,dword ptr [ECX]
109974fa: 8b500c  MOV EDX,dword ptr [EAX + 0xc]
109974fd: ffd2  CALL EDX
109974ff: 8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
10997503: 8901  MOV dword ptr [ECX],EAX
10997505: b801000000  MOV EAX,0x1
1099750a: 5e  POP ESI
1099750b: c3  RET
1099750c: 8b542418  MOV EDX,dword ptr [ESP + 0x18]
10997510: c70600000000  MOV dword ptr [ESI],0x0
10997516: c70200000000  MOV dword ptr [EDX],0x0
1099751c: 33c0  XOR EAX,EAX
1099751e: 5e  POP ESI
1099751f: c3  RET
