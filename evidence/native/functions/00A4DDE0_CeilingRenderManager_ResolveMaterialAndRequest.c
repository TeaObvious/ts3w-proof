/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Test resource-word mask0x1; when clear, release old material, acquire through
   existing selector and submit room request immediately. No debounce wait/reset here. Preserve
   actual inferred signature and failure assumptions; no general material-ready inference beyond
   calls. */

undefined4 __fastcall CeilingRenderManager_ResolveMaterialAndRequest(int param_1)

{
  int *piVar1;
  void *this;
  uint selector;
  undefined4 uVar2;
  
  if ((*(uint *)(param_1 + 0x58) & 1) == 0) {
    piVar1 = *(int **)(param_1 + 0x5c);
    if (piVar1 != (int *)0x0) {
      *(void **)(param_1 + 0x5c) = (void *)0x0;
      (**(code **)(*piVar1 + 4))();
    }
    this = *(void **)(param_1 + 0x58);
    selector = FUN_006caf60();
    MaterialDef_AcquireMaterial(this,(void **)(param_1 + 0x5c),selector);
    uVar2 = CeilingRenderManager_SubmitRoomRequest(param_1);
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  return *(uint *)(param_1 + 0x58) & 0xffffff00;
}

