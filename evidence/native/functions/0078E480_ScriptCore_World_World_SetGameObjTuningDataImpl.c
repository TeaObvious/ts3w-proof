/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163a78 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_SetGameObjTuningDataImpl [assembly=ScriptCore token=0x06000853; objectId:
   System.UInt64, data: System.Byte[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_SetGameObjTuningDataImpl(uint param_1,undefined4 param_2,uint param_3)

{
  uint uVar1;
  void *pvVar2;
  int *piVar3;
  int local_c;
  int iStack_8;
  void *local_4;
  
  uVar1 = param_3;
  if (param_3 != 0) {
    pvVar2 = ObjectRegistry_GetGlobal();
    if (pvVar2 != (void *)0x0) {
      param_3 = (uint)ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
      if ((void *)param_3 == (void *)0x0) {
        FUN_007462e0((int *)&param_3);
        return;
      }
      LOCK();
      *(int *)(param_3 + 4) = *(int *)(param_3 + 4) + 1;
      UNLOCK();
      pvVar2 = (void *)FUN_0068f130(param_3);
      if (pvVar2 != (void *)0x0) {
        piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 0x70))(uVar1,&local_4,&local_c);
          iStack_8 = local_c;
          FUN_00c71ee0(pvVar2,&param_1,local_4,&iStack_8);
        }
      }
      FUN_007462e0((int *)&param_3);
    }
  }
  return;
}

