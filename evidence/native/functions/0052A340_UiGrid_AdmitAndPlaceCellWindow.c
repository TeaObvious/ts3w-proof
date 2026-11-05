/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role from complete original PC1.67 body. ECX receiver, five incoming stack dwords, RET14.
   Require nonnull third-word child and manager+4E4 virtualDC admission AL. Prepare type1 record
   carrying column,row,child, then call00528E40 on container+3E0; deeper tree allocation/retain
   semantics are not inferred. Forward both original trailing control words plus child,row,column
   to005259D0 at0052A3BD. Physical five pushes and callee RET14 establish forwarding; stored
   three-explicit-argument C declaration and unaff_retaddr are wrong stack-recovery projections.
   This is one native producer path, distinct from managed GridGeneric expanding a single Boolean to
   both controls. No signature repair or original byte change was made. */

void __thiscall
UiGrid_AdmitAndPlaceCellWindow(void *this,undefined4 param_1,undefined4 param_2,int *param_3)

{
  char cVar1;
  int unaff_retaddr;
  int aiStack_20 [2];
  undefined4 uStack_18;
  int *piStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  if (param_3 != (int *)0x0) {
    cVar1 = (**(code **)(**(int **)((int)this + 0x4e4) + 0xdc))(param_3);
    if (cVar1 != '\0') {
      uStack_10 = 0;
      uStack_c = 0;
      uStack_8 = 0;
      aiStack_20[0] = 1;
      uStack_18 = param_1;
      piStack_14 = param_3;
      FUN_00528e40((void *)((int)this + 0x3e0),(undefined4 *)&stack0xffffffd8,aiStack_20);
      UiGrid_PlaceChildInCell(this,unaff_retaddr,param_1,param_3);
    }
  }
  return;
}

