/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX weather manager; complete254-byte body releases
   precipitation ownerBF4, resets weather-resource bindings and removes12 global option hashes
   through6E3110, including snow5B4ECBF5, transition1FD020A8/BB9EE5E0 and fall0BB5EA4E. This is the
   other direct removal owner; no local alpha/thumbnail/custom-light option insertion or FSAALevel
   load. */

void __fastcall WeatherManager_ReleaseResourcesAndGlobalOptions(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  void *pvVar3;
  
  if (*(int *)(param_1 + 0xbf4) != 0) {
    FUN_00d66990(*(int *)(param_1 + 0xbf4));
    puVar1 = *(undefined4 **)(param_1 + 0xbf4);
    if (puVar1 != (undefined4 *)0x0) {
      *(undefined4 *)(param_1 + 0xbf4) = 0;
      iVar2 = puVar1[1];
      puVar1[1] = iVar2 + -1;
      if (iVar2 + -1 == 0) {
        puVar1[1] = 1;
        (**(code **)*puVar1)(1);
      }
    }
  }
  WeatherResources_ResetBindingsAndSlots(&DAT_011ef130);
  pvVar3 = LoadPump_ReadFrameServiceGlobal();
  if (pvVar3 != (void *)0x0) {
    FUN_006e8d00((int)pvVar3);
  }
  pvVar3 = DAT_011d2530;
  if (DAT_011d2530 != (void *)0x0) {
    RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,-0x4f4072fa);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,0x5b4ecbf5);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,-0x21f146e);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,0x1fd020a8);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,-0x44611a20);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,0xbb5ea4e);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,-0x173b025e);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,-0xc6d54d4);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,-0x3c17ef26);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,0x5fabe4ad);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,-0x3feae255);
    RenderSystem_RemoveGlobalShaderOption(pvVar3,0x6b4a1e93);
  }
  FUN_00af8560();
  return;
}

