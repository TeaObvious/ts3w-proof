/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX Slots receiver, supplied DWORD at stack+4,
   RET4; EAX value or0. Requires model+40h and nonzero supplied identifier. Scans the summed
   slot-category count plus dynamic list, obtains each point by internal ordinal, asks virtual+8(1),
   and for nonzero returned value compares a model-derived identifier with the supplied DWORD. Match
   returns the virtual result; exhaustion or entry refusal returns0. Supplied identifier is distinct
   from internal loop ordinal. Child model/helper ABI and broader valid-input guarantees remain
   separate. */

int __thiscall SlotComponent_FindBoneBindingByIdentifier(void *this,int param_1)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  uint ordinal;
  uint uVar4;
  
  if ((*(int *)((int)this + 0x40) != 0) && (param_1 != 0)) {
    ordinal = 0;
    uVar4 = (*(int *)((int)this + 0x58) - *(int *)((int)this + 0x54) >> 2) +
            *(int *)((int)this + 0x28) + *(int *)((int)this + 0x20) + *(int *)((int)this + 0x18) +
            *(int *)((int)this + 0x10) + *(int *)((int)this + 8);
    if (uVar4 != 0) {
      do {
        pbVar1 = SlotComponent_GetByOrdinal(this,ordinal);
        iVar2 = (**(code **)(*(int *)pbVar1 + 8))(1);
        if (iVar2 != 0) {
          iVar3 = FUN_0080d4a0(*(int *)((int)this + 0x40));
          if (-1 < iVar3) {
            iVar3 = FUN_00575790((void *)(*(int *)((int)this + 0x40) + 0x28),iVar3);
            if (iVar3 == param_1) {
              return iVar2;
            }
          }
        }
        ordinal = ordinal + 1;
      } while (ordinal < uVar4);
    }
    return 0;
  }
  return 0;
}

