/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Slots_AttachToSlotImpl. Export ordinal(s): 769.
   Entry VA: 0x1055ff10. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600108E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 Slots_AttachToSlotImpl(void)

{
  int iVar1;
  void *this;
  void *this_00;
  void *pvVar2;
  undefined4 uVar3;
  float *in_stack_00000014;
  char in_stack_0000001c;
  
                    /* 0x55ff10  769  Slots_AttachToSlotImpl */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    this_00 = (void *)FUN_10726da0(this,DAT_10c8d998);
    if (this_00 != (void *)0x0) {
      pvVar2 = (void *)FUN_1072abb0(iVar1);
      if (pvVar2 == (void *)0x0) {
        return 0x3ea;
      }
      if (in_stack_0000001c != '\0') {
        iVar1 = FUN_10726da0(this,DAT_10c80cc4);
        if (iVar1 != 0) {
          FUN_1072f040(iVar1);
        }
      }
      uVar3 = FUN_1074c710(this_00,pvVar2,in_stack_00000014,'\0');
      return uVar3;
    }
  }
  return 0x3e9;
}

