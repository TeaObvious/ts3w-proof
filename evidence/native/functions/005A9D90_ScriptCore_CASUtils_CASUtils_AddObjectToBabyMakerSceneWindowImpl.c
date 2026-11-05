/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011564f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_AddObjectToBabyMakerSceneWindowImpl [assembly=ScriptCore
   token=0x0600033B; winHandle: System.UInt32, scriptHandle: System.UInt64, callback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_AddObjectToBabyMakerSceneWindowImpl(uint param_1)

{
  int *piVar1;
  void *pvVar2;
  void *this;
  undefined4 *object;
  int iVar3;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  undefined1 auStack_32 [10];
  float afStack_28 [9];
  
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      pvVar2 = (void *)(**(code **)(*piVar1 + 0xc))(0x39a436f);
      if (pvVar2 != (void *)0x0) {
        this = ObjectRegistry_GetGlobal();
        object = ObjectRegistry_FindBorrowed(this,CONCAT44(in_stack_0000000c,in_stack_00000008));
        if (object != (undefined4 *)0x0) {
          piVar1 = object + 1;
          LOCK();
          *piVar1 = *piVar1 + 1;
          UNLOCK();
          iVar3 = FUN_007eb3e0(pvVar2,'\0');
          if (iVar3 != 0) {
            ObjectEvents_Dispatch(0xb,object,auStack_32 + -6);
            pvVar2 = Object_GetComponentByMask(object,DAT_011ea158);
            if (pvVar2 != (void *)0x0) {
              afStack_28[0] = 0.0;
              afStack_28[1] = 0.0;
              afStack_28[2] = 0.0;
              afStack_28[3] = 0.0;
              TransformComponent_SetLocalPosition(pvVar2,afStack_28);
            }
          }
          LOCK();
          iVar3 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar3 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*object)(1);
          }
        }
      }
    }
  }
  return;
}

