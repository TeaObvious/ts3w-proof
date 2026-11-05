/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: BindFloorManagerToLot.
 * Executable tokens are unchanged. DB EOL comments are addressed separately below
 * because the decompiler does not emit them in C.
 * Generated types and signatures remain projections; consult the paired ASM.
 * The scratch buffer is rendered as 64 bytes; original instructions copy 16 DWORDs into each destination block.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00A8DD0D [EOL]: Store the supplied core-lot pointer at floorManager+4. A913D0 later reads that owner and copies its +48/+4C pair into floor-message +8/+C.
 * 00A8DD8D [EOL]: Copy exactly 16 DWORDs into manager+50; the second REP MOVSD writes another 16 DWORDs at +90. The helper bodies determine actual catalog/default-key semantics.
 */



/* Binds the floor manager to the supplied core lot at +4, copies four dimension words, resets
   selected retained state and installs two 64-byte default key quads through existing key helpers.
   ECX manager and one stack word, RET4; physical result AL=1. Analyst-assigned name. */

undefined4 __thiscall BindFloorManagerToLot(void *this,int coreLot)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined1 defaultKeyQuadScratch [64];
  
  *(undefined1 *)this = 1;
  *(int *)((int)this + 4) = coreLot;
  *(undefined4 *)((int)this + 8) = *(undefined4 *)(coreLot + 0x174);
  *(undefined4 *)((int)this + 0xc) = *(undefined4 *)(coreLot + 0x178);
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)(coreLot + 0x17c);
  *(undefined4 *)((int)this + 0x14) = *(undefined4 *)(coreLot + 0x180);
  *(undefined4 *)((int)this + 300) = 0;
  FUN_0073ebe0(*(int *)((int)this + 0x134),*(uint *)((int)this + 0x138));
  puVar5 = &DAT_011ec8d0;
  puVar4 = &DAT_011ec8d0;
  puVar3 = &DAT_011ec8d0;
  *(undefined4 *)((int)this + 0x13c) = 0;
  puVar1 = (undefined4 *)FUN_00c8b420();
  puVar1 = (undefined4 *)FUN_00afbb10(defaultKeyQuadScratch,puVar1,puVar3,puVar4,puVar5);
  puVar6 = &DAT_011ec8d0;
  puVar5 = &DAT_011ec8d0;
  puVar4 = &DAT_011ec8d0;
  puVar3 = (undefined4 *)((int)this + 0x50);
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar3 = *puVar1;
    puVar1 = puVar1 + 1;
    puVar3 = puVar3 + 1;
  }
  puVar1 = (undefined4 *)FUN_00c8b3c0();
  puVar4 = (undefined4 *)FUN_00afbb10(defaultKeyQuadScratch,puVar1,puVar4,puVar5,puVar6);
  puVar1 = puVar4;
  puVar3 = (undefined4 *)((int)this + 0x90);
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar3 = *puVar1;
    puVar1 = puVar1 + 1;
    puVar3 = puVar3 + 1;
  }
  return CONCAT31((int3)((uint)puVar4 >> 8),1);
}

