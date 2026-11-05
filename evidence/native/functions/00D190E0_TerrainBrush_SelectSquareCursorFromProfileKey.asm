# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void TerrainBrush_SelectSquareCursorFromProfileKey(void * this, pointer profileKey)
Owned ranges: [[00d190e0, 00d19199]]

00d190e0  56  PUSH ESI
00d190e1  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00d190e5  8b06  MOV EAX,dword ptr [ESI]
00d190e7  3b0570e91e01  CMP EAX,dword ptr [0x011ee970]
00d190ed  57  PUSH EDI
00d190ee  8bf9  MOV EDI,ECX
00d190f0  7521  JNZ 0x00d19113
00d190f2  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00d190f5  3b0d78e91e01  CMP ECX,dword ptr [0x011ee978]
00d190fb  7516  JNZ 0x00d19113
00d190fd  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00d19100  3b157ce91e01  CMP EDX,dword ptr [0x011ee97c]
00d19106  750b  JNZ 0x00d19113
00d19108  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00d1910b  3b0d74e91e01  CMP ECX,dword ptr [0x011ee974]
00d19111  747e  JZ 0x00d19191
00d19113  3b0580e91e01  CMP EAX,dword ptr [0x011ee980]
00d19119  7521  JNZ 0x00d1913c
00d1911b  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00d1911e  3b1588e91e01  CMP EDX,dword ptr [0x011ee988]
00d19124  7516  JNZ 0x00d1913c
00d19126  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00d19129  3b0d8ce91e01  CMP ECX,dword ptr [0x011ee98c]
00d1912f  750b  JNZ 0x00d1913c
00d19131  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00d19134  3b1584e91e01  CMP EDX,dword ptr [0x011ee984]
00d1913a  7455  JZ 0x00d19191
00d1913c  3b0590e91e01  CMP EAX,dword ptr [0x011ee990]
00d19142  7521  JNZ 0x00d19165
00d19144  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00d19147  3b0598e91e01  CMP EAX,dword ptr [0x011ee998]
00d1914d  7516  JNZ 0x00d19165
00d1914f  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00d19152  3b0d9ce91e01  CMP ECX,dword ptr [0x011ee99c]
00d19158  750b  JNZ 0x00d19165
00d1915a  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00d1915d  3b1594e91e01  CMP EDX,dword ptr [0x011ee994]
00d19163  742c  JZ 0x00d19191
00d19165  68a0e91e01  PUSH 0x11ee9a0
00d1916a  56  PUSH ESI
00d1916b  e830a678ff  CALL 0x004a37a0
00d19170  83c408  ADD ESP,0x8
00d19173  84c0  TEST AL,AL
00d19175  751a  JNZ 0x00d19191
00d19177  68b0e91e01  PUSH 0x11ee9b0
00d1917c  56  PUSH ESI
00d1917d  e81ea678ff  CALL 0x004a37a0
00d19182  83c408  ADD ESP,0x8
00d19185  84c0  TEST AL,AL
00d19187  7508  JNZ 0x00d19191
00d19189  884720  MOV byte ptr [EDI + 0x20],AL
00d1918c  5f  POP EDI
00d1918d  5e  POP ESI
00d1918e  c20400  RET 0x4
00d19191  c6472001  MOV byte ptr [EDI + 0x20],0x1
00d19195  5f  POP EDI
00d19196  5e  POP ESI
00d19197  c20400  RET 0x4
