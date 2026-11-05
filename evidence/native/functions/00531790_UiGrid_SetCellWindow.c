/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX Grid interface complete+250, six stack DWORDs/RET18hex,
   lowAL boolean. Native producer77C2E0 ID15 supplies column,row,IWindow, two low-byte predicates
   float1!=0 (including actual UCOMISS flag behavior) and fullDWORD1. First test sixth entire word
   and normalize0 to1; virtual1F0 ownership admission can reject. Coordinates7FFFFFFF mean automatic
   sparse selection, with actual helper sentinels80000000/7FFFFFFF. Existing cell payload retires
   through528A30 with three zero cleanup flags before reuse; new payload allocates1Chex, initializes
   and inserts. Calls52B580 then52A340 with actual coordinate/window/options; sets native measure
   and selected-coordinate state. Null/rejected/failed paths call actual ClearCell slot198 as shown.
   This full stateful native payload/reference path differs from current direct key replacement.
   Opaque options are not guessed public flag semantics; preserve full stackword versus tested
   low-byte distinctions. Actual C contains unaff_ESI/unaff_EBP/unaff_retaddr/stack aliases after
   virtual0x1F0; they are decompiler stack-tracking defects. Physical body005317B3..B9 pushes FOUR
   words (windowInterface,0,0,0), not the three apparent arguments in actual C. Entry words1/2 are
   loaded as ESI/EDI coordinates at005317C3/Cd, word3 is the window and entry word6 is
   tested/normalized. Native six-word RET0x18 and complete caller producer are authoritative; no
   unknown indirect helper prototype is guessed to make C look cleaner. */

bool __thiscall
UiGrid_SetCellWindow
          (void *this,int column,int row,void *windowInterface,uint opaqueOptionA,uint opaqueOptionB
          ,uint opaqueDefaultWord)

{
  char cVar1;
  int *column_00;
  uint uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  char unaff_BL;
  undefined4 *puVar5;
  int *unaff_EBP;
  int *unaff_ESI;
  int *row_00;
  int unaff_retaddr;
  undefined4 *puStack_14;
  
  puStack_14 = (undefined4 *)0x0;
  cVar1 = (**(code **)(*(int *)this + 0x1f0))(windowInterface,0,0);
  if (cVar1 != '\0') {
    return false;
  }
  column_00 = unaff_ESI;
  if (unaff_ESI == (int *)0x7fffffff) {
    if (unaff_EBP != (int *)0x7fffffff) {
LAB_00531801:
      uVar2 = FUN_00528da0((void *)((int)this + 0x130),unaff_EBP,(undefined4 *)&stack0xfffffff8,
                           (int *)&stack0xfffffff4);
      if ((char)uVar2 == '\0') {
        column_00 = (int *)0x0;
      }
      else {
        column_00 = (int *)0x80000000;
      }
      goto LAB_00531826;
    }
    column_00 = (int *)FUN_00527310((void *)((int)this + 0x130),(int *)&stack0xfffffff4);
    if (column_00 == (int *)0x80000000) {
      column_00 = (int *)0x0;
    }
    else if (column_00 == (int *)0x7fffffff) goto LAB_00531801;
LAB_0053182e:
    uVar3 = FUN_00527190((void *)((int)this + 0x130),(int)column_00,(int *)&stack0xfffffff8,
                         (int *)&stack0xfffffff4);
    if ((char)uVar3 == '\0') {
      row_00 = (int *)0x0;
    }
    else {
      row_00 = (int *)((int)unaff_ESI + 1);
    }
  }
  else {
LAB_00531826:
    row_00 = unaff_EBP;
    if (unaff_EBP == (int *)0x7fffffff) goto LAB_0053182e;
  }
  cVar1 = (**(code **)(*(int *)this + 0x108))(column_00,row_00);
  if (cVar1 == '\0') {
    (**(code **)(*(int *)this + 0x198))(column_00,row_00);
    return false;
  }
  if (unaff_ESI == (int *)0x0) {
    (**(code **)(*(int *)this + 0x198))(column_00,row_00);
    goto LAB_005319b1;
  }
  puStack_14 = (undefined4 *)0x0;
  if (unaff_retaddr == 1) {
    uVar3 = FUN_005273d0((void *)((int)this + 0x130),column_00,(int)row_00);
    if ((char)uVar3 == '\0') goto LAB_005318cc;
    uVar3 = FUN_00527420((void *)((int)this + 0x130),(int)column_00,(int)row_00,(int *)&puStack_14);
    puVar5 = puStack_14;
    if ((char)uVar3 != '\0') {
      UiGrid_RetireCellPayload
                ((void *)((int)this + -0x250),(int)column_00,(int)row_00,(void *)*puStack_14,0,0,0);
      puVar5 = (undefined4 *)*puVar5;
      puStack_14 = puVar5;
      goto LAB_00531911;
    }
  }
  else {
LAB_005318cc:
    puVar4 = (undefined4 *)FUN_004e4500(0x1c,"UI/UTFWin/Grid",0);
    puVar5 = (undefined4 *)0x0;
    if (puVar4 != (undefined4 *)0x0) {
      *puVar4 = 0;
      puVar4[1] = 0;
      puVar4[2] = 0;
      puVar4[3] = 0;
      puVar4[4] = 0;
      puVar4[5] = 0;
      puVar4[6] = 0;
      puVar5 = puVar4;
    }
    puStack_14 = puVar5;
    FUN_0052f1e0((void *)((int)this + -0x250),column_00,row_00,(undefined4 *)0x1,unaff_retaddr);
LAB_00531911:
    if (puVar5 != (undefined4 *)0x0) {
      *puVar5 = 1;
      puVar5[1] = column_00;
      puVar5[2] = row_00;
      puVar5[3] = unaff_ESI;
      if ((char)unaff_EBP != '\0') {
        puVar5[6] = puVar5[6] | 1;
      }
      if (unaff_BL != '\0') {
        puVar5[6] = puVar5[6] | 2;
      }
      FUN_0052b580((void *)((int)this + 0x130),(int)column_00,(int)row_00,&puStack_14,
                   (undefined4 *)0x0);
      FUN_0052a340((void *)((int)this + -0x250),column_00,row_00,unaff_ESI);
    }
  }
  if (*(char *)((int)this + 8) == '\0') {
    (**(code **)(*(int *)((int)this + -0x24c) + 0x74))(8,1);
    *(undefined1 *)((int)this + 8) = 1;
    *(int **)((int)this + 0x98) = row_00;
    *(int **)((int)this + 0x94) = column_00;
    return true;
  }
LAB_005319b1:
  *(int **)((int)this + 0x98) = row_00;
  *(int **)((int)this + 0x94) = column_00;
  return true;
}

