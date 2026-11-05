# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10068730..10068769; CAW_HeightRasterReadSample
10068730: 8b4114  MOV EAX,dword ptr [ECX + 0x14]
10068733: 56  PUSH ESI
10068734: 8b742408  MOV ESI,dword ptr [ESP + 0x8]
10068738: 3bf0  CMP ESI,EAX
1006873a: 7324  JNC 0x10068760
1006873c: 8b54240c  MOV EDX,dword ptr [ESP + 0xc]
10068740: 3b5118  CMP EDX,dword ptr [ECX + 0x18]
10068743: 731b  JNC 0x10068760
10068745: 0fafc2  IMUL EAX,EDX
10068748: 8b5138  MOV EDX,dword ptr [ECX + 0x38]
1006874b: 03c6  ADD EAX,ESI
1006874d: 0fb70442  MOVZX EAX,word ptr [EDX + EAX*0x2]
10068751: 89442408  MOV dword ptr [ESP + 0x8],EAX
10068755: 5e  POP ESI
10068756: db442404  FILD dword ptr [ESP + 0x4]
1006875a: d84908  FMUL float ptr [ECX + 0x8]
1006875d: c20800  RET 0x8
10068760: d9056837ab10  FLD float ptr [0x10ab3768]
10068766: 5e  POP ESI
10068767: c20800  RET 0x8
