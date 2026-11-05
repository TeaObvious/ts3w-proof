/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: selector validation predicate at a LotXZLevel position. Encodes a compact key, tests the
   level one below against signed lot level bounds, looks up that cell with mask0f, tests property
   indices3 and6, and if one matches forwards the position to the subsystem at lot+2c4. Callers
   inspect AL; upper EAX is not a boolean result. The property names and downstream subsystem
   semantics remain unresolved; the analyst name describes the visible lower-level query only. */

uint __cdecl Lot_TestLowerLevelPropertyAtPosition(void *param_1,LotXZLevel *param_2)

{
  void *this;
  void *this_00;
  LotXZLevel *pLVar1;
  char cVar2;
  bool bVar3;
  char extraout_AL;
  uint in_EAX;
  undefined4 uVar4;
  uint3 uVar6;
  int iVar5;
  uint3 extraout_var;
  uint3 extraout_var_00;
  undefined3 local_4;
  undefined1 local_1;
  
  pLVar1 = param_2;
  this_00 = param_1;
  if (param_1 == (void *)0x0) {
    return in_EAX & 0xffffff00;
  }
  param_1 = (void *)CONCAT13(param_1._3_1_,0xffff);
  uVar4 = FUN_00af7730(&param_2->x,(char *)&param_1);
  uVar6 = (uint3)((uint)uVar4 >> 8);
  this = *(void **)((int)this_00 + 0x2c4);
  cVar2 = param_1._2_1_ + -1;
  if ((((-1 < (char)param_1) && ((int)(char)param_1 < *(int *)((int)this_00 + 0x174))) &&
      (-1 < param_1._1_1_)) &&
     ((((int)param_1._1_1_ < *(int *)((int)this_00 + 0x178) &&
       (*(int *)((int)this_00 + 0x17c) <= (int)cVar2)) &&
      ((int)cVar2 <= *(int *)((int)this_00 + 0x180))))) {
    _local_4 = CONCAT13(0xf,CONCAT12(cVar2,(short)param_1));
    iVar5 = FUN_00ab67d0(this_00,(char *)&local_4,'\0');
    bVar3 = FUN_00afe300(iVar5,3);
    if (!bVar3) {
      bVar3 = FUN_00afe300(iVar5,6);
      uVar6 = extraout_var;
      if (!bVar3) goto LAB_00acfc93;
    }
    FUN_00a55490(this,&pLVar1->x);
    uVar6 = extraout_var_00;
    if (extraout_AL != '\0') {
      return CONCAT31(extraout_var_00,1);
    }
  }
LAB_00acfc93:
  return (uint)uVar6 << 8;
}

