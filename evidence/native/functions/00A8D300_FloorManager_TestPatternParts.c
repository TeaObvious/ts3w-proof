/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall signedtilepointer,maskBYTE,requireAllBYTE,checkFlagsBYTE RET10hex; ALBooleanonly.
   Signedtilebounds/lotlevelrange, chooses ordinarypattern2C orspecial48 ifmask10. Selectedquarters
   require rawUSHORTpatternIDs NONZERO (FFFFalso nonzero), ANY/ALLpolicy. Optionalflaglayer28 then
   separatelyrequires selectedbits under sameANY/ALLpolicy. For maskF/all1/flags1 allfourIDs
   ANDallfourflags required; no catalogTGI/defaultkeysemanticstest here. Missingpatternlayerfails.
   Currenthostfloored-setproducerlacksvisibleflag check, a separate concrete intake defect. */

bool __thiscall
FloorManager_TestPatternParts
          (void *this,undefined *signedTile3,byte quarterMask,bool requireAll,bool checkFlags)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  void *this_00;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  uVar5 = (uint)(char)signedTile3[1];
  uVar6 = (uint)(char)*signedTile3;
  iVar3 = *(int *)((int)this + 4);
  if (((((int)uVar6 < 0) || (*(int *)(iVar3 + 0x174) <= (int)uVar6)) || ((int)uVar5 < 0)) ||
     (((*(int *)(iVar3 + 0x178) <= (int)uVar5 ||
       (iVar2 = (int)(char)signedTile3[2], iVar2 < *(int *)(iVar3 + 0x17c))) ||
      (*(int *)(iVar3 + 0x180) < iVar2)))) {
    return false;
  }
  if ((quarterMask & 0x10) == 0) {
    this_00 = *(void **)((int)this + 0x2c);
  }
  else {
    this_00 = *(void **)((int)this + 0x48);
  }
  if (this_00 == (void *)0x0) {
    return false;
  }
  iVar2 = iVar2 - *(int *)((int)this + 0x10);
  iVar3 = RoomGrid_GetLogicalCell(this_00,uVar6,uVar5,iVar2);
  bVar1 = false;
  iVar4 = 0;
  do {
    if (((int)(char)quarterMask & 1 << ((byte)iVar4 & 0x1f)) != 0) {
      if (*(short *)(iVar3 + iVar4 * 2) == 0) {
        if (requireAll) {
          return false;
        }
      }
      else {
        bVar1 = true;
        if (!requireAll) goto LAB_00a8d3b7;
      }
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 < 4);
  if (!bVar1) {
    return false;
  }
LAB_00a8d3b7:
  if (checkFlags) {
    iVar3 = *(int *)((int)this + 0x28);
    bVar1 = false;
    iVar4 = 0;
    do {
      if ((quarterMask & '\x01' << ((byte)iVar4 & 0x1f)) != 0) {
        if ((*(byte *)((*(int *)(iVar3 + 4) * iVar2 + uVar6) * *(int *)(iVar3 + 8) +
                       *(int *)(iVar3 + 0x10) + uVar5) & (byte)(1 << ((byte)iVar4 & 0x1f))) == 0) {
          if (requireAll) {
            return false;
          }
        }
        else {
          bVar1 = true;
          if (!requireAll) {
            return true;
          }
        }
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 < 4);
    if (!bVar1) {
      return false;
    }
  }
  return true;
}

