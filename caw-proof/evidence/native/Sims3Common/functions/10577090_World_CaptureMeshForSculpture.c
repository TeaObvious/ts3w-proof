/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_CaptureMeshForSculpture. Export ordinal(s):
   1267. Entry VA: 0x10577090. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C49. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_CaptureMeshForSculpture(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined **this;
  int *piVar1;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  undefined8 uVar2;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
                    /* 0x577090  1267  World_CaptureMeshForSculpture */
  this = FUN_104fbcd0();
  piVar1 = (int *)FUN_1055b120();
  if ((this != (undefined **)0x0) && (piVar1 != (int *)0x0)) {
    uStack_18 = 0x105770b8;
    uVar2 = (**(code **)(*piVar1 + 0x118))();
    uStack_18 = 0;
    uStack_1c = param_3;
    (**(code **)(*piVar1 + 0x120))(uVar2,0xffffffff);
    FUN_104fce40(this,unaff_EDI,unaff_ESI,&uStack_1c);
    (**(code **)(*piVar1 + 0x11c))();
  }
  return;
}

