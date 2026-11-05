/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162108 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_CanAttachToSlotImpl [assembly=ScriptCore token=0x06000D3D; objectId:
   System.UInt64, parentId: System.UInt64, slotNameHash: System.UInt32, occupySlot: System.Boolean,
   forceBindPose: System.Boolean; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Slots__Slots_CanAttachToSlotImpl(void)

{
  void *pvVar1;
  void *this;
  void *pvVar2;
  undefined4 uVar3;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  undefined4 in_stack_00000010;
  int in_stack_00000014;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (this != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(this,DAT_011ea158);
    if (pvVar2 != (void *)0x0) {
      pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000010,in_stack_0000000c));
      if (pvVar1 == (void *)0x0) {
        return 0x3ea;
      }
      uVar3 = FUN_00b43620(this,pvVar1,in_stack_00000014,(float *)0x0);
      return uVar3;
    }
  }
  return 0x3e9;
}

