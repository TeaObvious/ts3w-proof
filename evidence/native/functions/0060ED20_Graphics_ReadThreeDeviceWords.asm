# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 0060ed20 Graphics_ReadThreeDeviceWords
# Body [[0060ed20, 0060ed4b]]; owned bytes=44
0060ed20  8b81e0000000  MOV EAX,dword ptr [ECX + 0xe0]
0060ed26  8b8884010000  MOV ECX,dword ptr [EAX + 0x184]
0060ed2c  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0060ed30  0584010000  ADD EAX,0x184
0060ed35  890a  MOV dword ptr [EDX],ECX
0060ed37  8b4804  MOV ECX,dword ptr [EAX + 0x4]
0060ed3a  8b542408  MOV EDX,dword ptr [ESP + 0x8]
0060ed3e  890a  MOV dword ptr [EDX],ECX
0060ed40  8b4030  MOV EAX,dword ptr [EAX + 0x30]
0060ed43  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0060ed47  8901  MOV dword ptr [ECX],EAX
0060ed49  c20c00  RET 0xc
