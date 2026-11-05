/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Gets the four X/Z corners of the object's component bounding box,
   transformed by its transform component. The box comes from component resolved using DAT_011e9fc4
   (getter948880 returns component+0x60), otherwise the alternate DAT_011ea290 component. This is
   the same box source used by native Objects_GetBoundingBox, not a union rebuilt from enabled FTPT
   area polygons. Final call7CE1C0 computes polygon bounds. */

uint __cdecl Seasons_GetObjectComponentBoundsPolygon(void *param_1,int *param_2,float *param_3)

{
  uint in_EAX;
  void *this;
  int iVar1;
  undefined4 *puVar2;
  float *pfVar3;
  uint uVar4;
  float *pfVar5;
  float local_120;
  float fStack_11c;
  float fStack_118;
  undefined4 uStack_114;
  float local_110;
  undefined4 uStack_10c;
  float fStack_108;
  undefined4 uStack_104;
  float local_100;
  undefined4 uStack_fc;
  float fStack_f8;
  undefined4 uStack_f4;
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 local_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  float local_d0;
  undefined4 uStack_cc;
  float fStack_c8;
  undefined4 uStack_c4;
  float local_c0;
  undefined4 uStack_bc;
  float fStack_b8;
  undefined4 uStack_b4;
  float local_80;
  undefined4 uStack_7c;
  float fStack_78;
  undefined4 uStack_74;
  float local_70;
  undefined4 uStack_6c;
  float fStack_68;
  undefined4 uStack_64;
  uint local_50 [19];

  if (param_1 != (void *)0x0) {
    this = (void *)FUN_00934260(param_1,DAT_011ea158);
    iVar1 = FUN_00934260(param_1,DAT_011e9fc4);
    in_EAX = FUN_00934260(param_1,DAT_011ea290);
    if (this != (void *)0x0) {
      if (iVar1 == 0) {
        if (in_EAX == 0) goto LAB_00b0ec11;
        puVar2 = (undefined4 *)FUN_0095a640(in_EAX);
      }
      else {
                    /* Take component bounding box through948880. This box is independent of the
                       current enabled FTPT polygons. */
        puVar2 = (undefined4 *)FUN_00948880(iVar1);
      }
      local_f0 = *puVar2;
      uStack_ec = puVar2[1];
      uStack_e8 = puVar2[2];
      uStack_e4 = puVar2[3];
      local_e0 = puVar2[4];
      uStack_dc = puVar2[5];
      uStack_d8 = puVar2[6];
      uStack_d4 = puVar2[7];
      pfVar5 = &local_d0;
      pfVar3 = (float *)FUN_00957a90(this,local_50);
      FUN_0068d9c0(&local_f0,pfVar3,pfVar5);
      pfVar5 = (float *)param_2[1];
      local_110 = local_d0;
      uStack_10c = uStack_cc;
      fStack_108 = fStack_c8;
      uStack_104 = uStack_c4;
      fStack_118 = fStack_c8;
      uStack_114 = uStack_c4;
      local_120 = local_d0;
      fStack_11c = fStack_c8;
      if (pfVar5 < (float *)param_2[2]) {
        param_2[1] = (int)(pfVar5 + 2);
        if (pfVar5 != (float *)0x0) {
          *pfVar5 = local_d0;
          pfVar5[1] = fStack_c8;
        }
      }
      else {
        FUN_00405c10(param_2,pfVar5,&local_120);
      }
      pfVar5 = (float *)param_2[1];
      local_100 = local_c0;
      uStack_fc = uStack_bc;
      fStack_f8 = fStack_b8;
      uStack_f4 = uStack_b4;
      local_110 = local_c0;
      uStack_10c = uStack_bc;
      fStack_108 = fStack_b8;
      uStack_104 = uStack_b4;
      local_120 = local_c0;
      fStack_11c = fStack_b8;
      if (pfVar5 < (float *)param_2[2]) {
        param_2[1] = (int)(pfVar5 + 2);
        if (pfVar5 != (float *)0x0) {
          *pfVar5 = local_c0;
          pfVar5[1] = fStack_b8;
        }
      }
      else {
        FUN_00405c10(param_2,pfVar5,&local_120);
      }
      pfVar5 = (float *)param_2[1];
      local_110 = local_80;
      uStack_10c = uStack_7c;
      fStack_108 = fStack_78;
      uStack_104 = uStack_74;
      local_100 = local_80;
      uStack_fc = uStack_7c;
      fStack_f8 = fStack_78;
      uStack_f4 = uStack_74;
      local_120 = local_80;
      fStack_11c = fStack_78;
      if (pfVar5 < (float *)param_2[2]) {
        param_2[1] = (int)(pfVar5 + 2);
        if (pfVar5 != (float *)0x0) {
          *pfVar5 = local_80;
          pfVar5[1] = fStack_78;
        }
      }
      else {
        FUN_00405c10(param_2,pfVar5,&local_120);
      }
      pfVar5 = (float *)param_2[1];
      local_110 = local_70;
      uStack_10c = uStack_6c;
      fStack_108 = fStack_68;
      uStack_104 = uStack_64;
      local_100 = local_70;
      uStack_fc = uStack_6c;
      fStack_f8 = fStack_68;
      uStack_f4 = uStack_64;
      local_120 = local_70;
      fStack_11c = fStack_68;
      if (pfVar5 < (float *)param_2[2]) {
        param_2[1] = (int)(pfVar5 + 2);
        if (pfVar5 != (float *)0x0) {
          *pfVar5 = local_70;
          pfVar5[1] = fStack_68;
          uVar4 = FUN_007ce1c0(param_2,param_3);
          return uVar4;
        }
      }
      else {
        FUN_00405c10(param_2,pfVar5,&local_120);
      }
      uVar4 = FUN_007ce1c0(param_2,param_3);
      return uVar4;
    }
  }
LAB_00b0ec11:
  return in_EAX & 0xffffff00;
}


