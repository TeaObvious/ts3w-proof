/* Final Ghidra decompilation after semantic annotation readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records exact ownership; generated C is not a callable replacement.
   The saved decompiler transport omits EOL comments; the instruction notes below
   are copied consistently from the saved Ghidra comment readback. */

/* Analyst-assigned role: ECX stream reader; one caller output-word pointer, RET4. Complete existing
   body [56D0E0,56D103]. Calls Stream_ReadUInt16 with reader stream+8, output pointer, fullDWORD
   endian mode+10; then ANDs AL success into reader status+14 via StreamReader_AccumulateStatus. No
   local rollback, exception policy or early termination; caller may store output even on failure.
   All facts static; concrete virtual stream lifetime/short-read behavior remains separate. */

void __thiscall ReadUInt16AndAccumulateStatus(void *this,ushort *param_1)

{
  bool readSucceeded;

  /* 56D0F0: width2; output may be partly modified on a short read. */
  readSucceeded = Stream_ReadUInt16(*(void **)((int)this + 8),param_1,*(uint *)((int)this + 0x10));
  /* 56D0FB: sticky status+0x14 AND read AL; no local early exit or throw. */
  StreamReader_AccumulateStatus(this,readSucceeded);
  return;
}
