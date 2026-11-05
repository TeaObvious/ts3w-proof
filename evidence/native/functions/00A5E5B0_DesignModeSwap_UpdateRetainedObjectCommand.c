/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. ECX swap; plain RET. If swap+EC is null, allocate6Ch and
   initialize D29590, retain pointer, increment refcount, call virtual+4, then virtual+2C with
   Float32zero, then D29740. Initial submission through D39980 occurs only if CEF500/current+28
   exists and swap byte48 is zero; then byte49=1. Existing +EC branch only D29740; GUID low/high
   from source+8/+C, value blocks swap+A8/+B8 and text block+C8. No worker/completion protocol
   inferred. */

void __fastcall DesignModeSwap_UpdateRetainedObjectCommand(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  
  if (*(void **)(param_1 + 0xec) == (void *)0x0) {
    puVar1 = (undefined4 *)FUN_004e4500(0x6c,"World/DesignModeSwap/SetObjectValues",0);
    if (puVar1 == (undefined4 *)0x0) {
      puVar1 = (undefined4 *)0x0;
    }
    else {
      puVar1 = ObjectDesignCommand_Initialize(puVar1);
    }
    *(undefined4 **)(param_1 + 0xec) = puVar1;
    puVar1[1] = puVar1[1] + 1;
    (**(code **)(**(int **)(param_1 + 0xec) + 4))();
    (**(code **)(**(int **)(param_1 + 0xec) + 0x2c))(0);
    ObjectDesignCommand_RecordAndApplyValues
              (*(void **)(param_1 + 0xec),*(uint *)(*(int *)(param_1 + 0x1c) + 8),
               *(undefined4 *)(*(int *)(param_1 + 0x1c) + 0xc),(int *)(param_1 + 0xa8),
               (int *)(param_1 + 0xb8),(undefined4 *)(param_1 + 200));
    iVar2 = FUN_00cef500();
    if (((iVar2 != 0) && (*(void **)(iVar2 + 0x28) != (void *)0x0)) &&
       (*(char *)(param_1 + 0x48) == '\0')) {
      FUN_00d39980(*(void **)(iVar2 + 0x28),*(int **)(param_1 + 0xec));
      *(undefined1 *)(param_1 + 0x49) = 1;
      return;
    }
  }
  else {
    ObjectDesignCommand_RecordAndApplyValues
              (*(void **)(param_1 + 0xec),*(uint *)(*(int *)(param_1 + 0x1c) + 8),
               *(undefined4 *)(*(int *)(param_1 + 0x1c) + 0xc),(int *)(param_1 + 0xa8),
               (int *)(param_1 + 0xb8),(undefined4 *)(param_1 + 200));
  }
  return;
}

