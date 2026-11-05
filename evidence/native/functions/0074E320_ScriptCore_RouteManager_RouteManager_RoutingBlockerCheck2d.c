/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161c08 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_RoutingBlockerCheck2d [assembly=ScriptCore
   token=0x0600105F; startPoint: Sims3.SimIFace.Vector2, startPointLevel: System.Int32, endPoint:
   Sims3.SimIFace.Vector2, endPointLevel: System.Int32, options: System.UInt64, options2:
   System.UInt64, firstObjectIdToIgnore: System.UInt64, secondObjectIdToIgnore: System.UInt64,
   agsFlags: System.UInt32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl
ScriptCore.RouteManager::RouteManager_RoutingBlockerCheck2d
          (float param_1,float param_2,undefined4 param_3,float param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
          undefined4 param_10)

{
  void *pvVar1;
  void *this;
  void *pvVar2;
  void *pvVar3;
  float10 fVar4;
  undefined4 in_stack_0000002c;
  undefined4 in_stack_00000030;
  int iStack00000034;
  undefined4 in_stack_0000003c;
  int *piVar5;
  char cVar6;
  char cVar7;
  char cVar8;
  char cVar9;
  char cVar10;
  float local_fc;
  undefined4 local_f8;
  undefined4 local_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  int local_e0 [4];
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  undefined4 local_ac;
  undefined4 local_90 [35];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  this = (void *)thunk_FUN_00835d40();
  pvVar3 = DAT_011edbc4;
  if (DAT_011edbc4 == (void *)0x0) {
    pvVar2 = (void *)0x0;
  }
  else {
    pvVar2 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,param_1,param_2);
  }
  if ((((this == (void *)0x0) || (pvVar1 == (void *)0x0)) || (pvVar3 == (void *)0x0)) ||
     (pvVar2 == (void *)0x0)) {
    return 8;
  }
  FUN_00651100(&local_d0);
  fStack_e4 = param_1;
  fStack_e8 = param_2;
  fVar4 = WorldSurface_QueryHeight
                    (pvVar3,param_1,param_2,param_3,'\x01','\0',(undefined1 *)0x0,(undefined1 *)0x0,
                     '\0','\x01');
  fStack_ec = (float)fVar4;
  cVar10 = '\0';
  cVar9 = '\0';
  cVar8 = '\0';
  cVar7 = '\0';
  cVar6 = '\0';
  local_f0 = param_1;
  piVar5 = &iStack00000034;
  local_f4 = param_6;
  local_d0 = param_1;
  fStack_c8 = fStack_e8;
  fStack_c4 = fStack_e4;
  local_fc = param_4;
  local_ac = param_3;
  local_f8 = param_5;
  fStack_cc = fStack_ec;
  pvVar3 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000030,in_stack_0000002c));
  pvVar1 = (void *)FUN_0081c7b0(local_90,param_7,param_8,param_9,param_10);
  FUN_0082dd70(this,local_e0,(int)pvVar2,&local_d0,&local_fc,pvVar1,pvVar3,piVar5,cVar6,cVar7,cVar8,
               cVar9,cVar10,in_stack_0000003c);
  FUN_0081c830(local_90);
  return local_e0[0];
}

