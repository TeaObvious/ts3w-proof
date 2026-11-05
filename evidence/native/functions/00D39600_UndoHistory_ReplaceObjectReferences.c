/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. ECX history and four GUID DWORDs, RET10h. Visit first vector0/4,
   call CB3C50 on current context+2C if context exists, then visit second vector10/14. Middle
   notification does not depend on nonempty history vectors. */

void __thiscall
UndoHistory_ReplaceObjectReferences
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 *puVar2;
  
  puVar2 = *(undefined4 **)this;
  if (puVar2 != *(undefined4 **)((int)this + 4)) {
    do {
      Undoable_VisitObjectReplacementTree(param_1,param_2,param_3,param_4,(void *)*puVar2);
      puVar2 = puVar2 + 1;
    } while (puVar2 != *(undefined4 **)((int)this + 4));
  }
  iVar1 = FUN_00cef500();
  if (iVar1 != 0) {
    Undoable_NotifyObjectReplacement(param_1,param_2,param_3,param_4,*(int *)(iVar1 + 0x2c));
  }
  puVar2 = *(undefined4 **)((int)this + 0x10);
  if (puVar2 != *(undefined4 **)((int)this + 0x14)) {
    do {
      Undoable_VisitObjectReplacementTree(param_1,param_2,param_3,param_4,(void *)*puVar2);
      puVar2 = puVar2 + 1;
    } while (puVar2 != *(undefined4 **)((int)this + 0x14));
  }
  return;
}

