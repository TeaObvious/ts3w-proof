/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX receiver; two stack words/RET8. Stored return type is undefined but instructions return the
   output iterator pointer inEAX, consumed by009D7D80. Builds Video/Message, copies row+70/+74 to
   message+8/+C, sends06168BE5. At009D75DF loads011EA99C;009D75F4..F9 pushes that actual third
   texture word after owner-high/low to006FE440, although stored C omits it.
   Calls009D70E0(row,true), unlinks/releases row and writes next iterator. Allocation-null branch
   reaches message writes; no gracefulOOM or script-delivery policy claimed. Preserve existing
   body/prototype/storage/CC. */

void __thiscall ObjectVideoManager_EndPlaybackAndBindFallback(void *this,int *param_1,int *param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  void *pvVar5;
  
  iVar1 = *param_2;
  piVar4 = (int *)FUN_004e4500(0x10,"Video/Message",0);
  if (piVar4 == (int *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    *piVar4 = (int)&PTR_FUN_0106c91c;
    LOCK();
    piVar4[1] = 0;
    UNLOCK();
    *piVar4 = (int)&PTR_FUN_0106c91c;
    (**(code **)(*piVar4 + 4))();
  }
  piVar4[2] = *(int *)(iVar1 + 0x70);
  piVar4[3] = *(int *)(iVar1 + 0x74);
  FUN_007d3210(0x6168be5,piVar4);
  (**(code **)(*piVar4 + 8))();
  uVar2 = *(uint *)(iVar1 + 0x70);
  piVar4 = *(int **)(iVar1 + 0x74);
  pvVar5 = (void *)FUN_006fdbe0();
  if (pvVar5 != (void *)0x0) {
    ObjectRenderer_ApplyVideoTextureOverride(pvVar5,uVar2,piVar4);
  }
  FUN_009d70e0(this,iVar1,'\x01');
  piVar4 = (int *)((int *)*param_2)[1];
  iVar3 = *(int *)*param_2;
  *piVar4 = iVar3;
  *(int **)(iVar3 + 4) = piVar4;
  pvVar5 = *(void **)(iVar1 + 8);
  if (((1 < *(int *)(iVar1 + 0x10) - (int)pvVar5) && (pvVar5 != (void *)0x0)) &&
     (pvVar5 != *(void **)(iVar1 + 0x18))) {
    Memory_FreeIfNonNull(pvVar5);
  }
  FUN_004e5e70(DAT_011cc864,iVar1);
  *param_1 = iVar3;
  return;
}

