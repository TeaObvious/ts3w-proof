# ShearedBoxShape resolved virtual destination

Static PC 1.67 evidence through GhidrAssist explicitly on `/TS3W.exe`.
B19990 installs vtable00FF0D48 on the allocated shape in ESI at B19F71.
Immediately before B1A223, B1A20A loads EDX=[ESI], B1A20C loads EDX=[EDX+0x0C],
and no intervening instruction rewrites EDX. Thus the original DWORD at
FF0D48+0C=FF0D54 supplies the CALL EDX destination. Its bytes50 2B 68 00 are
little-endian00682B50. The actual complete C is re-exported with this annotation;
the full original ASM remains byte-for-byte identical to its prior canonical pair.

- [B19990 ASM](../../evidence/native/functions/00B19990_ModularStairs_CreateFlightCollisionShape.asm) ([C](../../evidence/native/functions/00B19990_ModularStairs_CreateFlightCollisionShape.c))
- [Necessary original vtable word](../../evidence/native/data/0x00ff0d54-sheared-box-virtual-slot-0c.bin)

This is a statically resolved virtual call, not a relative immediate call. A call
index may retain a resolved virtual/IAT/computed destination when original producer
and data establish it; unresolved dynamic targets remain explicitly unknown.
The existing B19990 selected ABI and annotations are preserved. Original bytes
and function boundaries remain unchanged; DB saved clean, no game/test execution.
