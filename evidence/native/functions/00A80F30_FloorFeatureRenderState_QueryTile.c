/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXrenderfeaturestate+packedcell/UInt32flags/optionalushortoutput RET0C ALbool. Requires
   parent+230 anditsAA12A0gate (original repeatscall), both retained rawgrids38/3C
   andA67E80admission. Relative signedlevel subtracts ownerorigin34. Read eachgrid with OWN
   width4/depth8/vector10; optionaloutput receivesrawushort. Finalreturn only (zeroextendedflagbyte
   & fullUInt32request)==request. CRITICAL there is NO nonzeromask/intersection gate here:
   rawflags1/mask0 can pass and returnmask0. Do NOTreplace rendererinitialquery with
   gameplayAB6600(flags1,FFFF), whichrejectsmask0. Parent230/AA12A0 andA67E80 fullproducersemantics
   remain separate, not speculative names. */

bool __thiscall
FloorFeatureRenderState_QueryTile(void *this,char *cell,uint flags,ushort *maskOutput)

{
  byte bVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  int iVar7;
  
  pvVar2 = *(void **)(*(int *)((int)this + 4) + 0x230);
  if (pvVar2 == (void *)0x0) {
    return false;
  }
  uVar5 = FUN_00aa12a0(pvVar2,cell);
  pvVar2 = *(void **)(*(int *)((int)this + 4) + 0x230);
  if (pvVar2 != (void *)0x0) {
    FUN_00aa12a0(pvVar2,cell);
  }
  if ((((char)uVar5 != '\0') && (iVar3 = *(int *)((int)this + 0x38), iVar3 != 0)) &&
     (iVar4 = *(int *)((int)this + 0x3c), iVar4 != 0)) {
    uVar6 = FUN_00a67e80(*(void **)((int)this + 4),cell);
    if ((char)uVar6 != '\0') {
      iVar7 = (int)cell[2] - *(int *)((int)this + 0x34);
      bVar1 = *(byte *)((*(int *)(iVar3 + 4) * iVar7 + (int)*cell) * *(int *)(iVar3 + 8) +
                        *(int *)(iVar3 + 0x10) + (int)cell[1]);
      if (maskOutput != (ushort *)0x0) {
        *maskOutput = *(ushort *)
                       (*(int *)(iVar4 + 0x10) +
                       ((*(int *)(iVar4 + 4) * iVar7 + (int)*cell) * *(int *)(iVar4 + 8) +
                       (int)cell[1]) * 2);
      }
      return (bVar1 & flags) == flags;
    }
  }
  return false;
}

