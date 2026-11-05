/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 saved Model shared-step table writer. ECX pool, stack4 writer, stack8 key context,
   RET8, low-AL status. Prior decompiler omitted physical second argument used by the local key
   adapter. Writes version2, placeholder size, full UInt32 count and current bucket traversal rows
   (UInt32 step handle plus properties in mode2); backpatches size after count/rows and restores end
   position. Full159instructions399ownedbytes. No claim that native hash traversal equals arbitrary
   host dictionary order; property/resource child contracts remain separate. No bytes/callee
   metadata changed. */

byte __thiscall SavedModelSharedSteps_Write(void *this,void *writer,void *keyContext)

{
  int *piVar1;
  byte bVar2;
  char cVar3;
  undefined4 *this_00;
  int iVar4;
  int iVar5;
  int *piVar6;
  int iStack_4;
  
  bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),2,*(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar2);
  (**(code **)(**(int **)((int)writer + 8) + 0x24))(0);
  bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),0,*(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),*(uint *)((int)this + 0x1c),
                             *(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar2);
  piVar6 = *(int **)((int)this + 0x14);
  iVar4 = *piVar6;
  if (iVar4 == 0) {
    piVar6 = piVar6 + 1;
    iVar4 = *piVar6;
    while (iVar4 == 0) {
      piVar6 = piVar6 + 1;
      iVar4 = *piVar6;
    }
    iVar4 = *piVar6;
  }
  iVar5 = *(int *)(*(int *)((int)this + 0x14) + *(int *)((int)this + 0x18) * 4);
  while (iVar4 != iVar5) {
    this_00 = FUN_00602920();
    bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),*(uint *)(iVar4 + 4),
                               *(uint *)((int)writer + 0x10));
    StreamReader_AccumulateStatus(writer,bVar2);
    cVar3 = FUN_00601140(this_00,writer,(int *)&stack0xffffffec,2);
    if (cVar3 == '\0') {
      return 0;
    }
    iVar4 = *(int *)(iVar4 + 8);
    while (iVar4 == 0) {
      piVar1 = piVar6 + 1;
      piVar6 = piVar6 + 1;
      iVar4 = *piVar1;
    }
  }
  iVar4 = (**(code **)(**(int **)((int)writer + 8) + 0x24))(0);
  if (((iVar4 != -1) && (iVar5 = (**(code **)(**(int **)((int)writer + 8) + 0x24))(0), iVar5 != -1))
     && (cVar3 = (**(code **)(**(int **)((int)writer + 8) + 0x28))(iStack_4,0), cVar3 != '\0')) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)writer + 8),(iVar4 - iStack_4) - 4,
                               *(uint *)((int)writer + 0x10));
    StreamReader_AccumulateStatus(writer,bVar2);
    cVar3 = (**(code **)(**(int **)((int)writer + 8) + 0x28))(iVar5,0);
    if (cVar3 != '\0') goto LAB_00602e96;
  }
  *(undefined1 *)((int)writer + 0x14) = 0;
LAB_00602e96:
  return *(byte *)((int)writer + 0x14);
}

