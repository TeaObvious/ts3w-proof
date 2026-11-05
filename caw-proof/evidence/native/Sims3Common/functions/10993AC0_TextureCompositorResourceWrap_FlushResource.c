/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TextureCompositorResourceWrap_FlushResource.
   Export ordinal(s): 2492. Entry VA: 0x10993ac0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060005F6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
TextureCompositorResourceWrap_FlushResource
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  void *this;
  int *piVar2;
  void *pvVar3;
  int *piVar4;
  int local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x993ac0  2492  TextureCompositorResourceWrap_FlushResource */
  this = (void *)FUN_10402c50();
  if (this != (void *)0x0) {
    local_4 = param_2;
    local_10 = param_3;
    local_c = param_4;
    local_8 = param_1;
    local_14 = 0;
    piVar2 = (int *)FUN_108e50d0();
    piVar4 = &local_14;
    cVar1 = (**(code **)(*piVar2 + 0xc))(&local_10,piVar4,0,0,0,0);
    if (cVar1 != '\0') {
      if ((piVar4 != (int *)0x0) &&
         (pvVar3 = (void *)(**(code **)(*piVar4 + 0xc))(0x3420bd6), pvVar3 != (void *)0x0)) {
        FUN_104c2e20(this,pvVar3);
      }
      (**(code **)(*piVar4 + 4))();
    }
  }
  return;
}

