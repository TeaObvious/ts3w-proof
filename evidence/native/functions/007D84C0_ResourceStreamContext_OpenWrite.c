/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX stream context, RET 8: key pointer, mode byte.
   Release prior context; require status true. Global service is assumed non-null. Call
   +4(key,outContext,field0,(mode!=0)+1,6), AND its low-byte result into status, then obtain stream
   +18h if successful. Broader reference/commit behavior remains open. */

bool __thiscall ResourceStreamContext_OpenWrite(void *this,void *key,byte modeBit)

{
  undefined4 *arg2;
  byte *pbVar1;
  bool bVar2;
  int *piVar3;
  void *pvVar4;
  
  piVar3 = *(int **)((int)this + 4);
  arg2 = (undefined4 *)((int)this + 4);
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x20))(piVar3);
    (**(code **)(*(int *)*arg2 + 8))((int *)*arg2);
    *arg2 = 0;
    *(undefined4 *)((int)this + 8) = 0;
    *(undefined1 *)((int)this + 0x15) = 0;
  }
  if (*(char *)((int)this + 0x14) == '\0') {
    return false;
  }
  piVar3 = (int *)FUN_0072f140();
  bVar2 = (**(code **)(*piVar3 + 4))(piVar3,key,arg2,*(uint *)this,(modeBit != 0) + 1,6);
  pbVar1 = (byte *)((int)this + 0x14);
  *pbVar1 = *pbVar1 & bVar2;
  if (*pbVar1 != 0) {
    pvVar4 = (**(code **)(*(int *)*arg2 + 0x18))((int *)*arg2);
    *(void **)((int)this + 8) = pvVar4;
  }
  return (bool)*(undefined1 *)((int)this + 0x14);
}

