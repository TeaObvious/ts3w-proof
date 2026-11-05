/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Floor upper-quarter flag query with optional refresh; descriptive label, not recovered original symbol.
   ECX manager plus packedcell/lowbyte refresh, RET8, AL boolean. If refresh and pending+F0..F4 nonempty, invokesA925B0 before read. Negative level-managerMin returns false. Flat byte grid manager+28 indexes level/X/Z; any selected lowquarter bit q tests STORED HIGH bit q+4. No upper/XZ bounds checks; not the low-bit setterA8D130. */

uint __thiscall FUN_00a934a0(void *this,char *param_1,char param_2)

{
  int iVar1;
  uint in_EAX;
  uint uVar2;
  int iVar3;
  
  if ((param_2 != '\0') &&
     (in_EAX = *(uint *)((int)this + 0xf0), in_EAX != *(uint *)((int)this + 0xf4))) {
    in_EAX = FUN_00a925b0(this,param_1);
  }
  iVar3 = (int)param_1[2] - *(int *)((int)this + 0x10);
  if (iVar3 < 0) {
    return in_EAX & 0xffffff00;
  }
  iVar1 = *(int *)((int)this + 0x28);
  uVar2 = 0;
  while (((byte)(param_1[3] & '\x01' << ((byte)uVar2 & 0x1f)) == 0 ||
         ((*(byte *)((*(int *)(iVar1 + 4) * iVar3 + (int)*param_1) * *(int *)(iVar1 + 8) +
                     (int)param_1[1] + *(int *)(iVar1 + 0x10)) &
          (byte)(1 << ((byte)uVar2 + 4 & 0x1f))) == 0))) {
    uVar2 = uVar2 + 1;
    if (3 < (int)uVar2) {
      return uVar2 & 0xffffff00;
    }
  }
  return CONCAT31((int3)(uVar2 >> 8),1);
}
