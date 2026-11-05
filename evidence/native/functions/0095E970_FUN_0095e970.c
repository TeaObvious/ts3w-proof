/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified semantics. ECX VisualState plus nullable byte-pointer, RET4, AL1 only (upper EAX unspecified). Nonnull reads one byte and calls95E5F0 withmask10. Null starts true, obtains Transform through11EA158 and parent at+30, then parent VisualState aggregate39 when present. Instructions dereference owner before a later null gate and Transform+30 after possibly null component lookup: caller invariants unresolved; do not invent safe null fallback from suspicious C. Changed mask10 recursively emits event18. Not event23 material-key publisher95F960. */

undefined4 __thiscall FUN_0095e970(void *this,byte *param_1)

{
  undefined4 extraout_EAX;
  void *pvVar1;
  undefined4 extraout_EAX_00;
  bool enabledByte;
  
  enabledByte = true;
  if (param_1 != (byte *)0x0) {
    VisualState_SetOneBitFlag(this,0x10,*param_1);
    return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
  }
  if (*(void **)((int)this + 4) == (void *)0x0) {
    pvVar1 = (void *)0x0;
  }
  else {
    pvVar1 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea158);
  }
  if (*(void **)((int)pvVar1 + 0x30) != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(*(void **)((int)pvVar1 + 0x30),DAT_011ea2a8);
    if (pvVar1 != (void *)0x0) {
      enabledByte = ((byte)*(undefined4 *)((int)pvVar1 + 8) & 0x39) == 0x39;
    }
  }
  VisualState_SetOneBitFlag(this,0x10,enabledByte);
  return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
}
