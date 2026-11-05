/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl five words, low AL bool. Signed compact X/Z/level,
   inclusive vertex bounds then rejects lot-border vertices; validates basement through
   min(maxLevel, basement+1). Stops at ground if requested height<=terrain; otherwise calls CB0710
   and increments exact3.0. Decompiler char-pointer loop locals overlay integers and floats. */

bool __cdecl
BasementExcavation_ValidateOneVertex
          (void *param_1,char *param_2,float param_3,uint *param_4,void *param_5)

{
  char *pcVar1;
  undefined3 uVar2;
  char *pcVar3;
  uint *puVar4;
  void *pvVar5;
  char cVar6;
  int iVar7;
  char **ppcVar8;
  int iVar9;
  int iVar10;
  char *local_4;
  
  pvVar5 = param_5;
  puVar4 = param_4;
  iVar7 = (int)*param_2;
  iVar10 = (int)param_2[1];
  if ((((((-1 < iVar7) && (iVar7 <= *(int *)((int)param_1 + 0x174))) && (-1 < iVar10)) &&
       ((iVar10 <= *(int *)((int)param_1 + 0x178) &&
        (iVar9 = (int)param_2[2], *(int *)((int)param_1 + 0x17c) <= iVar9)))) &&
      ((local_4 = *(char **)((int)param_1 + 0x180), iVar9 <= (int)local_4 &&
       ((iVar7 != 0 && (iVar7 != *(int *)((int)param_1 + 0x174))))))) &&
     ((iVar10 != 0 && (iVar10 != *(int *)((int)param_1 + 0x178))))) {
    ppcVar8 = &param_2;
    if ((int)local_4 <= iVar9 + 1) {
      ppcVar8 = &local_4;
    }
    pcVar1 = *ppcVar8;
    cVar6 = param_2[2];
    uVar2 = *(undefined3 *)param_2;
    param_2._3_1_ = (undefined1)((uint)(iVar9 + 1) >> 0x18);
    param_2 = (char *)CONCAT13(param_2._3_1_,uVar2);
    local_4 = (char *)param_3;
    pcVar3 = param_2;
    while( true ) {
      if ((int)pcVar1 < (int)cVar6) {
        return true;
      }
      iVar7 = *(int *)(*(int *)((int)param_1 + 0x290) + 0x24);
      if (cVar6 == '\0') {
        param_2._0_1_ = (char)pcVar3;
        param_2._1_1_ = (char)((uint)pcVar3 >> 8);
        if ((float)local_4 <=
            *(float *)(*(int *)(iVar7 + 0x10) +
                      (((int)(char)param_2 -
                       *(int *)(iVar7 + 4) * *(int *)(*(int *)((int)param_1 + 0x290) + 0x10)) *
                       *(int *)(iVar7 + 8) + (int)param_2._1_1_) * 4)) {
          return true;
        }
      }
      param_2 = pcVar3;
      cVar6 = FUN_00cb0710(param_1,(char *)&param_2,(float)local_4,*puVar4,pvVar5,0,0);
      if (cVar6 == '\0') break;
      local_4 = (char *)((float)local_4 + 3.0);
      cVar6 = param_2._2_1_ + '\x01';
      param_2._0_3_ = CONCAT12(cVar6,param_2._0_2_);
      pcVar3 = param_2;
    }
    return false;
  }
  return false;
}

