/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXmanager pluspackedquarter pointer RET4 lowALBoolean. For i0..3 returns true iff
   requestedmask byte+3 and storedFlagsLayer tile byte both contain 1<<i. Any matching bit suffices,
   not all requested bits. Tile/level are signextended bytes, relativelevel subtracts manager+10.
   Bounds are the caller contract; no universal invalidpointer guard.
   
   Flags-loader consumer confirmation: ANY requested lowquarterbit suffices, uses independent
   retainedgridwidth/depth strides andsignedtilebytes. No resource-key interpretation or new
   equality-to-LDES guard. FloorManager_TestPatternPartsA8D300 separately enforces live lotbounds
   before its pattern/flag loops. Host checked index is a portable safety guard,not an original
   invalidpointer branch. */

bool __thiscall FloorManager_TileHasAnyRequestedFlag(void *this,char *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)((int)this + 0x28);
  iVar2 = 0;
  while (((byte)(param_1[3] & '\x01' << ((byte)iVar2 & 0x1f)) == 0 ||
         ((*(byte *)((((int)param_1[2] - *(int *)((int)this + 0x10)) * *(int *)(iVar1 + 4) +
                     (int)*param_1) * *(int *)(iVar1 + 8) + (int)param_1[1] + *(int *)(iVar1 + 0x10)
                    ) & (byte)(1 << ((byte)iVar2 & 0x1f))) == 0))) {
    iVar2 = iVar2 + 1;
    if (3 < iVar2) {
      return false;
    }
  }
  return true;
}

