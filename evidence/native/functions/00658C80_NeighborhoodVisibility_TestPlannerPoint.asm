# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual complete Ghidra Listing function NeighborhoodVisibility_TestPlannerPoint 00658c80..00658cbf; original envelope includes explicitly marked nonowned gaps; PE envelope SHA256=702fe198c35691f3e3746927b1eb0748ac46278882ff8187d64849bb271cefff
; PC 1.67 original: ECX planner/component, six stack words, RET 0x18. Passes world at +0x0C, auxiliary at +0x10, self and original mask/XZ/context/reason/height to 00658830; ADD ESP 0x24 restores that call. It leaves returned AL intact. Existing void decompiler signature does not describe the physical AL result; no prototype adjustment is made by this annotation.
00658c80: d9442418  FLD float ptr [ESP + 0x18]
00658c84: 8b442414  MOV EAX,dword ptr [ESP + 0x14]
00658c88: 8b5110  MOV EDX,dword ptr [ECX + 0x10]
00658c8b: 51  PUSH ECX
00658c8c: d91c24  FSTP float ptr [ESP]
00658c8f: 50  PUSH EAX
00658c90: d9442418  FLD float ptr [ESP + 0x18]
00658c94: 8b410c  MOV EAX,dword ptr [ECX + 0xc]
00658c97: 83ec0c  SUB ESP,0xc
00658c9a: d95c2408  FSTP float ptr [ESP + 0x8]
00658c9e: d9442420  FLD float ptr [ESP + 0x20]
00658ca2: d95c2404  FSTP float ptr [ESP + 0x4]
00658ca6: d944241c  FLD float ptr [ESP + 0x1c]
00658caa: d91c24  FSTP float ptr [ESP]
00658cad: 51  PUSH ECX
00658cae: 8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00658cb2: 52  PUSH EDX
00658cb3: 50  PUSH EAX
00658cb4: 51  PUSH ECX
00658cb5: e876fbffff  CALL 0x00658830
00658cba: 83c424  ADD ESP,0x24
00658cbd: c21800  RET 0x18
