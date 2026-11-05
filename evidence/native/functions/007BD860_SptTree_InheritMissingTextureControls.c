/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 SPT section instruction contract. ECXtree, nostack RET.
   IterateEXPLICITbranchvector+58/+5C only, excludesdefault+124. Forchildcontrols1..6,
   testbyteatbranch+13650+child*44+29hex; whennonzero REP MOVSD11 COPIESENTIRE44byteprimaryrecord
   intochild. Includesinheritflag+29andpadding, not onlynumericfields. No per-child authoredmetadata
   retainedbynativecopy. Parent7BCF04setssectionpresent after50000reader; tail7BD06Donlycalls
   thishelper ifsectionwasABSENT. Therefore doNOTapplythisfallbackunconditionallyto
   authored50000records. Fullconstructor defaults/UVrenderconsumer remainsopen. */

void __thiscall SptTree_InheritMissingTextureControls(void *this)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
  uVar3 = 0;
  if (*(int *)((int)this + 0x5c) - *(int *)((int)this + 0x58) >> 2 != 0) {
    do {
      iVar1 = *(int *)(*(int *)((int)this + 0x58) + uVar3 * 4);
      if (*(char *)(iVar1 + 0x136a5) != '\0') {
        puVar4 = (undefined4 *)(iVar1 + 0x13650);
        puVar5 = (undefined4 *)(iVar1 + 0x1367c);
        for (iVar2 = 0xb; iVar2 != 0; iVar2 = iVar2 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
      iVar1 = *(int *)(*(int *)((int)this + 0x58) + uVar3 * 4);
      if (*(char *)(iVar1 + 0x136d1) != '\0') {
        puVar4 = (undefined4 *)(iVar1 + 0x13650);
        puVar5 = (undefined4 *)(iVar1 + 0x136a8);
        for (iVar2 = 0xb; iVar2 != 0; iVar2 = iVar2 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
      iVar1 = *(int *)(*(int *)((int)this + 0x58) + uVar3 * 4);
      if (*(char *)(iVar1 + 0x136fd) != '\0') {
        puVar4 = (undefined4 *)(iVar1 + 0x13650);
        puVar5 = (undefined4 *)(iVar1 + 0x136d4);
        for (iVar2 = 0xb; iVar2 != 0; iVar2 = iVar2 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
      iVar1 = *(int *)(*(int *)((int)this + 0x58) + uVar3 * 4);
      if (*(char *)(iVar1 + 0x13729) != '\0') {
        puVar4 = (undefined4 *)(iVar1 + 0x13650);
        puVar5 = (undefined4 *)(iVar1 + 0x13700);
        for (iVar2 = 0xb; iVar2 != 0; iVar2 = iVar2 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
      iVar1 = *(int *)(*(int *)((int)this + 0x58) + uVar3 * 4);
      if (*(char *)(iVar1 + 0x13755) != '\0') {
        puVar4 = (undefined4 *)(iVar1 + 0x13650);
        puVar5 = (undefined4 *)(iVar1 + 0x1372c);
        for (iVar2 = 0xb; iVar2 != 0; iVar2 = iVar2 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
      iVar1 = *(int *)(*(int *)((int)this + 0x58) + uVar3 * 4);
      if (*(char *)(iVar1 + 0x13781) != '\0') {
        puVar4 = (undefined4 *)(iVar1 + 0x13650);
        puVar5 = (undefined4 *)(iVar1 + 0x13758);
        for (iVar2 = 0xb; iVar2 != 0; iVar2 = iVar2 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
      uVar3 = uVar3 + 1;
    } while (uVar3 < (uint)(*(int *)((int)this + 0x5c) - *(int *)((int)this + 0x58) >> 2));
  }
  return;
}

