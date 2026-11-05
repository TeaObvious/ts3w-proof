/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX lot compositor owner; one preset-object pointer stack word, RET4. Looks up full16-byte
   resource identity at preset+8. A miss inserts with count1 and retains the object pointer; a hit
   only increments node+10 and preserves the first pointer at node+14. Temporary reference ownership
   uses original virtual retain/release calls. */

void __thiscall LotCompositors_RetainPresetByResourceKey(void *this,int *param_1)

{
  int *piVar1;
  int *piVar2;
  int local_24 [3];
  uint local_18;
  int local_14;
  int local_10;
  int local_c;
  undefined4 local_8;
  int *local_4;
  
  piVar2 = (int *)FUN_004afe80();
  FUN_005ed9e0((void *)((int)this + 0x20),local_24,(uint *)(param_1 + 2));
  if (local_24[0] == *(int *)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4)) {
    local_14 = param_1[3];
    local_18 = param_1[2];
    local_10 = param_1[4];
    local_c = param_1[5];
    local_8 = 0;
    local_4 = (int *)0x0;
    FUN_00ad3180((void *)((int)this + 0x20),local_24,&local_18);
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 4))();
    }
    *(undefined4 *)(local_24[0] + 0x10) = 1;
    piVar1 = *(int **)(local_24[0] + 0x14);
    if (param_1 != piVar1) {
      if (param_1 != (int *)0x0) {
        (**(code **)*param_1)();
      }
      *(int **)(local_24[0] + 0x14) = param_1;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    FUN_007d9330(piVar2,param_1);
    return;
  }
  *(int *)(local_24[0] + 0x10) = *(int *)(local_24[0] + 0x10) + 1;
  return;
}

