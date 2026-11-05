/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: builds a 32-bit presence mask from the first stored SSET field record and the caller's
   option-hash array. For each of the record's option hashes, sets bit (index & 31) if that hash is
   present. No match leaves its bit clear. The array lengths and shifts are unsigned in the original
   instructions. */

uint __thiscall ShaderSet_BuildOptionPresenceMask(void *this,int *param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  int *piVar5;
  uint uVar6;
  
  piVar2 = param_1;
  piVar5 = *(int **)((int)this + 0x1c);
  piVar1 = param_1 + param_2;
  uVar3 = 0;
  if (piVar5 == *(int **)((int)this + 0x20)) {
    param_1 = (int *)0x0;
  }
  else {
    param_1 = piVar5 + *piVar5 + 2;
  }
  piVar5 = *(int **)((int)this + 0x1c);
  if (piVar5 == *(int **)((int)this + 0x20)) {
    uVar6 = 0;
  }
  else {
    uVar6 = piVar5[*piVar5 + 1];
  }
  uVar4 = 0;
  if (uVar6 != 0) {
    do {
      if (piVar2 != piVar1) {
        piVar5 = piVar2;
        do {
          if (*piVar5 == param_1[uVar4]) {
            if (piVar1 != piVar5) {
              uVar3 = uVar3 | 1 << ((byte)uVar4 & 0x1f);
            }
            break;
          }
          piVar5 = piVar5 + 1;
        } while (piVar5 != piVar1);
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < uVar6);
  }
  return uVar3;
}

