/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011620e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_DetachFromParentImpl [assembly=ScriptCore token=0x06000D3F; objectId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore.Slots::Slots_DetachFromParentImpl(void)

{
  char cVar1;
  void *pvVar2;
  undefined3 extraout_var;
  uint uVar3;
  undefined4 extraout_EAX;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  float local_30 [11];
  
  pvVar2 = ObjectRegistry_GetGlobal();
  pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(in_stack_00000008,in_stack_00000004));
  uVar3 = 0;
  if (pvVar2 != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea158);
    uVar3 = 0;
    if (pvVar2 != (void *)0x0) {
      TransformComponent_GetWorldQuaternionTranslation(pvVar2,local_30);
      cVar1 = FUN_009595b0(pvVar2);
      uVar3 = CONCAT31(extraout_var,cVar1);
      if (cVar1 != '\0') {
        TransformComponent_SetWorldPose(pvVar2,local_30);
        return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
      }
    }
  }
  return uVar3 & 0xffffff00;
}

