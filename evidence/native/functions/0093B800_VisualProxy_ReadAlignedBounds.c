/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical cdecl source-key pointer
   and writable16-byte-ALIGNED32-byte bounds-shaped output; plainRET, AL Boolean. Global-manager
   load and interfaceB7B8BAAF query/retention mirror93B730. Copy source interface words+38/+3C/+40
   into output0/4/8 and REPEAT source+38 into output+C; copy+44/+48/+4C into output10/14/18 and
   REPEAT+44 into output1C. Actual MOVSS/MOVAPS are bit-preserving float-lane copies, no W=1
   initialization; destination MOVAPS requires alignment. ReturnAL1 and release interface/resource
   on success, AL0 on manager/load failure. No null interface guard before lane reads: query failure
   follows original dereference path. Min/max interpretation depends on the producer; this export
   claims the verified32-byte layout and reader consumers, not an inferred geometry convention. */

bool __cdecl VisualProxy_ReadAlignedBounds(void *sourceKey,void *outAlignedBounds)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  int *piVar5;
  int *piVar6;
  int *local_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
  local_24 = (int *)0x0;
  piVar5 = (int *)FUN_004afe80();
  piVar6 = local_24;
  if (piVar5 != (int *)0x0) {
    if (local_24 != (int *)0x0) {
      local_24 = (int *)0x0;
      (**(code **)(*piVar6 + 4))();
    }
    cVar4 = (**(code **)(*piVar5 + 0xc))(sourceKey,&local_24,0,0,0,0);
    if (cVar4 != '\0') {
      if (local_24 == (int *)0x0) {
        piVar6 = (int *)0x0;
      }
      else {
        piVar6 = (int *)(**(code **)(*local_24 + 0xc))(0xb7b8baaf);
        if (piVar6 != (int *)0x0) {
          (**(code **)*piVar6)();
        }
      }
      iVar1 = piVar6[0x10];
      iVar2 = piVar6[0xe];
      iVar3 = piVar6[0xf];
      *(int *)outAlignedBounds = iVar2;
      *(int *)((int)outAlignedBounds + 4) = iVar3;
      *(int *)((int)outAlignedBounds + 8) = iVar1;
      *(int *)((int)outAlignedBounds + 0xc) = iVar2;
      iStack_18 = piVar6[0x13];
      iStack_20 = piVar6[0x11];
      iStack_1c = piVar6[0x12];
      *(int *)((int)outAlignedBounds + 0x10) = iStack_20;
      *(int *)((int)outAlignedBounds + 0x14) = iStack_1c;
      *(int *)((int)outAlignedBounds + 0x18) = iStack_18;
      *(int *)((int)outAlignedBounds + 0x1c) = iStack_20;
      iStack_14 = iStack_20;
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))();
      }
      if (local_24 != (int *)0x0) {
        (**(code **)(*local_24 + 4))();
      }
      return true;
    }
  }
  if (local_24 != (int *)0x0) {
    (**(code **)(*local_24 + 4))();
  }
  return false;
}

