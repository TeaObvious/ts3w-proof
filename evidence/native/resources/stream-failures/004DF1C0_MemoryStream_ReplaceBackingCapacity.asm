# Reference: ts3w-pc-1.67; Original identity: evidence/reference.json
# Function: MemoryStream_ReplaceBackingCapacity
# Entry VA: 004DF1C0; recorded half-open body: [004DF1C0,004DF2A2); 226 Original bytes / 100 instruction starts.
# Instruction text: actual Ghidra Listing, with independently retained Original PE bytes joined by exact instruction VA.
# Function name and semantic Plate were applied and read back in Ghidra; genuine final C and one reported project Save accompany this pair. No reopen or runtime test is claimed.
# Semantic Plate read back from Ghidra:
# Replaces the MemoryStream backing record and capacity, preserving a capacity-bounded byte prefix when both old and new backing exist.
# ECX is the stream and the one stack DWORD is requestedCapacity; RET4. Nonzero capacity allocates a0x14 backing object through004E0A20 and payload through004DEF60; null record/data returns false AL, with constructed-null-data backing released through004DEE00. These false exits have no explicit replacement store to stream+4/+14, but called allocation/release side effects remain open; no global rollback/OOM guarantee. Copy count is unsigned min(requestedCapacity, oldCapacity), not logical length. Old signed count+C>1 is decremented; otherwise byte+10 gates data allocator+0C and record virtual0(flag1). Success stores stream+4/+14 and AL1; zero request releases/clears backing and capacity. Logical length+10, position+18 and growth permission+1C are not changed or checked here. Only AL is the success contract; upper EAX bits are path-dependent residues. Preserve the current undefined4 nativeSignature/thiscall/types although C renders uint; valid backing/allocator storage and lifetime are prerequisites.

