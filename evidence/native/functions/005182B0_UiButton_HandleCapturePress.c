/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; complete Button capture/press handler, physical thiscall ECX plus
   four opaque stack DWORDs, RET10; body does not consume their values. Service at complete+30
   virtual60(context1) returns current capture. If it differs from this+4, call service
   virtual64(1,this+4,0). Only after that callback reload complete+78: if Depressed2 clear and
   Highlighted8 set, request Button+250 virtual28(2,1), then read live+25C bit1 and invoke primary
   virtualA4 when set. All normal paths AL1, unspecified upper bits. No local per-button/Enabled
   gate is present. Primary vtableFBC418 slot3C; caller admission and indirect capture/setter/event
   effects remain separate boundaries. */

bool __thiscall
UiButton_HandleCapturePress
          (void *this,uint opaqueInput0,uint opaqueInput1,uint opaqueInput2,uint opaqueInput3)

{
  int iVar1;
  int iVar2;
  
  if (this == (void *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = (int)this + 4;
  }
  iVar1 = (**(code **)(**(int **)((int)this + 0x30) + 0x60))(1);
  if (iVar1 != iVar2) {
    (**(code **)(**(int **)((int)this + 0x30) + 100))(1,(int)this + 4,0);
  }
  if (((*(uint *)((int)this + 0x78) & 2) == 0) && ((*(uint *)((int)this + 0x78) & 8) != 0)) {
    (**(code **)(*(int *)((int)this + 0x250) + 0x28))(2,1);
    if ((*(byte *)((int)this + 0x25c) & 1) != 0) {
      (**(code **)(*(int *)this + 0xa4))();
    }
  }
  return true;
}

