/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011634f8 (original PC 1.67 TS3W.exe).
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
  char cVar1;
  int iVar2;
  undefined4 *puVar3;
  float *pfVar4;
  float *pfVar5;
  int *piVar6;
  undefined4 unaff_EBX;
  int unaff_ESI;
  int local_2c;
  float *local_28;
  void *local_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  iVar2 = FUN_00937570();
  puVar3 = (undefined4 *)FUN_00937f80(iVar2);
  if (puVar3 != (undefined4 *)0x0) {
    LOCK();
    puVar3[1] = puVar3[1] + 1;
    UNLOCK();
  }
  if ((param_3 != (float *)0x0) && (local_24 = DAT_011edbc4, DAT_011edbc4 != (void *)0x0)) {
    fStack_18 = param_3[2];
    local_20 = *param_3;
    fStack_1c = param_3[1];
    local_2c = 0;
    fStack_14 = local_20;
    pfVar4 = (float *)FUN_004e4500(0xc,"World/Placement",0);
    pfVar5 = (float *)FUN_004e4500(0x10,"World/Placement",0);
    local_28 = pfVar5;
    cVar1 = FUN_00c7ca40(local_24,puVar3,&local_20,param_4,param_5,&local_2c,pfVar4,pfVar5);
    if (cVar1 != '\0') {
      piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar6 + 0xa8))(param_6,pfVar4,0,local_2c * 3);
      (**(code **)(*piVar6 + 0xa8))(param_7,unaff_EBX,0,unaff_ESI * 4);
      pfVar5 = local_28;
    }
    FUN_004e44e0((int)pfVar4);
    FUN_004e44e0((int)pfVar5);
    if (puVar3 != (undefined4 *)0x0) {
      piVar6 = puVar3 + 1;
      LOCK();
      iVar2 = *piVar6;
      *piVar6 = *piVar6 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar6 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
    return cVar1;
  }
  if (puVar3 != (undefined4 *)0x0) {
    piVar6 = puVar3 + 1;
    LOCK();
    iVar2 = *piVar6;
    *piVar6 = *piVar6 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar6 = 1;
      UNLOCK();
      (**(code **)*puVar3)(1);
    }
  }
  return '\0';
}

