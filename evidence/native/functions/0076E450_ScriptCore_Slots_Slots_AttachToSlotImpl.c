/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011620c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_AttachToSlotImpl [assembly=ScriptCore token=0x06000D3A; objectId:
   System.UInt64, parentId: System.UInt64, slotNameHash: System.UInt32, occupySlot: System.Boolean,
   forceBindPose: System.Boolean; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.Slots::Slots_AttachToSlotImpl(void)

{
  void *pvVar1;
  void *pvVar2;
  void *this;
  undefined4 uVar3;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  undefined4 in_stack_00000010;
  float *in_stack_00000014;
  char in_stack_0000001c;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar2 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (pvVar2 != (void *)0x0) {
    this = Object_GetComponentByMask(pvVar2,DAT_011ea158);
    if (this != (void *)0x0) {
      pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000010,in_stack_0000000c));
      if (pvVar1 == (void *)0x0) {
        return 0x3ea;
      }
      if (in_stack_0000001c != '\0') {
        pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011dd484);
        if (pvVar2 != (void *)0x0) {
          FUN_0093cbf0((int)pvVar2);
        }
      }
      uVar3 = FUN_00959e90(this,pvVar1,in_stack_00000014,'\0');
      return uVar3;
    }
  }
  return 0x3e9;
}

