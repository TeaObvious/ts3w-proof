/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXfloormanager +packedcell pointer RET4 ALbool. Requires lot shellObject+2E8 and STRICT
   tile bounds; no owner false. If precomputed maskgrid+D4 absent callsAD1100. Otherwise
   ByteTileGrid_CellPointer at signed(cell.level)-floormin and tests (storedbyte & cell.mask &
   F)!=0. Not a generic room-present check; cache producer remains separate. */

bool __thiscall FloorManager_HasShellSupportAtCell(void *this,char *cell)

{
  void *pvVar1;
  int x;
  undefined4 uVar2;
  byte *pbVar3;
  int z;
  
  pvVar1 = *(void **)((int)this + 4);
  if (*(int *)((int)pvVar1 + 0x2e8) != 0) {
    x = (int)*cell;
    z = (int)cell[1];
    if ((((-1 < x) && (x < *(int *)((int)pvVar1 + 0x174))) && (-1 < z)) &&
       (z < *(int *)((int)pvVar1 + 0x178))) {
      if (*(void **)((int)this + 0xd4) == (void *)0x0) {
        uVar2 = FUN_00ad1100(pvVar1,cell);
        return SUB41(uVar2,0);
      }
      pbVar3 = ByteTileGrid_CellPointer
                         (*(void **)((int)this + 0xd4),x,z,(int)cell[2] - *(int *)((int)this + 0x10)
                         );
      return (cell[3] & *pbVar3 & 0xf) != 0;
    }
  }
  return false;
}

