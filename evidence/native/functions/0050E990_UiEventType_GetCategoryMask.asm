# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0050E990_UiEventType_GetCategoryMask.c
Owned ranges: [[0050e990, 0050e9a6]]

0050e990  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0050e994  83f820  CMP EAX,0x20
0050e997  7308  JNC 0x0050e9a1
0050e999  8b0485b0b7fb00  MOV EAX,dword ptr [EAX*0x4 + 0xfbb7b0]
0050e9a0  c3  RET
0050e9a1  b880000000  MOV EAX,0x80
0050e9a6  c3  RET
