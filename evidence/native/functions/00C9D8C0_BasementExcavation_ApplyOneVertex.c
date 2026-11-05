/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl five words, low AL bool. Same compact/border admission
   and ground early-stop as validation. Applies D22870 while CB0710 allows; a raised ground
   continues upward until maxLevel or first refusal, exact3.0 rise. Retained float intermediates and
   native x87 precision are not arbitrary double math. */

bool __cdecl
BasementExcavation_ApplyOneVertex
          (void *param_1,char *param_2,float param_3,uint *param_4,void *param_5)

{
  char *pcVar1;
  bool bVar2;
  undefined3 uVar3;
  void *this;
  char *pcVar4;
  char cVar5;
  int iVar6;
  char **ppcVar7;
  int iVar8;
  int iVar9;
  float fVar10;
  char *local_4;
  
  this = param_5;
  iVar6 = (int)*param_2;
  iVar9 = (int)param_2[1];
  if ((((((iVar6 < 0) || (*(int *)((int)param_1 + 0x174) < iVar6)) || (iVar9 < 0)) ||
       ((*(int *)((int)param_1 + 0x178) < iVar9 ||
        (iVar8 = (int)param_2[2], iVar8 < *(int *)((int)param_1 + 0x17c))))) ||
      ((local_4 = *(char **)((int)param_1 + 0x180), (int)local_4 < iVar8 ||
       ((iVar6 == 0 || (iVar6 == *(int *)((int)param_1 + 0x174))))))) ||
     ((iVar9 == 0 || (iVar9 == *(int *)((int)param_1 + 0x178))))) {
    return false;
  }
  ppcVar7 = &param_2;
  if ((int)local_4 <= iVar8 + 1) {
    ppcVar7 = &local_4;
  }
  pcVar1 = *ppcVar7;
  cVar5 = param_2[2];
  uVar3 = *(undefined3 *)param_2;
  bVar2 = false;
  param_2._3_1_ = (undefined1)((uint)(iVar8 + 1) >> 0x18);
  param_2 = (char *)CONCAT13(param_2._3_1_,uVar3);
  fVar10 = param_3;
  if ((int)cVar5 <= (int)pcVar1) {
    do {
      iVar6 = *(int *)(*(int *)((int)param_1 + 0x290) + 0x24);
      if (cVar5 == '\0') {
        if (fVar10 <= *(float *)(*(int *)(iVar6 + 0x10) +
                                (((int)(char)param_2 -
                                 *(int *)(iVar6 + 4) *
                                 *(int *)(*(int *)((int)param_1 + 0x290) + 0x10)) *
                                 *(int *)(iVar6 + 8) + (int)param_2._1_1_) * 4)) {
          return true;
        }
        bVar2 = true;
      }
      cVar5 = FUN_00cb0710(param_1,(char *)&param_2,fVar10,*param_4,(void *)0x0,0,0);
      if (cVar5 == '\0') {
        return false;
      }
      FUN_00d22870(this,(int *)&param_2,fVar10,0.0);
      pcVar4 = local_4;
      fVar10 = fVar10 + 3.0;
      cVar5 = param_2._2_1_ + '\x01';
      param_2._0_3_ = CONCAT12(cVar5,param_2._0_2_);
    } while ((int)cVar5 <= (int)pcVar1);
    if (bVar2) {
      while (((int)cVar5 <= (int)pcVar4 &&
             (cVar5 = FUN_00cb0710(param_1,(char *)&param_2,fVar10,*param_4,(void *)0x0,0,0),
             cVar5 != '\0'))) {
        FUN_00d22870(this,(int *)&param_2,fVar10,0.0);
        fVar10 = fVar10 + 3.0;
        cVar5 = param_2._2_1_ + '\x01';
        param_2._0_3_ = CONCAT12(cVar5,param_2._0_2_);
      }
    }
  }
  return true;
}

