# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 006A9960_FUN_006a9960.c
Body [[006a9960, 006a9993]]; envelope exclusive end 006a9994

GHIDRA LISTING (original bytes)
006a9960  8b542404  MOV EDX,dword ptr [ESP + 0x4]
006a9964  33c0  XOR EAX,EAX
006a9966  39517c  CMP dword ptr [ECX + 0x7c],EDX
006a9969  7505  JNZ 0x006a9970
006a996b  b801000000  MOV EAX,0x1
006a9970  399190000000  CMP dword ptr [ECX + 0x90],EDX
006a9976  7503  JNZ 0x006a997b
006a9978  83c001  ADD EAX,0x1
006a997b  3991a4000000  CMP dword ptr [ECX + 0xa4],EDX
006a9981  7503  JNZ 0x006a9986
006a9983  83c001  ADD EAX,0x1
006a9986  3991b8000000  CMP dword ptr [ECX + 0xb8],EDX
006a998c  7503  JNZ 0x006a9991
006a998e  83c001  ADD EAX,0x1
006a9991  c20400  RET 0x4
