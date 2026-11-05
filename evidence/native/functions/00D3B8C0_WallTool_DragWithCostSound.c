/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Physical ECX tool plus two DWORD stack slots, RET8; second slot points to pointer coordinates and
   first has no selected-body input read. Samples old virtual34 float cost before rebuild and new
   cost afterwards, absent undoable supplies zero. Endpoint/level checks, .001f pointer tolerance
   and A70020 precede sound decision. SUBSS new-minus-old then SUBSS epsilon010885B0=0x34000000 and
   ordered comparison>0 selects wall key011EC0A8; otherwise ADDSS epsilon and comparison<0 selects
   delete key011EC090. Both two-word keys submit throughCD04A0. Complete undoable/geometry children
   remain separately scoped. */

void __thiscall WallTool_DragWithCostSound(void *this,undefined4 param_1,float *param_2)

{
  float *this_00;
  float *pfVar1;
  int iVar2;
  undefined4 uVar3;
  float10 fVar4;
  float fVar5;
  float local_28;
  float local_24;
  float local_20;
  int local_1c;
  float local_18;
  undefined4 local_14;
  undefined4 local_10;
  float local_c;
  float local_8;
  
  if (*(char *)((int)this + 0x68) == '\0') {
    local_24 = FLOAT_00fab218;
    local_20 = FLOAT_00fab218;
    local_1c = 0;
    FUN_00af7cc0(param_2,&local_24);
    uVar3 = FUN_00c5b860((uint *)((int)this + 0x70));
    fVar5 = _DAT_010885b4;
    this_00 = (float *)((int)this + 0xf8);
    if ((((*(int *)((int)this + 0x100) != local_1c) || (_DAT_010885b4 < ABS(*this_00 - local_24)))
        || (_DAT_010885b4 < ABS(*(float *)((int)this + 0xfc) - local_20))) ||
       ((*(int *)((int)this + 0x80) == 1 && ((char)uVar3 == '\0')))) {
      local_18 = *(float *)((int)this + 0x104);
      local_14 = *(undefined4 *)((int)this + 0x108);
      iVar2 = *(int *)((int)this + 0x10c);
      pfVar1 = (float *)((int)this + 0x104);
      local_10 = *(undefined4 *)((int)this + 0x10c);
      *this_00 = local_24;
      local_8 = *(float *)((int)this + 0x108);
      *(float *)((int)this + 0xfc) = local_20;
      *(int *)((int)this + 0x100) = local_1c;
      local_c = *pfVar1;
      local_28 = 0.0;
      if (*(int *)((int)this + 0x5c) != 0) {
        FUN_00d3a070(this,'\x01');
        fVar4 = (float10)(**(code **)(**(int **)((int)this + 0x5c) + 0x34))();
        local_28 = (float)fVar4;
        (**(code **)(**(int **)((int)this + 0x5c) + 0x20))();
        if (*(int **)((int)this + 0x60) != (int *)0x0) {
          (**(code **)(**(int **)((int)this + 0x60) + 0x20))();
        }
        thunk_FUN_00792320();
        FUN_00cd3810((int)this);
        FUN_00cd3850((int)this);
        FUN_00d3b240(this,param_2,'\0');
        FUN_00d3a070(this,'\0');
        fVar5 = _DAT_010885b4;
      }
      if ((((iVar2 != *(int *)((int)this + 0x10c)) || (fVar5 < ABS(local_c - *pfVar1))) ||
          (fVar5 < ABS(local_8 - *(float *)((int)this + 0x108)))) &&
         (uVar3 = FUN_00a70020(this_00,&local_18), (char)uVar3 != '\0')) {
        if (*(int **)((int)this + 0x5c) == (int *)0x0) {
          fVar5 = 0.0;
        }
        else {
          fVar4 = (float10)(**(code **)(**(int **)((int)this + 0x5c) + 0x34))();
          fVar5 = (float)fVar4;
        }
        uVar3 = DAT_011ec0a8;
        if ((0.0 < (fVar5 - local_28) - DAT_010885b0) ||
           (uVar3 = DAT_011ec090, (fVar5 - local_28) + DAT_010885b0 < 0.0)) {
          BuildBuy_PlayKeyedSound(uVar3);
        }
      }
      FUN_00d3a6b0(this,(float *)((int)this + 0x8c),&local_18,pfVar1,'\x01',DAT_011eeb98);
      return;
    }
  }
  return;
}

