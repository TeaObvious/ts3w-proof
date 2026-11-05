/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=block container; one command pointer; RET 4, void. Copies a
   temporary header/payload through metadata virtual copy, or the 64-byte fallback. May grow
   block-pointer storage through 594490. Allocates 0x140 bytes aligned16 (four 0x50-byte memory
   records), copies into the current boundary slot, links the next block and updates pointers, then
   destroys the temporary through metadata virtual0. Allocation/exception containment is unexpanded;
   no transactional or render-completion guarantee. */

void __thiscall RenderCommandBlocks_AppendBoundary(void *this,byte *command)

{
  void *pvVar1;
  int *piVar2;
  int iVar3;
  byte *pbVar4;
  byte *pbVar5;
  undefined4 local_60;
  int *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  byte local_50 [76];
  
  local_58 = *(undefined4 *)(command + 8);
  local_60 = *(undefined4 *)command;
  local_5c = *(int **)(command + 4);
  local_54 = *(undefined4 *)(command + 0xc);
  if (local_5c == (int *)0x0) {
    pbVar4 = command + 0x10;
    pbVar5 = local_50;
    for (iVar3 = 0x10; iVar3 != 0; iVar3 = iVar3 + -1) {
      *(undefined4 *)pbVar5 = *(undefined4 *)pbVar4;
      pbVar4 = pbVar4 + 4;
      pbVar5 = pbVar5 + 4;
    }
  }
  else {
    (**(code **)(*local_5c + 4))(local_5c,local_50,command + 0x10);
  }
  if (*(int *)((int)this + 4) <= (*(int *)((int)this + 0x24) - *(int *)this >> 2) + 1) {
    FUN_00594490(this,1,1);
  }
  pvVar1 = FUN_004e4520(0x140,0x10,0,*(uint *)((int)this + 0x28),0,0,
                        "c:\\BuildAgent\\slc1-build111\\CMBuild\\Core\\include\\EASTL/allocator.h",
                        0xfb);
  *(void **)(*(int *)((int)this + 0x24) + 4) = pvVar1;
  if (*(void **)((int)this + 0x18) != (void *)0x0) {
    RenderCommand_CopyRecord(*(void **)((int)this + 0x18),(byte *)&local_60);
  }
  piVar2 = (int *)(*(int *)((int)this + 0x24) + 4);
  *(int **)((int)this + 0x24) = piVar2;
  iVar3 = *piVar2;
  *(int *)((int)this + 0x1c) = iVar3;
  *(int *)((int)this + 0x20) = iVar3 + 0x140;
  *(undefined4 *)((int)this + 0x18) = *(undefined4 *)((int)this + 0x1c);
  if (local_5c != (int *)0x0) {
    (**(code **)*local_5c)(local_5c,local_50);
  }
  return;
}

