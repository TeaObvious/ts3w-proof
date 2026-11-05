/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX Grid interface complete+250, two signed coordinate
   DWORDs/RET8, lowAL result. Check cell-selection relation through actual virtualE0 with extra0;
   query sparse cell at interface+130 through52AC10. Existing payload reaches528A30 on complete
   receiver interface-250 with three actual cleanup flags1; then invalidate native measure state
   when needed and IWindow+4 virtual90. Missing cell returnsfalse with actual selection-dependent
   invalidation. Complete final tail at52B059 jumps back to52B034;52B05B is outside-body INT3 and
   excluded. This is not a CLR RemoveGridCell default true operation. Actual C has
   saved-register/stack aliases (unaff_ESI, CONCAT and uStack_4); do not interpret these as authored
   pointer/boolean data. Physical coordinate pushes, local payload-output address and RET8 establish
   this boundary. Unreviewed sparse-helper prototypes are not changed merely to clean up the C. */

bool __thiscall UiGrid_ClearCell(void *this,int column,int row)

{
  char cVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  undefined4 unaff_ESI;
  undefined2 uVar4;
  undefined4 uStack_4;
  
  uVar4 = (undefined2)((uint)unaff_ESI >> 0x10);
  uStack_4 = (void *)CONCAT13(1,(uint3)this & 0xffff);
  cVar1 = (**(code **)(*(int *)this + 0xe0))(column,row,0);
  if (cVar1 != '\0') {
    uVar4 = (undefined2)(CONCAT13((char)((uint)unaff_ESI >> 0x18),0x10000) >> 0x10);
  }
  uVar2 = FUN_0052ac10((void *)((int)this + 0x130),column,(int *)row,&uStack_4);
  if ((char)uVar2 == '\0') {
    uVar3 = 0;
    if ((char)uVar4 == '\0') {
      return false;
    }
  }
  else {
    UiGrid_RetireCellPayload((void *)((int)this + -0x250),column,row,uStack_4,1,1,1);
    if (*(char *)((int)this + 8) == '\0') {
      (**(code **)(*(int *)((int)this + -0x24c) + 0x74))(8,1);
      *(undefined1 *)((int)this + 8) = 1;
    }
    uVar3 = (undefined1)((ushort)uVar4 >> 8);
  }
  (**(code **)(*(int *)((int)this + -0x24c) + 0x90))();
  return (bool)uVar3;
}

