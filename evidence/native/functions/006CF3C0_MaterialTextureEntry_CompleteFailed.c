/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX texture entry. Only state3 proceeds; XCHG to4. Attached material may
   request existing one-time fallback after setting flag and resetting state0; successful request
   re-enters dispatch. Otherwise clear pending bit and publish null. No blanket resource-readiness
   guarantee. Role name is descriptive, not a recovered original symbol. */

void __fastcall MaterialTextureEntry_CompleteFailed(int param_1)

{
  undefined4 uVar1;
  
  if (*(int *)(param_1 + 0x44) == 3) {
    LOCK();
    *(undefined4 *)(param_1 + 0x44) = 4;
    UNLOCK();
    if (*(int *)(param_1 + 0x34) != 0) {
      if ((*(byte *)(param_1 + 0x42) & 4) == 0) {
        *(byte *)(param_1 + 0x42) = *(byte *)(param_1 + 0x42) & 0xfc | 4;
        LOCK();
        *(undefined4 *)(param_1 + 0x44) = 0;
        UNLOCK();
        uVar1 = FUN_005ca650((void *)(param_1 + 0x24),&DAT_0115c890,param_1 + 8,0,0);
        if ((char)uVar1 != '\0') {
          MaterialTextureEntry_DispatchState(param_1);
          return;
        }
      }
      *(byte *)(param_1 + 0x42) = *(byte *)(param_1 + 0x42) & 0xf7;
      if (*(void **)(param_1 + 0x34) != (void *)0x0) {
        MaterialShaderBinding_PublishTextureEntry
                  (*(void **)(param_1 + 0x34),*(int *)(param_1 + 0x18),0);
      }
    }
  }
  return;
}

