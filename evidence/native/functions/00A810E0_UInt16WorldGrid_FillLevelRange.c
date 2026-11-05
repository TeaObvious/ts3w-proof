/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+firstLevel/lastLevelInclusive/ushortvalue pointer RET0C void. Fills actual vector
   [width*depth*first, width*depth*(last+1)) in ushort units; no livelevelorigin stored in grid.
   Native caller owns range admission; no clamping occurs here. */

void __thiscall
UInt16WorldGrid_FillLevelRange(void *this,int firstLevel,int lastLevelInclusive,ushort *value)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  ushort *puVar5;
  
  iVar2 = *(int *)((int)this + 4);
  iVar3 = *(int *)((int)this + 8);
  iVar4 = *(int *)((int)this + 0x10);
  uVar1 = *value;
  for (puVar5 = (ushort *)(iVar4 + iVar2 * iVar3 * firstLevel * 2);
      puVar5 != (ushort *)(iVar4 + (lastLevelInclusive + 1) * iVar2 * iVar3 * 2);
      puVar5 = puVar5 + 1) {
    *puVar5 = uVar1;
  }
  return;
}

