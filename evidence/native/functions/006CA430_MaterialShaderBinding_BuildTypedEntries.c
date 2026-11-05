/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX binding; one copied payload pointer; RET0x04. Build32-byte entries
   from16-byte material metadata. Kind4 borrows key bytes from copied payload; kind5 dereferences
   texture value and becomes kind6. Kind-specific flags/counts and nonzero tests remain distinct.
   Jump table and all six cases verified in pristine bytes. Role name is descriptive, not a
   recovered original symbol. */

void __thiscall MaterialShaderBinding_BuildTypedEntries(void *this,uint *param_1)

{
  uint *puVar1;
  uint uVar2;
  uint *puVar3;
  uint uVar4;
  uint uVar5;
  uint *puVar6;
  uint *puVar7;
  float fVar8;
  
  puVar1 = param_1;
  *(undefined4 *)((int)this + 0x68) = *(undefined4 *)((int)this + 100);
  FUN_006ca3c0((void *)((int)this + 100),param_1[3]);
  uVar5 = 0;
  if (param_1[3] != 0) {
    fVar8 = 0.0;
    param_1 = (uint *)0x0;
    puVar3 = puVar1;
    do {
      puVar7 = puVar3 + 4;
      puVar6 = (uint *)(*(int *)((int)this + 100) + (int)param_1);
      uVar2 = puVar3[5];
      *(char *)((int)puVar6 + 0x1e) = (char)uVar2;
      *(short *)((int)puVar6 + 10) = (short)puVar3[6];
      *puVar6 = *puVar7;
      uVar4 = 0;
      puVar6[4] = (uint)puVar7;
      puVar6[3] = uVar5;
      puVar6[6] = 0;
      *(undefined1 *)(puVar6 + 7) = 0;
      puVar3 = (uint *)(puVar3[7] + (int)puVar1);
      switch((char)uVar2) {
      case '\x01':
      case '\x03':
        puVar6[5] = (uint)puVar3;
        if (*(short *)((int)puVar6 + 10) != 0) {
          do {
            if ((float)puVar3[uVar4] != fVar8) goto LAB_006ca528;
            uVar4 = uVar4 + 1;
          } while (uVar4 < *(ushort *)((int)puVar6 + 10));
        }
        break;
      case '\x02':
        uVar2 = 0;
        puVar6[5] = (uint)puVar3;
        if (*(short *)((int)puVar6 + 10) != 0) {
          do {
            if (puVar3[uVar2] != 0) goto LAB_006ca528;
            uVar2 = uVar2 + 1;
          } while (uVar2 < *(ushort *)((int)puVar6 + 10));
        }
        break;
      case '\x04':
        puVar6[5] = (uint)puVar3;
        FUN_006c95b0(puVar6);
        *(undefined1 *)((int)puVar6 + 0x1d) = 0;
        goto LAB_006ca528;
      case '\x05':
        puVar6[5] = *puVar3;
        *(undefined1 *)((int)puVar6 + 0x1e) = 6;
        goto LAB_006ca51a;
      case '\x06':
        puVar6[5] = (uint)puVar3;
LAB_006ca51a:
        FUN_006c95b0(puVar6);
        *(undefined1 *)((int)puVar6 + 0x1d) = 1;
LAB_006ca528:
        *(undefined1 *)(puVar6 + 7) = 1;
      }
      param_1 = param_1 + 8;
      uVar5 = uVar5 + 1;
      puVar3 = puVar7;
    } while (uVar5 < puVar1[3]);
  }
  return;
}

