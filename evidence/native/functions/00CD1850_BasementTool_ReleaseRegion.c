/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: ECX tool plus two stack words RET8. Selects validation/commit
   or cancellation according to active drag/mode flags, then restores tool state. A retained undo
   object owns native child operations; a host immutable revision is a different lifetime model. */

bool __thiscall BasementTool_ReleaseRegion(void *this,int param_1,float *param_2)

{
  char *pcVar1;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float afStack_20 [7];
  
  if (*(char *)((int)this + 0x5d) != '\0') {
    FUN_00cd0740((int)this);
    *(undefined1 *)((int)this + 0x5d) = 0;
    *(undefined1 *)(*(int *)((int)this + 0xc) + 0x358) = 0;
    if (*(char *)((int)this + 0x5c) != '\0') {
      return false;
    }
    FUN_00c9cf90(*(int *)((int)this + 0xc),'\x01');
    if (*(int **)((int)this + 0x94) != (int *)0x0) {
      (**(code **)(**(int **)((int)this + 0x94) + 0x20))();
    }
    if (*(char *)((int)this + 0x8d) == '\0') {
      if (*(char *)((int)this + 0x8c) == '\0') {
        (**(code **)(*(int *)this + 0x54))(param_2,1);
      }
    }
    else if ((*(int *)((int)this + 0x60) == 0) || (*(int *)((int)this + 0x60) == 2)) {
      BasementTool_CommitExcavation(this);
    }
    else {
      BasementTool_CommitRemoval(this);
    }
    FUN_00cd0ab0(this);
    if ((*(int *)((int)this + 0x60) == 0) || (*(int *)((int)this + 0x60) == 2)) {
      pcVar1 = "deckDrawCreate";
    }
    else {
      pcVar1 = "deckDrawDemolish";
    }
    FUN_00cede10(this,pcVar1);
    thunk_FUN_00792320();
    FUN_00cd3810((int)this);
    FUN_00cd3850((int)this);
    fStack_2c = -1.0;
    fStack_28 = -1.0;
    uStack_24 = 0;
    if (*(char *)((int)this + 0x5e) == '\0') {
      FUN_00affe00(param_2,(float *)((int)this + 100),&fStack_2c);
    }
    else {
      FUN_00af7cc0(param_2,&fStack_2c);
    }
    FUN_00adc750(param_1,&fStack_2c,afStack_20);
    FUN_00cdc380(*(undefined4 *)((int)this + 0xc),DAT_011ee540,afStack_20,1.0,(byte *)0x0);
    FUN_00cd04a0(DAT_011ec0c0);
    (**(code **)(*(int *)this + 0x74))(*(undefined4 *)((int)this + 0xc),&fStack_2c,0);
    FUN_00c9cf90(*(int *)((int)this + 0xc),'\0');
    FUN_00cd8bc0((int)this);
    FUN_00ced6c0((int)this);
    if ((*(char *)((int)this + 0x8d) == '\0') &&
       ((*(int *)((int)this + 0x60) == 0 || (*(int *)((int)this + 0x60) == 1)))) {
      if (*(int *)((int)*(void **)((int)this + 0xc) + 0x17c) == *(int *)((int)this + 0x6c) + -1) {
        Lot_SetDisplayLevel(*(void **)((int)this + 0xc),*(int *)((int)this + 0x6c),false,false,false
                           );
        FUN_00ace1b0(*(void **)((int)this + 0xc));
      }
    }
  }
  return true;
}

