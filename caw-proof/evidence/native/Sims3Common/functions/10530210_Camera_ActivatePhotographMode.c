/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_ActivatePhotographMode. Export ordinal(s):
   268. Entry VA: 0x10530210. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A46. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Camera_ActivatePhotographMode
          (undefined4 param_1,undefined4 param_2,float param_3,float param_4,uint param_5)

{
  int iVar1;
  void *pvVar2;
  int *piVar3;
  void *this;
  
                    /* 0x530210  268  Camera_ActivatePhotographMode */
  iVar1 = FUN_1075c630();
  if ((iVar1 != 0) && (pvVar2 = (void *)FUN_10937a80(iVar1), pvVar2 != (void *)0x0)) {
    if (param_3._0_1_ == '\0') {
      piVar3 = (int *)FUN_1075c950((int)pvVar2);
      if ((piVar3 != (int *)0x0) &&
         (this = (void *)(**(code **)(*piVar3 + 0xc))(0xc49dcd29), this != (void *)0x0)) {
        FUN_1076f8d0((int)this);
        FUN_1076d520(this,3);
        FUN_1076d4e0(this,DAT_10ab7e30,_DAT_10b19d94);
        FUN_1076d510((int)this);
      }
      FUN_1075d9b0(pvVar2,1,'\0');
    }
    else {
      FUN_1075d9b0(pvVar2,5,'\x01');
      piVar3 = (int *)FUN_1075c950((int)pvVar2);
      if ((piVar3 != (int *)0x0) &&
         (pvVar2 = (void *)(**(code **)(*piVar3 + 0xc))(0xc49dcd29), pvVar2 != (void *)0x0)) {
        FUN_1076fa00((int)pvVar2);
        if ((param_3 != DAT_10aae184) && (param_4 != DAT_10aae184)) {
          FUN_1076d4e0(pvVar2,param_3,param_4);
        }
        if (param_5 < 3) {
          FUN_1076d520(pvVar2,param_5);
          FUN_1076d500((int)pvVar2);
          return;
        }
      }
    }
  }
  return;
}

