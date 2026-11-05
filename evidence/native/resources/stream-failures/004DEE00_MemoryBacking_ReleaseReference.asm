# Reference: ts3w-pc-1.67; Original identity: evidence/reference.json
# Function: MemoryBacking_ReleaseReference
# Entry VA: 004DEE00; recorded half-open body: [004DEE00,004DEE37); 55 Original bytes / 26 instruction starts.
# Instruction text: actual Ghidra Listing, with independently retained Original PE bytes joined by exact instruction VA.
# Function name and semantic Plate were applied and read back in Ghidra; genuine final C and one reported project Save accompany this pair. No reopen or runtime test is claimed.
# Semantic Plate read back from Ghidra:
# Drops a reference to the MemoryStream backing record, or dispatches its final payload/record release path.
# ECX supplies the backing record and the body uses plain RET. If signed count+C>1, decrement that DWORD and return its new value in EAX. Otherwise byte+10 gates allocator+0C(data+8,0), then call record virtual0(flag1) and return EAX0, without first decrementing count. Zero is not a general Boolean success or proof of deallocation/liveness. This body has no null-record guard, LOCK instruction or lifetime validation. The selected constructor/prefix/default-adapter release chain is a separate dependency; foreign allocator/object callbacks and alias ownership remain open. Preserve int fastcall return/parameter projections and original bytes.

004DEE00: 56                                           PUSH ESI
004DEE01: 8b f1                                        MOV ESI, ECX
004DEE03: 8b 46 0c                                     MOV EAX, dword ptr [ESI + 0xc]
004DEE06: 83 f8 01                                     CMP EAX, 0x1
004DEE09: 7e 08                                        JLE 0x004dee13
004DEE0B: 83 c0 ff                                     ADD EAX, -0x1
004DEE0E: 89 46 0c                                     MOV dword ptr [ESI + 0xc], EAX
004DEE11: 5e                                           POP ESI
004DEE12: c3                                           RET
004DEE13: 80 7e 10 00                                  CMP byte ptr [ESI + 0x10], 0x0
004DEE17: 74 10                                        JZ 0x004dee29
004DEE19: 8b 4e 04                                     MOV ECX, dword ptr [ESI + 0x4]
004DEE1C: 8b 01                                        MOV EAX, dword ptr [ECX]
004DEE1E: 8b 56 08                                     MOV EDX, dword ptr [ESI + 0x8]
004DEE21: 8b 40 0c                                     MOV EAX, dword ptr [EAX + 0xc]
004DEE24: 6a 00                                        PUSH 0x0
004DEE26: 52                                           PUSH EDX
004DEE27: ff d0                                        CALL EAX
004DEE29: 8b 16                                        MOV EDX, dword ptr [ESI]
004DEE2B: 8b 02                                        MOV EAX, dword ptr [EDX]
004DEE2D: 6a 01                                        PUSH 0x1
004DEE2F: 8b ce                                        MOV ECX, ESI
004DEE31: ff d0                                        CALL EAX
004DEE33: 33 c0                                        XOR EAX, EAX
004DEE35: 5e                                           POP ESI
004DEE36: c3                                           RET
