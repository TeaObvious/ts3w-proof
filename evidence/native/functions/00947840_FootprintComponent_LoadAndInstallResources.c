/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Loads configured
   primary/secondary resources, installs with supplemental NULL and replaceNull=1, then releases
   local references. Returns installation low-byte result. If configuration loader returns false,
   this body returns true after cleanup. */

bool __fastcall FootprintComponent_LoadAndInstallResources(void *param_1)

{
  undefined4 uVar1;
  int *local_8;
  int *local_4;
  
  local_4 = (int *)0x0;
  local_8 = (int *)0x0;
  uVar1 = FootprintComponent_LoadConfiguredResources(param_1,&local_4,&local_8);
  if ((char)uVar1 != '\0') {
    uVar1 = FootprintComponent_SetResourceLayers
                      (param_1,local_4,local_8,(undefined4 *)0x0,(void *)0x1);
    if (local_8 != (int *)0x0) {
      (**(code **)(*local_8 + 4))();
    }
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 4))();
    }
    return SUB41(uVar1,0);
  }
  if (local_8 != (int *)0x0) {
    (**(code **)(*local_8 + 4))();
  }
  if (local_4 != (int *)0x0) {
    (**(code **)(*local_4 + 4))();
  }
  return true;
}

