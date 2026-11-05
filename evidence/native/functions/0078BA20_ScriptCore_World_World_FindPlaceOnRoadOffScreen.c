/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011634f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_FindPlaceOnRoadOffScreen [assembly=ScriptCore token=0x060007A3; objId:
   System.UInt64, pos: Sims3.SimIFace.Vector3&, option: System.UInt32, distance: System.Single,
   posArray: System.Single[]&, orientArray: System.Single[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char __cdecl
ScriptCore.World::World_FindPlaceOnRoadOffScreen
          (undefined4 param_1,undefined4 param_2,float *param_3,int param_4,float param_5,
          undefined4 param_6,undefined4 param_7)

{
  int iVar1;
  char cVar2;
  void *this;
  undefined4 *puVar3;
  float *allocation;
  float *allocation_00;
  int *piVar4;
  undefined4 unaff_EBX;
  int unaff_ESI;
  int local_2c;
  float *local_28;
  void *local_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  this = ObjectRegistry_GetGlobal();
  puVar3 = ObjectRegistry_FindBorrowed(this,CONCAT44(param_2,param_1));
  if (puVar3 != (undefined4 *)0x0) {
    LOCK();
    puVar3[1] = puVar3[1] + 1;
    UNLOCK();
  }
  if ((param_3 == (float *)0x0) || (local_24 = DAT_011edbc4, DAT_011edbc4 == (void *)0x0)) {
    if (puVar3 != (undefined4 *)0x0) {
      piVar4 = puVar3 + 1;
      LOCK();
      iVar1 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
    return '\0';
  }
  fStack_18 = param_3[2];
  local_20 = *param_3;
  fStack_1c = param_3[1];
  local_2c = 0;
  fStack_14 = local_20;
  allocation = (float *)FUN_004e4500(0xc,"World/Placement",0);
  allocation_00 = (float *)FUN_004e4500(0x10,"World/Placement",0);
  local_28 = allocation_00;
  cVar2 = FUN_00c7ca40(local_24,puVar3,&local_20,param_4,param_5,&local_2c,allocation,allocation_00)
  ;
  if (cVar2 != '\0') {
    piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar4 + 0xa8))(param_6,allocation,0,local_2c * 3);
    (**(code **)(*piVar4 + 0xa8))(param_7,unaff_EBX,0,unaff_ESI * 4);
    allocation_00 = local_28;
  }
  Memory_FreeIfNonNull(allocation);
  Memory_FreeIfNonNull(allocation_00);
  if (puVar3 != (undefined4 *)0x0) {
    piVar4 = puVar3 + 1;
    LOCK();
    iVar1 = *piVar4;
    *piVar4 = *piVar4 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar4 = 1;
      UNLOCK();
      (**(code **)*puVar3)(1);
    }
  }
  return cVar2;
}