004DF1C0: 53                                           PUSH EBX
004DF1C1: 55                                           PUSH EBP
004DF1C2: 8b d9                                        MOV EBX, ECX
004DF1C4: 8b 43 04                                     MOV EAX, dword ptr [EBX + 0x4]
004DF1C7: 85 c0                                        TEST EAX, EAX
004DF1C9: 56                                           PUSH ESI
004DF1CA: 57                                           PUSH EDI
004DF1CB: 74 07                                        JZ 0x004df1d4
004DF1CD: 8b 40 04                                     MOV EAX, dword ptr [EAX + 0x4]
004DF1D0: 85 c0                                        TEST EAX, EAX
004DF1D2: 75 05                                        JNZ 0x004df1d9
004DF1D4: e8 b7 aa ff ff                               CALL 0x004d9c90
004DF1D9: 8b 6c 24 14                                  MOV EBP, dword ptr [ESP + 0x14]
004DF1DD: 85 ed                                        TEST EBP, EBP
004DF1DF: 8b f0                                        MOV ESI, EAX
004DF1E1: 74 49                                        JZ 0x004df22c
004DF1E3: 8b 43 08                                     MOV EAX, dword ptr [EBX + 0x8]
004DF1E6: 85 c0                                        TEST EAX, EAX
004DF1E8: 75 05                                        JNZ 0x004df1ef
004DF1EA: b8 1c 95 fb 00                               MOV EAX, 0xfb951c
004DF1EF: 50                                           PUSH EAX
004DF1F0: 56                                           PUSH ESI
004DF1F1: 6a 14                                        PUSH 0x14
004DF1F3: e8 28 18 00 00                               CALL 0x004e0a20
004DF1F8: 83 c4 0c                                     ADD ESP, 0xc
004DF1FB: 85 c0                                        TEST EAX, EAX
004DF1FD: 74 24                                        JZ 0x004df223
004DF1FF: 8b 4b 08                                     MOV ECX, dword ptr [EBX + 0x8]
004DF202: 51                                           PUSH ECX
004DF203: 56                                           PUSH ESI
004DF204: 55                                           PUSH EBP
004DF205: 8b c8                                        MOV ECX, EAX
004DF207: e8 54 fd ff ff                               CALL 0x004def60
004DF20C: 8b f8                                        MOV EDI, EAX
004DF20E: 85 ff                                        TEST EDI, EDI
004DF210: 74 11                                        JZ 0x004df223
004DF212: 83 47 0c 01                                  ADD dword ptr [EDI + 0xc], 0x1
004DF216: 83 7f 08 00                                  CMP dword ptr [EDI + 0x8], 0x0
004DF21A: 75 12                                        JNZ 0x004df22e
004DF21C: 8b cf                                        MOV ECX, EDI
004DF21E: e8 dd fb ff ff                               CALL 0x004dee00
004DF223: 5f                                           POP EDI
004DF224: 5e                                           POP ESI
004DF225: 5d                                           POP EBP
004DF226: 32 c0                                        XOR AL, AL
004DF228: 5b                                           POP EBX
004DF229: c2 04 00                                     RET 0x4
004DF22C: 33 ff                                        XOR EDI, EDI
004DF22E: 8b 4b 04                                     MOV ECX, dword ptr [EBX + 0x4]
004DF231: 85 c9                                        TEST ECX, ECX
004DF233: 74 5e                                        JZ 0x004df293
004DF235: 85 ff                                        TEST EDI, EDI
004DF237: 74 1a                                        JZ 0x004df253
004DF239: 8b 43 14                                     MOV EAX, dword ptr [EBX + 0x14]
004DF23C: 3b e8                                        CMP EBP, EAX
004DF23E: 73 02                                        JNC 0x004df242
004DF240: 8b c5                                        MOV EAX, EBP
004DF242: 8b 51 08                                     MOV EDX, dword ptr [ECX + 0x8]
004DF245: 50                                           PUSH EAX
004DF246: 8b 47 08                                     MOV EAX, dword ptr [EDI + 0x8]
004DF249: 52                                           PUSH EDX
004DF24A: 50                                           PUSH EAX
004DF24B: e8 36 00 aa 00                               CALL 0x00f7f286
004DF250: 83 c4 0c                                     ADD ESP, 0xc
004DF253: 8b 73 04                                     MOV ESI, dword ptr [EBX + 0x4]
004DF256: 8b 46 0c                                     MOV EAX, dword ptr [ESI + 0xc]
004DF259: 83 f8 01                                     CMP EAX, 0x1
004DF25C: 7e 15                                        JLE 0x004df273
004DF25E: 83 c0 ff                                     ADD EAX, -0x1
004DF261: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
004DF264: 89 7b 04                                     MOV dword ptr [EBX + 0x4], EDI
004DF267: 5f                                           POP EDI
004DF268: 5e                                           POP ESI
004DF269: 89 6b 14                                     MOV dword ptr [EBX + 0x14], EBP
004DF26C: 5d                                           POP EBP
004DF26D: b0 01                                        MOV AL, 0x1
004DF26F: 5b                                           POP EBX
004DF270: c2 04 00                                     RET 0x4
004DF273: 80 7e 10 00                                  CMP byte ptr [ESI + 0x10], 0x0
004DF277: 74 10                                        JZ 0x004df289
004DF279: 8b 4e 04                                     MOV ECX, dword ptr [ESI + 0x4]
004DF27C: 8b 11                                        MOV EDX, dword ptr [ECX]
004DF27E: 8b 46 08                                     MOV EAX, dword ptr [ESI + 0x8]
004DF281: 8b 52 0c                                     MOV EDX, dword ptr [EDX + 0xc]
004DF284: 6a 00                                        PUSH 0x0
004DF286: 50                                           PUSH EAX
004DF287: ff d2                                        CALL EDX
004DF289: 8b 06                                        MOV EAX, dword ptr [ESI]
004DF28B: 8b 10                                        MOV EDX, dword ptr [EAX]
004DF28D: 6a 01                                        PUSH 0x1
004DF28F: 8b ce                                        MOV ECX, ESI
004DF291: ff d2                                        CALL EDX
004DF293: 89 7b 04                                     MOV dword ptr [EBX + 0x4], EDI
004DF296: 5f                                           POP EDI
004DF297: 5e                                           POP ESI
004DF298: 89 6b 14                                     MOV dword ptr [EBX + 0x14], EBP
004DF29B: 5d                                           POP EBP
004DF29C: b0 01                                        MOV AL, 0x1
004DF29E: 5b                                           POP EBX
004DF29F: c2 04 00                                     RET 0x4
