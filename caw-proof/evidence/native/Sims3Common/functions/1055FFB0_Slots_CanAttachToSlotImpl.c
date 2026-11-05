/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Slots_CanAttachToSlotImpl. Export ordinal(s):
   771. Entry VA: 0x1055ffb0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06001091. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 Slots_CanAttachToSlotImpl(void)

{
  int iVar1;
  void *this;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  int in_stack_00000014;
  
                    /* 0x55ffb0  771  Slots_CanAttachToSlotImpl */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    iVar2 = FUN_10726da0(this,DAT_10c8d998);
    if (iVar2 != 0) {
      pvVar3 = (void *)FUN_1072abb0(iVar1);
      if (pvVar3 == (void *)0x0) {
        return 0x3ea;
      }
      uVar4 = FUN_1010ca80(this,pvVar3,in_stack_00000014,(float *)0x0);
      return uVar4;
    }
  }
  return 0x3e9;
}

