/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; complete Button capture/release handler, physical thiscall ECX plus
   four opaque stack DWORDs, RET10. Query service+30 virtual60(context1); on identity this+4 call
   virtual68(1,this+4,0). After that call reload Depressed2 at complete+78. If set, request
   Button+250 virtual28(2,0), then read live+25C bit1 and invoke primary virtualA4 only when clear.
   Depressed branch is evaluated even when capture belonged elsewhere. AL1 all normal paths; upper
   bits unspecified. No direct click-hover-ID match or managed Boolean result exists here. Primary
   vtableFBC418 slot40; dynamic release/setter callback effects not collapsed into pure stores. */

bool __thiscall
UiButton_HandleCaptureRelease
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
  if (iVar1 == iVar2) {
    (**(code **)(**(int **)((int)this + 0x30) + 0x68))(1,(int)this + 4,0);
  }
  if ((*(byte *)((int)this + 0x78) & 2) != 0) {
    (**(code **)(*(int *)((int)this + 0x250) + 0x28))(2,0);
    if ((*(byte *)((int)this + 0x25c) & 1) == 0) {
      (**(code **)(*(int *)this + 0xa4))();
    }
  }
  return true;
}

