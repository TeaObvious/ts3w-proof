/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Scans wall locators; MOVSX levelbyte
   compares signed intlevel. Filters00C5BDC0 then00C5BDF0 for level>=0 or00C5BFA0 below0. Sends same
   visibility lowbyte to both endpoint states, twice per accepted wall in reverse orientations. This
   is not an unconditional all-object scan. */

void __thiscall Lot_UpdateWallMountedObjectsAtLevel(void *this,int level,byte visibleByte)

{
  char cVar1;
  int iVar2;
  uint *puVar3;
  uint uVar4;
  uint uVar5;
  undefined2 local_10;
  char local_e;
  undefined2 local_d;
  undefined1 local_b;
  undefined2 local_8;
  undefined1 local_6;
  undefined2 local_5;
  char local_3;
  
  iVar2 = FUN_00b47e40(*(int *)((int)this + 0x298));
  uVar5 = 0;
  local_10 = 0xffff;
  local_e = '\0';
  local_d = 0xffff;
  local_b = 0;
  if (0 < iVar2) {
    do {
      FUN_00b47e60(*(void **)((int)this + 0x298),uVar5,(undefined1 *)&local_10);
      if (local_e == level) {
        puVar3 = FUN_00b47df0(*(void **)((int)this + 0x298),(char *)&local_10,'\0');
        uVar4 = FUN_00c5bdc0(puVar3);
        if ((char)uVar4 != '\0') {
          if (level < 0) {
            uVar4 = FUN_00c5bfa0(puVar3);
            cVar1 = (char)uVar4;
          }
          else {
            uVar4 = FUN_00c5bdf0(puVar3);
            cVar1 = (char)uVar4;
          }
          if (cVar1 != '\0') {
            local_6 = local_b;
            local_8 = local_d;
            local_5 = local_10;
            local_3 = local_e;
            Lot_UpdateObjectsAttachedToWall(this,(char *)&local_10,visibleByte,visibleByte);
            Lot_UpdateObjectsAttachedToWall(this,(char *)&local_8,visibleByte,visibleByte);
          }
        }
      }
      uVar5 = uVar5 + 1;
    } while ((int)uVar5 < iVar2);
  }
  return;
}

