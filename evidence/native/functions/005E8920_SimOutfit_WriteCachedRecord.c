/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Physical caller-cleaned three words/plain RET, AL status. Requires
   outfit and reference store. Writes0D160D16, backpatchedUInt32 body size, ordinary full outfit
   writer with external key collection, UInt16 external-key count and corresponding reference
   handles. The outfit body includes its own empty key table; record key handles follow it. Actual C
   retains unaff_EBX/EBP aliases for the collected vector, not extra incoming parameters. */

undefined1 __cdecl SimOutfit_WriteCachedRecord(void *param_1,void *param_2,void *param_3)

{
  undefined1 uVar1;
  byte bVar2;
  uint uVar3;
  int iVar4;
  uint *unaff_EBX;
  uint *unaff_EBP;
  uint *puVar5;
  
  if ((param_1 == (void *)0x0) || (param_3 == (void *)0x0)) {
    return 0;
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_2 + 8),0xd160d16,*(uint *)((int)param_2 + 0x10));
  StreamReader_AccumulateStatus(param_2,bVar2);
  uVar3 = (**(code **)(**(int **)((int)param_2 + 8) + 0x24))(0);
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_2 + 8),0,*(uint *)((int)param_2 + 0x10));
  StreamReader_AccumulateStatus(param_2,bVar2);
  FUN_007d9500(&stack0xffffffec,(undefined4 *)&stack0x00000000);
  SimOutfit_WriteWire(param_1,*(int **)((int)param_2 + 8),0,(undefined4 *)&stack0xffffffec,1);
  iVar4 = (**(code **)(**(int **)((int)param_2 + 8) + 0x24))(0);
  if (iVar4 == -1) {
    *(undefined1 *)((int)param_2 + 0x14) = 0;
  }
  else {
    Stream_BackpatchUInt32(param_2,uVar3,(iVar4 - uVar3) - 4);
  }
  if (*(char *)((int)param_2 + 0x14) == '\0') {
    if (unaff_EBP != (uint *)0x0) {
      Memory_FreeIfNonNull(unaff_EBP);
    }
    return 0;
  }
  bVar2 = Stream_WriteUInt16(*(void **)((int)param_2 + 8),
                             (ushort)((int)unaff_EBX - (int)unaff_EBP >> 4),
                             *(uint *)((int)param_2 + 0x10));
  StreamReader_AccumulateStatus(param_2,bVar2);
  for (puVar5 = unaff_EBP; puVar5 != unaff_EBX; puVar5 = puVar5 + 4) {
    uVar3 = ResourceReferences_RegisterKey(param_3,puVar5,0);
    FUN_007d6500(param_3,param_2,uVar3);
  }
  uVar1 = *(undefined1 *)((int)param_2 + 0x14);
  if (unaff_EBP != (uint *)0x0) {
    Memory_FreeIfNonNull(unaff_EBP);
  }
  return uVar1;
}

