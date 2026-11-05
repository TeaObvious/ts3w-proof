/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. thiscall one uint track argument,
   RET4 and EAX returns address of sequence pointer in16-byte list node+8. Searches track node+0xc;
   otherwise adds node, allocates0x70-byte SequenceController, retains sequence in node. Former
   decompiler extra argument/unaff_ESI return was bad prototype. */

int ** __thiscall AnimationTrackMap_FindOrCreate(void *this,uint track)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  void *this_00;
  int **ppiVar5;
  
  puVar1 = *(undefined4 **)((int)this + 4);
  while( true ) {
    if (puVar1 == (undefined4 *)((int)this + 4)) {
      piVar4 = (int *)FUN_004e4500(0x10,*(undefined4 *)((int)this + 0xc),0);
      if (piVar4 + 2 != (int *)0x0) {
        piVar4[2] = 0;
      }
      *piVar4 = (int)this + 4;
      piVar4[1] = *(int *)((int)this + 8);
      **(undefined4 **)((int)this + 8) = piVar4;
      *(int **)((int)this + 8) = piVar4;
      ppiVar5 = (int **)(*(int *)((int)this + 8) + 8);
      *(uint *)(*(int *)((int)this + 8) + 0xc) = track;
      this_00 = (void *)FUN_004e4500(0x70,"Animation/SequenceController",0);
      if (this_00 == (void *)0x0) {
        piVar4 = (int *)0x0;
      }
      else {
        piVar4 = AnimationSequenceController_Construct
                           (this_00,*(undefined4 *)((int)this + 0x14),track);
      }
      piVar2 = *ppiVar5;
      if (piVar4 != piVar2) {
        if (piVar4 != (int *)0x0) {
          piVar4[1] = piVar4[1] + 1;
        }
        *ppiVar5 = piVar4;
        if ((piVar2 != (int *)0x0) && (iVar3 = piVar2[1], piVar2[1] = iVar3 + -1, iVar3 + -1 == 0))
        {
          piVar2[1] = 1;
          (**(code **)*piVar2)(1);
        }
      }
      return ppiVar5;
    }
    if (puVar1[3] == track) break;
    puVar1 = (undefined4 *)*puVar1;
  }
  return (int **)(puVar1 + 2);
}

