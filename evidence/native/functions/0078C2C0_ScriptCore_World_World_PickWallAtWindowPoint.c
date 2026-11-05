/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163548 (original PC 1.67 TS3W.exe).
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
  int iVar2;
  uint uVar3;
  undefined3 extraout_var;
  undefined4 uVar4;
  float10 fVar5;
  char local_bc;
  char local_bb;
  char local_ba;
  char local_b9;
  char local_b8;
  char local_b7;
  int local_b4;
  float local_b0;
  float fStack_ac;
  int iStack_a8;
  undefined4 uStack_a4;
  float local_98;
  float local_94;
  float local_90 [4];
  float local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  float local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  float local_60 [4];
  float local_50 [4];
  float local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  iVar2 = FUN_006e8170();
  iVar2 = FUN_005361d0(iVar2);
  FUN_007cef70(iVar2,param_1,param_2,local_90,local_60);
  iVar2 = FUN_00686e60();
  uVar3 = 0;
  if (iVar2 != 0) {
    uVar3 = FUN_00687390(local_90,local_60,2,local_50,'\x01');
    if ((char)uVar3 != '\0') {
      local_bc = -1;
      local_bb = -1;
      local_b9 = -1;
      local_b8 = -1;
      local_b4 = 0;
      local_ba = '\0';
      local_b7 = '\0';
      cVar1 = FUN_00b10b60(&local_40,&local_b4,(undefined4 *)&local_bc);
      uVar3 = CONCAT31(extraout_var,cVar1);
      if (cVar1 != '\0') {
        local_b0 = local_40;
        fStack_ac = (float)uStack_3c;
        iStack_a8 = uStack_38;
        uStack_a4 = uStack_34;
        local_80 = local_40;
        uStack_7c = uStack_3c;
        uStack_78 = uStack_38;
        uStack_74 = uStack_34;
        local_70 = local_40;
        uStack_6c = uStack_3c;
        uStack_68 = uStack_38;
        uStack_64 = uStack_34;
        FUN_0076bf70(param_3,local_40,uStack_3c,uStack_38);
        iStack_a8 = (int)local_ba;
        local_b0 = (float)(int)local_bc;
        fStack_ac = (float)(int)local_bb;
        fVar5 = FUN_00a8c690(*(void **)(local_b4 + 0x290),&local_b0);
        local_98 = (float)fVar5;
        iStack_a8 = (int)local_b7;
        local_b0 = (float)(int)local_b9;
        fStack_ac = (float)(int)local_b8;
        fVar5 = FUN_00a8c690(*(void **)(local_b4 + 0x290),&local_b0);
        local_94 = (float)fVar5;
        FUN_0076bf70(param_4,(float)(int)local_bc,local_98,(float)(int)local_bb);
        uVar4 = FUN_0076bf70(param_5,(float)(int)local_b9,local_94,(float)(int)local_b8);
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
    }
  }
  return uVar3 & 0xffffff00;
}

