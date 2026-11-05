/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX material binding. Walk32-byte entries and register hashes/counts with
   original parameter service. Entry kinds4/5/6 map to shader texture kind5; scalar/vector counts
   retain existing word conversions. Does not load or upload pixels. Role name is descriptive, not a
   recovered original symbol. */

void __fastcall MaterialShaderBinding_RegisterEntryParameters(int param_1)

{
  ushort uVar1;
  uint *puVar2;
  void *this;
  uint uVar3;
  undefined2 uVar4;
  uint *puVar5;
  uint local_4;
  
  this = DAT_011d8530;
  puVar2 = *(uint **)(param_1 + 0x68);
  for (puVar5 = *(uint **)(param_1 + 100); puVar5 != puVar2; puVar5 = puVar5 + 8) {
    uVar1 = *(ushort *)((int)puVar5 + 10);
    local_4 = (uint)uVar1;
    uVar4 = 0;
    switch(*(undefined1 *)((int)puVar5 + 0x1e)) {
    case 1:
      if ((uVar1 & 3) == 0) {
        local_4 = (uint)(uVar1 >> 2);
        uVar4 = 2;
      }
      else {
        uVar4 = 1;
      }
      break;
    case 2:
      local_4 = (uint)(uVar1 >> 2);
      uVar4 = 3;
      break;
    case 3:
      local_4 = local_4 * 4;
      uVar4 = 2;
      break;
    case 4:
    case 5:
    case 6:
      uVar4 = 5;
    }
    uVar3 = FUN_0079a500(this,*puVar5,local_4,uVar4);
    puVar5[1] = uVar3;
    *(undefined1 *)(puVar5 + 2) = (undefined1)local_4;
    *(char *)((int)puVar5 + 9) = (char)uVar4;
  }
  return;
}

