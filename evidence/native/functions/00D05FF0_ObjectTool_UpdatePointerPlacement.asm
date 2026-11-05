# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00d05ff0 ObjectTool_UpdatePointerPlacement
# Body [[00d05ff0, 00d0601a]]; owned bytes=43
# ECX tool, two stack words, RET8/AL1. Pressed byte8B selects D05050; otherwise calls D02460 with a third zero word. This gates raw-pointer writer versus pressed-direction consumer; no new synchronous game-tick ordering inferred.
00d05ff0  80b98b00000000  CMP byte ptr [ECX + 0x8b],0x0
00d05ff7  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00d05ffb  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00d05fff  740c  JZ 0x00d0600d
00d06001  50  PUSH EAX
00d06002  52  PUSH EDX
00d06003  e848f0ffff  CALL 0x00d05050
00d06008  b001  MOV AL,0x1
00d0600a  c20800  RET 0x8
00d0600d  6a00  PUSH 0x0
00d0600f  50  PUSH EAX
00d06010  52  PUSH EDX
00d06011  e84ac4ffff  CALL 0x00d02460
00d06016  b001  MOV AL,0x1
00d06018  c20800  RET 0x8
