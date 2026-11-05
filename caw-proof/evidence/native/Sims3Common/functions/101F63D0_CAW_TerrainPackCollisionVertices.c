/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Editor builder source vectors are(X,Z,height,X). Subtracts
   builder placement(0,heightRange*.5,0,0), applies inverse scales64,1/heightQuantum,64, adds .5
   through ADDPS before floor(double), clamps signed-short values to[-32768,32767], emits
   stride8(X,Y,Z,0). Rejects source vertex count>FFFF. The floor input is already rounded binary32;
   applying floor to a widened unrounded arithmetic expression is different. Analyst-assigned helper
   names are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

void __thiscall
CAW_TerrainPackCollisionVertices(void *this,int *param_1,int *param_2,uint *param_3,uint *param_4)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float *pfVar4;
  uint uVar5;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  uint uVar6;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  undefined4 extraout_EDX_01;
  undefined2 *puVar7;
  uint uVar8;
  ulonglong uVar9;
  int local_80;
  uint local_7c;
  uint local_78;
  uint local_74;
  uint local_70;
  uint local_6c;
  uint local_68;
  uint local_64;
  
  local_64 = param_1[1] - *param_1 >> 4;
  if (local_64 < 0x10000) {
    FUN_101f60c0(param_2,local_64);
    fVar3 = _DAT_10b310ec;
    puVar7 = (undefined2 *)*param_2;
    local_74 = 0x7fffffff;
    local_7c = 0x7fffffff;
    local_70 = 0x7fffffff;
    local_6c = 0x80000000;
    local_78 = 0x80000000;
    local_68 = 0x80000000;
    if (local_64 != 0) {
      local_80 = 0;
      do {
        pfVar4 = (float *)(*param_1 + local_80);
        fVar1 = pfVar4[1];
        fVar2 = pfVar4[2];
        floor((double)(fVar3 + *(float *)((int)this + 0x20) *
                               (*pfVar4 - *(float *)((int)this + 0x30))));
        uVar9 = FUN_10a90930(extraout_ECX,extraout_EDX);
        uVar8 = (uint)uVar9;
        floor((double)(fVar3 + *(float *)((int)this + 0x24) * (fVar2 - *(float *)((int)this + 0x34))
                      ));
        uVar9 = FUN_10a90930(extraout_ECX_00,extraout_EDX_00);
        uVar6 = (uint)uVar9;
        floor((double)(fVar3 + *(float *)((int)this + 0x28) * (fVar1 - *(float *)((int)this + 0x38))
                      ));
        uVar9 = FUN_10a90930(extraout_ECX_01,extraout_EDX_01);
        uVar5 = (uint)uVar9;
        if (0xffff < uVar8 + 0x8000) {
          uVar8 = (int)uVar8 >> 0x1f ^ 0x7fff;
        }
        if (0xffff < uVar6 + 0x8000) {
          uVar6 = (int)uVar6 >> 0x1f ^ 0x7fff;
        }
        if (0xffff < uVar5 + 0x8000) {
          uVar5 = (int)uVar5 >> 0x1f ^ 0x7fff;
        }
        if ((int)uVar8 < (int)local_74) {
          local_74 = uVar8;
        }
        if ((int)uVar6 < (int)local_7c) {
          local_7c = uVar6;
        }
        if ((int)uVar5 < (int)local_70) {
          local_70 = uVar5;
        }
        if ((int)local_6c < (int)uVar8) {
          local_6c = uVar8;
        }
        if ((int)local_78 < (int)uVar6) {
          local_78 = uVar6;
        }
        if ((int)local_68 < (int)uVar5) {
          local_68 = uVar5;
        }
        local_80 = local_80 + 0x10;
        *puVar7 = (short)uVar8;
        puVar7[1] = (short)uVar6;
        puVar7[2] = (short)uVar5;
        puVar7[3] = 0;
        puVar7 = puVar7 + 4;
        local_64 = local_64 - 1;
      } while (local_64 != 0);
    }
    *param_3 = local_7c;
    *param_4 = local_78;
  }
  return;
}

