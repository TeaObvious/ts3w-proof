/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physicalthiscall enabled lowBYTE plus packedtilepointer,RET8void. Packedtile bytes0/1/2
   are SIGNED X/Z/authoredlevel, byte3 mask.
   Flatindex=((signedlevel-managerMin10)*gridWidth4+signedX)*gridDepth8+signedZ. Each LOWFOUR
   selected bits set orcleared; HIGHFOUR stored bits preserved, even if requested mask has
   upperbits. No bounds checks: callerowns nativevalidity. No message emitted here; A96920 wraps
   this setter anddispatches separately. Immutable host copy/masked primitive is deliberateownership
   implementation,not a new simulationrule. */

void __thiscall FloorManager_SetQuarterFlagsRaw(void *this,bool enabled,undefined *signedTileMask4)

{
  byte bVar1;
  int iVar2;
  byte bVar3;
  int iVar4;
  
  iVar2 = *(int *)((int)this + 0x28);
  iVar4 = (int)(char)signedTileMask4[2] - *(int *)((int)this + 0x10);
  bVar1 = signedTileMask4[3];
  bVar3 = *(byte *)((*(int *)(iVar2 + 4) * iVar4 + (int)(char)*signedTileMask4) *
                    *(int *)(iVar2 + 8) + *(int *)(iVar2 + 0x10) + (int)(char)signedTileMask4[1]);
  if ((bVar1 & 1) != 0) {
    if (enabled) {
      bVar3 = bVar3 | 1;
    }
    else {
      bVar3 = bVar3 & 0xfe;
    }
  }
  if ((bVar1 & 2) != 0) {
    if (enabled) {
      bVar3 = bVar3 | 2;
    }
    else {
      bVar3 = bVar3 & 0xfd;
    }
  }
  if ((bVar1 & 4) != 0) {
    if (enabled) {
      bVar3 = bVar3 | 4;
    }
    else {
      bVar3 = bVar3 & 0xfb;
    }
  }
  if ((bVar1 & 8) != 0) {
    if (enabled) {
      bVar3 = bVar3 | 8;
    }
    else {
      bVar3 = bVar3 & 0xf7;
    }
  }
  *(byte *)((*(int *)(iVar2 + 4) * iVar4 + (int)(char)*signedTileMask4) * *(int *)(iVar2 + 8) +
            *(int *)(iVar2 + 0x10) + (int)(char)signedTileMask4[1]) = bVar3;
  return;
}

