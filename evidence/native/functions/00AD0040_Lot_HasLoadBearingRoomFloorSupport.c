/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl lot/packedcell, plainRET ALbool. For each selected quarterbit, sample that quarter
   one signedlevel below viaAF81A0 and resolve LoadBearing definition1/mode0. RoomID !=0 then sample
   current input cell, obtain boundary reference viaC40490 from graph+58, and compare current-level
   raw floor vertex against sampled height. FCOMIP/JA atAD0180..18A requires .05f STRICTLY GREATER
   than abs difference; NaN fails. Raw reference vertex comes from actual native boundary chain, not
   an arbitrary occupied room cell. */

bool __cdecl Lot_HasLoadBearingRoomFloorSupport(undefined *lot,char *cell)

{
  char cVar1;
  undefined2 uVar2;
  void *this;
  int iVar3;
  char *cell_00;
  byte bVar4;
  short sVar5;
  undefined4 uVar6;
  float10 fVar7;
  int local_28;
  char local_20;
  char local_1f;
  undefined1 local_1e;
  undefined1 local_1d;
  undefined1 local_1c;
  undefined1 local_1b;
  LotXZLevel local_18;
  LotXZLevel local_c;
  
  cell_00 = cell;
  this = *(void **)(lot + 0x298);
  uVar2 = *(undefined2 *)cell;
  cVar1 = cell[2];
  local_28 = 0;
  do {
    bVar4 = '\x01' << ((byte)local_28 & 0x1f);
    if ((cell_00[3] & bVar4) != 0) {
      cell = (char *)CONCAT22(CONCAT11(bVar4,cVar1 + -1),uVar2);
      local_18.x = -1.0;
      local_18.z = -1.0;
      local_18.level = 0;
      TilePart_GetLocalSamplePoint((char *)&cell,&local_18);
      sVar5 = LotRoom_ResolveForLocalLocation(this,&local_18.x,1,0);
      if (sVar5 != 0) {
        local_c.x = -1.0;
        local_c.z = -1.0;
        local_c.level = 0;
        TilePart_GetLocalSamplePoint(cell_00,&local_c);
        fVar7 = LotLevelHeight_SampleLocalPosition(*(void **)(lot + 0x290),&local_c);
        local_20 = -1;
        local_1f = -1;
        local_1e = 0;
        local_1d = 0xff;
        local_1c = 0xff;
        local_1b = 0;
        uVar6 = FUN_00c40490(*(void **)((int)this + 0x58),sVar5,&local_20);
        if (((char)uVar6 != '\0') &&
           (iVar3 = *(int *)(*(int *)(lot + 0x290) + 0x24),
           ABS(*(float *)(*(int *)(iVar3 + 0x10) +
                         ((((int)cell_00[2] - *(int *)(*(int *)(lot + 0x290) + 0x10)) *
                           *(int *)(iVar3 + 4) + (int)local_20) * *(int *)(iVar3 + 8) +
                         (int)local_1f) * 4) - (float)fVar7) < 0.05)) {
          return true;
        }
      }
    }
    local_28 = local_28 + 1;
    if (3 < local_28) {
      return false;
    }
  } while( true );
}

