/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620c8 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_AttachToSlotImpl [assembly=ScriptCore token=0x06000D3A; objectId:
   System.UInt64, parentId: System.UInt64, slotNameHash: System.UInt32, occupySlot: System.Boolean,
   forceBindPose: System.Boolean; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.Slots::Slots_AttachToSlotImpl(void)

{
  int iVar1;
  void *this;
  void *this_00;
  void *pvVar2;
  undefined4 uVar3;
  float *in_stack_00000014;
  char in_stack_0000001c;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    this_00 = (void *)FUN_00934260(this,DAT_011ea158);
    if (this_00 != (void *)0x0) {
      pvVar2 = (void *)FUN_00937f80(iVar1);
      if (pvVar2 == (void *)0x0) {
        return 0x3ea;
      }
      if (in_stack_0000001c != '\0') {
        iVar1 = FUN_00934260(this,DAT_011dd484);
        if (iVar1 != 0) {
          FUN_0093cbf0(iVar1);
        }
      }
      uVar3 = FUN_00959e90(this_00,pvVar2,in_stack_00000014,'\0');
      return uVar3;
    }
  }
  return 0x3e9;
}

