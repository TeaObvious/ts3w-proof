/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX stream context, RET 8: key pointer, mode byte.
   Release prior owned context +4 and reset stream/cache fields; require status +14h. Missing/failed
   global open service returns false without accumulating that failure into status. Success obtains
   stream through owned context +18h. ECX and five stack arguments at the service call are
   instruction verified. */

bool __thiscall ResourceStreamContext_OpenRead(void *this,void *key,byte modeBit)

{
  undefined4 *arg2;
  bool bVar1;
  int *piVar2;
  void *pvVar3;
  bool bVar4;
  
  piVar2 = *(int **)((int)this + 4);
  arg2 = (undefined4 *)((int)this + 4);
  bVar4 = false;
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x20))(piVar2);
    (**(code **)(*(int *)*arg2 + 8))((int *)*arg2);
    *arg2 = 0;
    *(undefined4 *)((int)this + 8) = 0;
    *(undefined1 *)((int)this + 0x15) = 0;
  }
  if (*(char *)((int)this + 0x14) == '\0') {
    return false;
  }
  piVar2 = (int *)FUN_0072f140();
  if (piVar2 != (int *)0x0) {
    bVar1 = (**(code **)(*piVar2 + 4))(piVar2,key,arg2,*(uint *)this,(modeBit != 0) + 1,6);
    if (bVar1) {
      bVar4 = true;
      pvVar3 = (**(code **)(*(int *)*arg2 + 0x18))((int *)*arg2);
      *(void **)((int)this + 8) = pvVar3;
    }
  }
  return bVar4;
}

