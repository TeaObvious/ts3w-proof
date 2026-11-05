/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163258 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotSetTerrainHeightImpl [assembly=ScriptCore token=0x06000745; lotId:
   System.UInt64, x: System.Single, z: System.Single, height: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_LotSetTerrainHeightImpl
          (int param_1,int param_2,float param_3,float param_4,float param_5)

{
  undefined4 uVar1;
  char cVar2;
  int *this;
  int iVar3;
  undefined1 *puVar4;
  void *pvVar5;
  int iVar6;
  int iVar7;
  char acStack_38 [4];
  undefined4 local_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  undefined1 local_20 [28];
  
  this = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
  if (this != (int *)0x0) {
    iVar7 = 0;
    iVar6 = 0;
    local_34 = (float)CONCAT31(CONCAT21(local_34._2_2_,(char)(int)param_4),(char)(int)param_3);
    uVar1 = local_34;
    puVar4 = local_20;
    local_34._0_3_ = (uint3)(ushort)uVar1;
    pvVar5 = DAT_011631d4;
    iVar3 = (**(code **)(*this + 100))();
    local_34 = param_5 - *(float *)(iVar3 + 4);
    fStack_30 = local_34;
    fStack_2c = local_34;
    fStack_28 = local_34;
    cVar2 = FUN_00cb0710(this,acStack_38,local_34,(uint)puVar4,pvVar5,iVar6,iVar7);
    if (cVar2 != '\0') {
      FUN_00ab1290(this,param_5,(int)param_3,(int)param_4,'\x01','\x01');
      FUN_00ab5c20((int)this);
    }
  }
  return;
}

