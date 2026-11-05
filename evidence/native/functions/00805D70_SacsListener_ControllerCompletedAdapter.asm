# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsListener_ControllerCompletedAdapter
Paired actual annotated Ghidra pseudocode: 00805D70_SacsListener_ControllerCompletedAdapter.c
Owned ranges: [[00805d70, 00805d88]]
Envelope bytes=25

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00805d70  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00805d74  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00805d77  8b00  MOV EAX,dword ptr [EAX]
00805d79  89542408  MOV dword ptr [ESP + 0x8],EDX
00805d7d  8b5020  MOV EDX,dword ptr [EAX + 0x20]
00805d80  89542404  MOV dword ptr [ESP + 0x4],EDX
00805d84  e987fcffff  JMP 0x00805a10
Owned instructions=7 owned bytes=25 gap/nonowned bytes=0
