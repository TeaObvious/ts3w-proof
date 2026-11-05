/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163548 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_PickWallAtWindowPoint [assembly=ScriptCore token=0x060007B0; x:
   System.Int32, y: System.Int32, outHitPt: Sims3.SimIFace.Vector3&, outOrig:
   Sims3.SimIFace.Vector3&, outDest: Sims3.SimIFace.Vector3&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_PickWallAtWindowPoint
          (int param_1,int param_2,void *param_3,void *param_4,void *param_5)

{
  char cVar1;
  void *pvVar2;
  int iVar3;
  uint uVar4;
  undefined3 extraout_var;
  undefined4 uVar5;
  float10 fVar6;
  char local_bc;
  char local_bb;
  char local_ba;
  char local_b9;
  char local_b8;
  char local_b7;
  int local_b4;
  LotXZLevel local_b0;
  undefined4 uStack_a4;
  float local_98;
  float local_94;
  float local_90 [4];
  float local_80;
  float fStack_7c;
  int iStack_78;
  undefined4 uStack_74;
  float local_70;
  float fStack_6c;
  int iStack_68;
  undefined4 uStack_64;
  float local_60 [4];
  float local_50 [4];
  float local_40;
  float fStack_3c;
  int iStack_38;
  undefined4 uStack_34;
  
  pvVar2 = LoadPump_ReadFrameServiceGlobal();
  iVar3 = FUN_005361d0((int)pvVar2);
  FUN_007cef70(iVar3,param_1,param_2,local_90,local_60);
  iVar3 = CollisionService_GetGlobal();
  uVar4 = 0;
  if (iVar3 != 0) {
    uVar4 = CollisionService_QuerySegment(local_90,local_60,2,local_50,'\x01');
    if ((char)uVar4 != '\0') {
      local_bc = -1;
      local_bb = -1;
      local_b9 = -1;
      local_b8 = -1;
      local_b4 = 0;
      local_ba = '\0';
      local_b7 = '\0';
      cVar1 = FUN_00b10b60(&local_40,&local_b4,(undefined4 *)&local_bc);
      uVar4 = CONCAT31(extraout_var,cVar1);
      if (cVar1 != '\0') {
        local_b0.x = local_40;
        local_b0.z = fStack_3c;
        local_b0.level = iStack_38;
        uStack_a4 = uStack_34;
        local_80 = local_40;
        fStack_7c = fStack_3c;
        iStack_78 = iStack_38;
        uStack_74 = uStack_34;
        local_70 = local_40;
        fStack_6c = fStack_3c;
        iStack_68 = iStack_38;
        uStack_64 = uStack_34;
        FUN_0076bf70(param_3,local_40,fStack_3c,iStack_38);
        local_b0.level = (int)local_ba;
        local_b0.x = (float)(int)local_bc;
        local_b0.z = (float)(int)local_bb;
        fVar6 = LotLevelHeight_SampleLocalPosition(*(void **)(local_b4 + 0x290),&local_b0);
        local_98 = (float)fVar6;
        local_b0.level = (int)local_b7;
        local_b0.x = (float)(int)local_b9;
        local_b0.z = (float)(int)local_b8;
        fVar6 = LotLevelHeight_SampleLocalPosition(*(void **)(local_b4 + 0x290),&local_b0);
        local_94 = (float)fVar6;
        FUN_0076bf70(param_4,(float)(int)local_bc,local_98,(float)(int)local_bb);
        uVar5 = FUN_0076bf70(param_5,(float)(int)local_b9,local_94,(float)(int)local_b8);
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
    }
  }
  return uVar4 & 0xffffff00;
}

