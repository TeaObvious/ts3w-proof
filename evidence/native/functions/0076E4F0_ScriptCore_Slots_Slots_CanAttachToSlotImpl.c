/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162108 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_CanAttachToSlotImpl [assembly=ScriptCore token=0x06000D3D; objectId:
   System.UInt64, parentId: System.UInt64, slotNameHash: System.UInt32, occupySlot: System.Boolean,
   forceBindPose: System.Boolean; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Slots__Slots_CanAttachToSlotImpl(void)

{
  int iVar1;
  void *this;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  int in_stack_00000014;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    iVar2 = FUN_00934260(this,DAT_011ea158);
    if (iVar2 != 0) {
      pvVar3 = (void *)FUN_00937f80(iVar1);
      if (pvVar3 == (void *)0x0) {
        return 0x3ea;
      }
      uVar4 = FUN_00b43620(this,pvVar3,in_stack_00000014,(float *)0x0);
      return uVar4;
    }
  }
  return 0x3e9;
}

