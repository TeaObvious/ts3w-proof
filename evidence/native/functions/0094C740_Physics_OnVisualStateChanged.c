/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. PC1.67 static instruction review. Object event24 listener registered
   at0094D0F1. Resolves Physics011E9FC8, reads payload FIRST byte (VisualState bit0), and under
   service/body gates replaces physics-body+34 bit0x10000. Wall-only mask0x8 changes payload
   aggregate but not bit0. Return contract AL1. */

bool __cdecl Physics_OnVisualStateChanged(void *object,char *summary3)

{
  char cVar1;
  void *pvVar2;
  int iVar3;
  
  if ((object != (void *)0x0) &&
     (pvVar2 = Object_GetComponentByMask(object,DAT_011e9fc8), pvVar2 != (void *)0x0)) {
    cVar1 = *summary3;
    iVar3 = CollisionService_GetGlobal();
    if ((iVar3 != 0) && (*(int *)((int)pvVar2 + 8) != 0)) {
      *(uint *)(*(int *)((int)pvVar2 + 8) + 0x34) =
           -(uint)(cVar1 != '\0') & 0x10000 |
           *(uint *)(*(int *)((int)pvVar2 + 8) + 0x34) & 0xfffeffff;
    }
  }
  return true;
}

