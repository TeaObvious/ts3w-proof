/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: For each score index0..6, only positive weights contribute. 0/1
   score near/far origin;2/3 near/far center via virtual contexts. With maxRadius<0 or max==min,
   these four contribute weight directly. Index4 contributes nothing in this switch. Index5 calls
   preferred-radius scorer;6 calls seeded global random generator. Sum is weighted and not
   normalized. Sentinel comparison is -1.0f, not zero; if exactly-1 sets1.0f. Exceptional float
   semantics remain instruction-defined. */

float10 __thiscall RadialRangeDestination_EvaluateScore(void *param_1,float *param_2)

{
  float fVar1;
  uint uVar2;
  float10 fVar3;
  float local_4;
  
  local_4 = 0.0;
  uVar2 = 0;
  do {
    fVar1 = *(float *)((int)param_1 + uVar2 * 4 + 0xc);
    if (fVar1 <= 0.0) goto switchD_0074fae7_caseD_4;
    switch(uVar2) {
    case 0:
      if ((0.0 <= *(float *)((int)param_1 + 100)) &&
         (*(float *)((int)param_1 + 100) != *(float *)((int)param_1 + 0x60))) {
        fVar3 = (float10)(**(code **)PTR_PTR_011617d0)(param_2);
        break;
      }
LAB_0074fb16:
      local_4 = fVar1 + local_4;
      goto switchD_0074fae7_caseD_4;
    case 1:
      if ((*(float *)((int)param_1 + 100) < 0.0) ||
         (*(float *)((int)param_1 + 100) == *(float *)((int)param_1 + 0x60))) goto LAB_0074fb16;
      fVar3 = (float10)(**(code **)PTR_PTR_01161800)(param_2);
      break;
    case 2:
      if ((*(float *)((int)param_1 + 100) < 0.0) ||
         (*(float *)((int)param_1 + 100) == *(float *)((int)param_1 + 0x60))) goto LAB_0074fb16;
      fVar3 = (float10)(**(code **)PTR_PTR_01161830)(param_2);
      break;
    case 3:
      if ((*(float *)((int)param_1 + 100) < 0.0) ||
         (*(float *)((int)param_1 + 100) == *(float *)((int)param_1 + 0x60))) goto LAB_0074fb16;
      fVar3 = (float10)(**(code **)PTR_PTR_01161860)(param_2);
      break;
    default:
      goto switchD_0074fae7_caseD_4;
    case 5:
      fVar3 = RadialRangeScore_EvaluatePreferredRadius(&DAT_011d5130,param_2);
      break;
    case 6:
      if ((_DAT_011d5b80 & 1) == 0) {
        _DAT_011d5b80 = _DAT_011d5b80 | 1;
        FUN_004fac90(&DAT_011d51b8,0xffffffff);
      }
      fVar3 = FUN_004fac60((uint *)&DAT_011d51b8);
    }
    local_4 = (float)(fVar3 * (float10)fVar1 + (float10)local_4);
switchD_0074fae7_caseD_4:
    uVar2 = uVar2 + 1;
    if (6 < uVar2) {
      if (local_4 == DAT_00fab218) {
        local_4 = DAT_00f998f8;
      }
      return (float10)local_4;
    }
  } while( true );
}

