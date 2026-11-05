/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=render-object manager; GUID64, key pointer, DWORD stage;
   RET 16, Boolean in AL. Corrects an old missing GUID high word and false key-pointer prototype.
   Finds full GUID through 6FDD60; rejects sentinel/null/node-minus8 null and a failed virtual+C
   query for 017F1D88. Allocates 0x20 bytes aligned8 with label Renderer/PaintingFixupLOD,
   constructs the key/stage and retains a local reference. Interface virtual+80 receives
   fixup-or-NULL and pointer FFAF2C to an 8-byte identifier. Calls 6DCC00(interface+210), releases
   local fixup, returns true EVEN IF allocation yielded NULL. Slot/cache success is not propagated;
   ownership/replacement and full cache polling remain unexpanded. */

bool __thiscall
RenderObject_AttachPaintingFixup
          (void *this,ulonglong objectGuid,byte *nativePaintingKey,uint levelToReveal)

{
  int *piVar1;
  void *this_00;
  int *arg0;
  int *arg1;
  ulonglong local_8;
  
  local_8 = objectGuid;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&objectGuid,(byte *)&local_8);
  if ((((int)objectGuid != *(int *)((int)this + 0x1028)) && ((int)objectGuid != 0)) &&
     (piVar1 = (int *)((int)objectGuid + -8), piVar1 != (int *)0x0)) {
    piVar1 = (**(code **)(*piVar1 + 0xc))(piVar1,0x17f1d88);
    if (piVar1 != (int *)0x0) {
      this_00 = FUN_004e4520(0x20,8,0,"Renderer/PaintingFixupLOD",0,0,0,0);
      arg1 = (int *)0x0;
      if (this_00 != (void *)0x0) {
        arg0 = PaintingFixup_Construct(this_00,nativePaintingKey,levelToReveal);
        if (arg0 != (int *)0x0) {
          (**(code **)*arg0)(arg0);
          arg1 = arg0;
        }
      }
      (**(code **)(*piVar1 + 0x80))(piVar1,arg1,&DAT_00ffaf2c);
      FUN_006dcc00(piVar1 + 0x84);
      if (arg1 != (int *)0x0) {
        (**(code **)(*arg1 + 4))(arg1);
      }
      return true;
    }
  }
  return false;
}

