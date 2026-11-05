/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; analyst-assigned role. Physical thiscall preserves ECX for
   recursion; four stack words complete-window pointer,screen XY pointer,opaque forwarded
   word,out-local-XY optional pointer; RET10. Return is selected complete native window pointer or0.
   Initial window+70 bit1 false returns0. Invoke515210 and514310 using window+4 interface and test
   AL only. Failure plus bit400 rejects whole branch; otherwise self candidate becomes0 and children
   remain eligible. Bit10 clears self; bit1000 skips children. Child linked list uses
   complete-window+210 sentinel, node-minus8 object conversion, first nonzero recursive child result
   wins. The original screen pointer and opaque word are forwarded, not replaced by local
   coordinates. Optional local outputs are written on self/fallback completion even if self
   candidate is0; a returned child supplies its own output. No frontend candidate sampler, retained
   list, control-ID matching, virtual-provider override or full modal policy is established by this
   body. */

void * __thiscall
UiWindow_PickAtScreenPoint
          (void *this,void *window,float *screenPoint,uint opaqueQueryWord,float *outLocalPoint)

{
  undefined4 *puVar1;
  void *pvVar2;
  bool bVar3;
  undefined4 *window_00;
  void *pvVar4;
  float local_8;
  float local_4;
  
  pvVar2 = window;
  if ((*(byte *)((int)window + 0x70) & 1) == 0) {
    return (void *)0x0;
  }
  pvVar4 = (void *)((int)window + 4);
  bVar3 = UiWindow_ScreenPointToLocal(pvVar4,*screenPoint,screenPoint[1],&local_8);
  if (!bVar3) {
    if ((*(uint *)((int)window + 0x70) & 0x400) != 0) {
      return (void *)0x0;
    }
    window = (void *)0x0;
  }
  bVar3 = UiWindow_HitLocalPoint(pvVar4,local_8,local_4);
  if (!bVar3) {
    if ((*(uint *)((int)pvVar2 + 0x70) & 0x400) != 0) {
      return (void *)0x0;
    }
    window = (void *)0x0;
  }
  if ((*(uint *)((int)pvVar2 + 0x70) & 0x10) != 0) {
    window = (void *)0x0;
  }
  if ((*(uint *)((int)pvVar2 + 0x70) & 0x1000) == 0) {
    for (puVar1 = *(undefined4 **)((int)pvVar2 + 0x210);
        puVar1 != (undefined4 *)((int)pvVar2 + 0x210); puVar1 = (undefined4 *)*puVar1) {
      if (puVar1 == (undefined4 *)0x0) {
        window_00 = (undefined4 *)0x0;
      }
      else {
        window_00 = puVar1 + -2;
      }
      pvVar4 = UiWindow_PickAtScreenPoint(this,window_00,screenPoint,opaqueQueryWord,outLocalPoint);
      if (pvVar4 != (void *)0x0) {
        return pvVar4;
      }
    }
  }
  if (outLocalPoint != (float *)0x0) {
    *outLocalPoint = local_8;
    outLocalPoint[1] = local_4;
  }
  return window;
}

