/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 selected DFS: destination hash+28 tested
   only after path nonempty. Traverse modes0/1/2 control admission using state public+4F and
   explicit+4E, with target admission and visited/excluded sets. Direct self edge skipped. This
   routine emits path lists; selection and loop fallback live in007FC3D0. C prototype includes
   compiler/container artifacts, not recovered source types; current 100000-visit exception and
   memoization are project policy. */

void SacsPaths_EnumerateSimplePaths
               (uint param_1,void *param_2,int *param_3,uint *param_4,int param_5,int param_6,
               int param_7,uint param_8)

{
  int iVar1;
  uint *puVar2;
  uint *puVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  int *this;
  uint *this_00;
  uint uVar7;
  int *piVar8;
  int *piVar9;
  int local_10 [4];
  
  this_00 = param_4;
  this = param_3;
  if (param_1 == 0) {
    return;
  }
  bVar4 = false;
  bVar6 = false;
  if (param_6 == 0) {
    bVar6 = true;
  }
  else {
    if (param_6 != 1) {
      if (param_6 == 2) {
        bVar4 = false;
        bVar6 = false;
      }
      goto LAB_007fc0cf;
    }
    bVar6 = false;
  }
  bVar4 = true;
LAB_007fc0cf:
  if ((param_3[1] - *param_3 >> 2 != 0) && (*(int *)(param_1 + 0x28) == param_5)) {
    FUN_007fbf80(param_2,local_10,*(void **)((int)param_2 + 0x18),*(int *)((int)param_2 + 0x1c),
                 *(int *)((int)param_2 + 0x20),*(int **)((int)param_2 + 0x24),param_3);
    return;
  }
  if (*(int *)param_4[1] == 0) {
    piVar9 = (int *)param_4[1] + 1;
    iVar1 = *piVar9;
    while (iVar1 == 0) {
      piVar9 = piVar9 + 1;
      iVar1 = *piVar9;
    }
  }
  param_3 = (int *)((uint)param_3 & 0xffffff00);
  FUN_006b5bc0(param_4,local_10,&param_1);
  param_4 = *(uint **)(param_1 + 0x3c);
  puVar2 = *(uint **)(param_1 + 0x40);
  do {
    if (param_4 == puVar2) {
      return;
    }
    piVar9 = (int *)*param_4;
    uVar7 = 0;
    if (param_8 != 0) {
      do {
        if (piVar9 == *(int **)(param_7 + uVar7 * 4)) goto LAB_007fc257;
        uVar7 = uVar7 + 1;
      } while (uVar7 < param_8);
    }
    if (piVar9 != (int *)param_1) {
      param_3 = piVar9;
      if (piVar9[10] == param_5) {
LAB_007fc1fb:
        uVar7 = param_8;
        puVar3 = (uint *)this[1];
        if (puVar3 < (uint *)this[2]) {
          this[1] = (int)(puVar3 + 1);
          if (puVar3 != (uint *)0x0) {
            *puVar3 = (uint)piVar9;
          }
        }
        else {
          FUN_00982420(this,puVar3,&param_3);
          piVar9 = param_3;
        }
        SacsPaths_EnumerateSimplePaths
                  ((uint)piVar9,param_2,this,this_00,param_5,param_6,param_7,uVar7);
        this[1] = this[1] + -4;
        FUN_006a5ad0(this_00,(uint *)&param_3);
      }
      else if ((bVar4) || (*(char *)((int)piVar9 + 0x4f) == '\0')) {
        if (*(char *)((int)piVar9 + 0x4e) != '\0') {
          bVar5 = bVar4;
          if (*(char *)((int)piVar9 + 0x4f) != '\0') {
            bVar5 = bVar6;
          }
          if (!bVar5) goto LAB_007fc257;
        }
        if ((piVar9[10] == param_5) ||
           (iVar1 = *(int *)(this_00[1] + this_00[2] * 4),
           piVar8 = (int *)FUN_008b26c0(this_00,local_10,(uint *)&param_3), *piVar8 == iVar1))
        goto LAB_007fc1fb;
      }
    }
LAB_007fc257:
    param_4 = param_4 + 1;
  } while( true );
}

