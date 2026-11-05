/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161c08 (original PC 1.67 TS3W.exe).
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
  int iVar1;
  void *this;
  void *pvVar2;
  void *pvVar3;
  void *pvVar4;
  float10 fVar5;
  undefined4 in_stack_0000003c;
  int *piVar6;
  char cVar7;
  char cVar8;
  char cVar9;
  char cVar10;
  char cVar11;
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
  
  iVar1 = FUN_00937570();
  this = (void *)thunk_FUN_00835d40();
  pvVar3 = DAT_011edbc4;
  if (DAT_011edbc4 == (void *)0x0) {
    pvVar2 = (void *)0x0;
  }
  else {
    pvVar2 = FUN_00c687d0(DAT_011edbc4,param_1,param_2);
  }
  if ((((this != (void *)0x0) && (iVar1 != 0)) && (pvVar3 != (void *)0x0)) &&
     (pvVar2 != (void *)0x0)) {
    FUN_00651100(&local_d0);
    fStack_e4 = param_1;
    fStack_e8 = param_2;
    fVar5 = FUN_00c6a090(pvVar3,param_1,param_2,param_3,'\x01','\0',(undefined1 *)0x0,
                         (undefined1 *)0x0,'\0','\x01');
    fStack_ec = (float)fVar5;
    cVar11 = '\0';
    cVar10 = '\0';
    cVar9 = '\0';
    cVar8 = '\0';
    cVar7 = '\0';
    local_f0 = param_1;
    piVar6 = (int *)&stack0x00000034;
    local_f4 = param_6;
    local_d0 = param_1;
    fStack_c8 = fStack_e8;
    fStack_c4 = fStack_e4;
    local_fc = param_4;
    local_ac = param_3;
    local_f8 = param_5;
    fStack_cc = fStack_ec;
    pvVar3 = (void *)FUN_00937f80(iVar1);
    pvVar4 = (void *)FUN_0081c7b0(local_90,param_7,param_8,param_9,param_10);
    FUN_0082dd70(this,local_e0,(int)pvVar2,&local_d0,&local_fc,pvVar4,pvVar3,piVar6,cVar7,cVar8,
                 cVar9,cVar10,cVar11,in_stack_0000003c);
    FUN_0081c830(local_90);
    return local_e0[0];
  }
  return 8;
}

