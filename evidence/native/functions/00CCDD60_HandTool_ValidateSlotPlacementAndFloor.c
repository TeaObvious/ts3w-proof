/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cdecl eight words, low byte success with callback result output. Calls original
   managed hand-tool rule when both objects have script components, then full native attachment
   validation; callback bit8 overrides flag compatibility and bit10hex overrides intersections.
   Additional floor test is gated by prior validity, slot presence, manager interface and skip
   input, then AFC910 slot flags0C001A00 OR AFFDD0 child SLOT flags0C000000 OR steering-without-Sim.
   The three-bit pure trigger is not the complete floor validator or callback policy. */

byte __cdecl
HandTool_ValidateSlotPlacementAndFloor
          (void *param_1,void *param_2,int *param_3,float param_4,float *param_5,char param_6,
          uint *param_7,void *param_8)

{
  char cVar1;
  bool bVar2;
  int *piVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  byte local_18d;
  int *local_18c;
  uint local_188;
  float local_184;
  float fStack_180;
  float fStack_17c;
  float fStack_178;
  undefined4 uStack_174;
  undefined1 local_170 [12];
  undefined4 *puStack_164;
  undefined4 *puStack_148;
  undefined4 *puStack_12c;
  undefined4 *puStack_110;
  void *pvStack_f0;
  int *piStack_ec;
  float fStack_e8;
  float fStack_e4;
  undefined4 uStack_e0;
  float fStack_dc;
  float fStack_d8;
  undefined1 uStack_c7;
  undefined1 auStack_bc [184];
  
  local_188 = 0;
  if (((*(uint *)((int)param_1 + 0x2c) & DAT_011ea0f8) != 0) &&
     ((*(uint *)((int)param_2 + 0x2c) & DAT_011ea0f8) != 0)) {
    local_188 = FUN_0078fb80();
  }
  local_18d = (byte)local_188 & 1;
  local_184 = (float)(CONCAT31(local_184._1_3_,(char)(local_188 >> 4)) & 0xffffff01);
  FUN_00ad7740((int)local_170);
  cVar1 = FUN_00b3f700(param_1,param_2,param_3,param_4,param_5,(byte)(local_188 >> 3) & 1,
                       SUB41(local_184,0),local_170);
  if (cVar1 == '\0') {
    local_18d = 0;
  }
  piVar3 = (int *)FUN_0068f130((int)param_2);
  if (piVar3 == (int *)0x0) {
    local_18c = (int *)0x0;
  }
  else {
    local_18c = (int *)(**(code **)(*piVar3 + 0xc))(0x90566b0e);
  }
  if (((((local_18d != 0) && (param_3 != (int *)0x0)) && (local_18c != (int *)0x0)) &&
      (param_6 == '\0')) &&
     (((uVar4 = FUN_00afc910((int)param_3), (char)uVar4 != '\0' ||
       (uVar5 = Object_ReadSlotPlacementFlags((int)param_1), (uVar5 & 0xc000000) != 0)) ||
      (uVar4 = Object_HasSteeringWithoutSim((int)param_1), (char)uVar4 != '\0')))) {
    fStack_17c = -1.0;
    fStack_178 = -1.0;
    uStack_174 = 0;
    fStack_180 = 0.0;
    local_184 = 0.0;
    FUN_00ccbae0(local_18c,param_1,param_2,param_3,param_4,param_5,&fStack_17c,&fStack_180,
                 &local_184);
    FUN_00793b80(&pvStack_f0);
    fStack_e8 = fStack_17c;
    piStack_ec = local_18c;
    fStack_dc = fStack_180;
    pvStack_f0 = param_1;
    fStack_e4 = fStack_178;
    uStack_e0 = uStack_174;
    fStack_d8 = local_184;
    uStack_c7 = 0;
    FUN_00b3fab0(param_2,auStack_bc);
    if ((local_188 >> 4 & 1) != 0) {
      FUN_00b3fa50(param_2,auStack_bc);
    }
    cVar1 = FUN_00b45930((int *)&pvStack_f0,param_8);
    if (cVar1 == '\0') {
      local_18d = 0;
    }
    FUN_00793aa0((int)&pvStack_f0);
  }
  if ((param_8 != (void *)0x0) && (bVar2 = FUN_00ad6f10((int)local_170), bVar2)) {
    iVar6 = FUN_007e51a0(local_170);
    for (piVar3 = *(int **)(iVar6 + 8); piVar3 != (int *)(iVar6 + 4); piVar3 = FUN_004e1030(piVar3))
    {
      FUN_00ad8570(param_8,(float *)(piVar3 + 4));
    }
  }
  if (param_7 != (uint *)0x0) {
    *param_7 = local_188;
  }
  FUN_00a527c0(puStack_110);
  FUN_00a527c0(puStack_12c);
  FUN_00a527c0(puStack_148);
  FUN_00a52780(puStack_164);
  return local_18d;
}

