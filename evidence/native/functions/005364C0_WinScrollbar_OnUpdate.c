/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: live geometry, smooth arrows, 150-count interpolation, >150 rounded-count repeat,
   clock restart; AL1 RET.
   Smooth flag 1 arrows scale elapsed amount by binary32 0.001. Increment flag 2 interpolation
   completes at rounded count >=150. Repeat requires rounded count >150 (ordinary first integer
   count 151), with clock restart even when the pointer/component gate misses. Mode 4 units are
   milliseconds only after successful original calibration. This is not an exact 0.151-second
   Stopwatch equivalence. Normal AL=1; upper EAX unspecified; RET.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 __fastcall WinScrollbar_OnUpdate(int *param_1)

{
  DWORD *this;
  char cVar1;
  uint extraout_EAX;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  float10 fVar5;
  ulonglong uVar6;
  
  (**(code **)(*param_1 + 0xa0))();
  this = (DWORD *)(param_1 + 0xa6);
  if (param_1[0xa6] == 0 && param_1[0xa7] == 0) {
    uVar3 = param_1[0x97];
    if ((param_1[0x95] != uVar3) && ((*(byte *)(param_1 + 0xa4) & 2) != 0)) {
      uVar3 = (**(code **)(param_1[0x94] + 0x24))(uVar3);
    }
LAB_0053673b:
    return CONCAT31((int3)(uVar3 >> 8),1);
  }
  if (((param_1[0xa4] & 1U) != 0) &&
     ((*(char *)((int)param_1 + 0x285) == '\x01' || (*(char *)((int)param_1 + 0x285) == '\x06')))) {
    fVar5 = ElapsedClock_ReadScaledTicks(this);
    fVar5 = fVar5 * (float10)param_1[0x9d] * (float10)0.001;
    uVar3 = extraout_EAX;
    if ((float10)1 <= fVar5) {
      cVar1 = *(char *)((int)param_1 + 0x285);
      if (cVar1 == (char)param_1[0xa1]) {
        if (cVar1 == '\x01') {
          (**(code **)(param_1[0x94] + 0x28))(param_1[0x95] - (int)fVar5,1);
        }
        else if (cVar1 == '\x06') {
          (**(code **)(param_1[0x94] + 0x28))((int)fVar5 + param_1[0x95],1);
        }
      }
      param_1[0x98] = param_1[0x95];
      uVar2 = ElapsedClock_Restart(this);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
    goto LAB_0053673b;
  }
  if ((param_1[0xa4] & 2U) != 0) {
    uVar6 = ElapsedClock_ReadRoundedScaledTicks(this);
    if (((int)(uVar6 >> 0x20) == 0) && ((uint)uVar6 < 0x96)) {
      iVar4 = param_1[0x98];
      fVar5 = ElapsedClock_ReadScaledTicks(this);
      (**(code **)(param_1[0x94] + 0x28))
                ((int)(fVar5 * (float10)0.006666667 * (float10)(param_1[0x97] - iVar4) +
                      (float10)iVar4),1);
    }
    else {
      (**(code **)(param_1[0x94] + 0x28))(param_1[0x97],1);
      param_1[0x98] = param_1[0x97];
      if (*(char *)((int)param_1 + 0x285) == -1) {
        uVar3 = ElapsedClock_StopAndAccumulate(this);
        if ((char)param_1[0xa3] == '\0') {
          uVar2 = (**(code **)(param_1[1] + 0x74))(8,0);
          return CONCAT31((int3)((uint)uVar2 >> 8),1);
        }
        goto LAB_0053673b;
      }
    }
  }
  uVar6 = ElapsedClock_ReadRoundedScaledTicks(this);
  uVar3 = (uint)uVar6;
  if (((int)(uVar6 >> 0x20) == 0) && (uVar3 < 0x97)) goto LAB_0053673b;
  if (*(char *)((int)param_1 + 0x285) != (char)param_1[0xa1]) goto switchD_0053669c_caseD_3;
  switch(*(char *)((int)param_1 + 0x285)) {
  case '\x01':
    iVar4 = param_1[0x95] - param_1[0x9d];
    break;
  case '\x02':
    iVar4 = param_1[0x95] - param_1[0x9e];
    break;
  default:
    goto switchD_0053669c_caseD_3;
  case '\x05':
    iVar4 = param_1[0x9e];
    goto LAB_005366cd;
  case '\x06':
    iVar4 = param_1[0x9d];
LAB_005366cd:
    iVar4 = iVar4 + param_1[0x95];
  }
  (**(code **)(param_1[0x94] + 0x24))(iVar4);
  if ((*(byte *)(param_1 + 0xa4) & 2) == 0) {
    (**(code **)(param_1[0x94] + 0x28))(param_1[0x97],1);
  }
switchD_0053669c_caseD_3:
  uVar2 = ElapsedClock_Restart(this);
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

