/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified retail PC 1.67 SaveWorld Boolean completion delivery. Reads completion byte from its
   argument, retrieves script host at 0x00769390, uses retained callback context at object
   +0x30/+0x34, and calls host vtable +0x124. Reached from save-task completion path 0x00743050 and
   gate 0x00743220; registered SaveWorld entry is 0x00743880. See guides/callbacks/native/disassembly/save-world-result-dispatch.objdump.txt and managed IL closure. Full save
   lifecycle is not established. */

void __thiscall SaveWorld_DeliverCompletionBoolean(void *this,undefined1 param_1)

{
  int *piVar1;
  uint unaff_ESI;
  undefined **ppuStack_2c;
  undefined ***pppuStack_28;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  undefined1 local_10;
  
  pppuStack_28 = (undefined ***)0x742fcb;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    local_10 = param_1;
    pppuStack_28 = local_20;
    ppuStack_2c = *(undefined ***)((int)this + 0x34);
    local_20[0] = &PTR_FUN_0100886c;
    local_16 = 1;
    local_18 = 2;
    (**(code **)(*piVar1 + 0x124))(*(undefined4 *)((int)this + 0x30));
    ppuStack_2c = &PTR_FUN_00fba6f4;
    if ((unaff_ESI & 4) != 0) {
      FUN_004f5760(&ppuStack_2c,'\0');
    }
  }
  return;
}
