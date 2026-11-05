# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00afba70,00afbb01]. 146 owned bytes/34 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-key default input construction. ECX destination, plain RET. Copies four DWORDs from live011EC8A0 into first16byte slot and live011EC8D0 into each remaining16byte slot. Does not prove those live defaults are zero or immutable, nor writes outside64bytes.

00afba70	8bc1	MOV EAX, ECX
00afba72	8b0da0c81e01	MOV ECX, dword ptr [0x011ec8a0]
00afba78	8908	MOV dword ptr [EAX], ECX
00afba7a	8b15a4c81e01	MOV EDX, dword ptr [0x011ec8a4]
00afba80	895004	MOV dword ptr [EAX + 0x4], EDX
00afba83	8b0da8c81e01	MOV ECX, dword ptr [0x011ec8a8]
00afba89	894808	MOV dword ptr [EAX + 0x8], ECX
00afba8c	8b15acc81e01	MOV EDX, dword ptr [0x011ec8ac]
00afba92	89500c	MOV dword ptr [EAX + 0xc], EDX
00afba95	8b0dd0c81e01	MOV ECX, dword ptr [0x011ec8d0]
00afba9b	894810	MOV dword ptr [EAX + 0x10], ECX
00afba9e	8b15d4c81e01	MOV EDX, dword ptr [0x011ec8d4]
00afbaa4	895014	MOV dword ptr [EAX + 0x14], EDX
00afbaa7	8b0dd8c81e01	MOV ECX, dword ptr [0x011ec8d8]
00afbaad	894818	MOV dword ptr [EAX + 0x18], ECX
00afbab0	8b15dcc81e01	MOV EDX, dword ptr [0x011ec8dc]
00afbab6	89501c	MOV dword ptr [EAX + 0x1c], EDX
00afbab9	8b0dd0c81e01	MOV ECX, dword ptr [0x011ec8d0]
00afbabf	894820	MOV dword ptr [EAX + 0x20], ECX
00afbac2	8b15d4c81e01	MOV EDX, dword ptr [0x011ec8d4]
00afbac8	895024	MOV dword ptr [EAX + 0x24], EDX
00afbacb	8b0dd8c81e01	MOV ECX, dword ptr [0x011ec8d8]
00afbad1	894828	MOV dword ptr [EAX + 0x28], ECX
00afbad4	8b15dcc81e01	MOV EDX, dword ptr [0x011ec8dc]
00afbada	89502c	MOV dword ptr [EAX + 0x2c], EDX
00afbadd	8b0dd0c81e01	MOV ECX, dword ptr [0x011ec8d0]
00afbae3	894830	MOV dword ptr [EAX + 0x30], ECX
00afbae6	8b15d4c81e01	MOV EDX, dword ptr [0x011ec8d4]
00afbaec	895034	MOV dword ptr [EAX + 0x34], EDX
00afbaef	8b0dd8c81e01	MOV ECX, dword ptr [0x011ec8d8]
00afbaf5	894838	MOV dword ptr [EAX + 0x38], ECX
00afbaf8	8b15dcc81e01	MOV EDX, dword ptr [0x011ec8dc]
00afbafe	89503c	MOV dword ptr [EAX + 0x3c], EDX
00afbb01	c3	RET
