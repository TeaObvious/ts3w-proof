/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SharedInitWrap_RegisterTextureDirectoryFiles.
   Export ordinal(s): 2313. Entry VA: 0x1098fd10. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001D1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SharedInitWrap_RegisterTextureDirectoryFiles(short *param_1)

{
  int *piVar1;
  undefined4 *this;
  int *piVar2;
  void *this_00;
  LPCWSTR pWStack_10;
  undefined4 uStack_c;
  int iStack_8;
  char *pcStack_4;
  
  pWStack_10 = (LPCWSTR)0x0;
  uStack_c = 0;
  iStack_8 = 0;
  pcStack_4 = "Services/SharedInitialization";
  FUN_1006a620(&pWStack_10,param_1);
  FUN_10922640((int *)&pWStack_10);
  piVar1 = (int *)FUN_108e50d0();
  FUN_108db710(pWStack_10,(int)piVar1,1,(undefined *)0x0,0);
  if (piVar1 != (int *)0x0) {
    this = FUN_10919060(0xb0,"Renderer/Utility/Textures Directory",0);
    if (this == (undefined4 *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = FUN_108db560(this,(short *)0x0,0);
      if (piVar2 != (int *)0x0) {
        (**(code **)piVar2[1])();
      }
    }
    (**(code **)(*piVar2 + 0x2c))(pWStack_10);
    (**(code **)(*piVar2 + 4))();
    (**(code **)(*piVar2 + 0x18))(1,6,0);
    (**(code **)(*piVar1 + 0x34))(1,piVar2,0);
    this_00 = (void *)FUN_108d9c40();
    if (this_00 != (void *)0x0) {
      FUN_108da9e0(this_00,(uint)piVar2,1);
    }
    (**(code **)(piVar2[1] + 4))();
  }
  if ((2 < (int)(iStack_8 - (int)pWStack_10 & 0xfffffffeU)) && (pWStack_10 != (LPCWSTR)0x0)) {
    FUN_10918e90((int)pWStack_10);
  }
  return;
}

