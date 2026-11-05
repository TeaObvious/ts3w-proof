/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004714a2: Create token-kind1; owned body excludes six bytes714BA..714BF.
 * 004714da: Copy callback name unchanged through CopyUtf16ToArena.
 * 004714e1: Store returned raw name at token+8. Namespace prefixes are retained by the selected non-namespace parser path.
 * 0047154a: Copy all delivered attribute name/value strings without interpreting them.
 * 004715a3: Append new token to cursor tail; empty queue instead sets both head and tail.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlCursor_OnStartElement.
   Physical ABI: cdecl stack+4 userData(cursor),+8 UTF16 lexical name,+C NUL-ended UTF16 name/value
   pointer array; void; plain RET. */

void __cdecl XmlCursor_OnStartElement(void *cursor,ushort *name,ushort **attributes)

{
  undefined4 uVar1;
  ushort *puVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  undefined4 *puVar6;
  int iVar7;
  
  if ((-1 < (*(int *)((int)cursor + 0x20) - *(int *)((int)cursor + 0x24)) + -0x30) ||
     (uVar1 = FUN_004e8b80((void *)((int)cursor + 0x18),0x30), (char)uVar1 != '\0')) {
    puVar6 = *(undefined4 **)((int)cursor + 0x24);
    *(undefined4 **)((int)cursor + 0x24) = puVar6 + 0xc;
    *(undefined4 **)((int)cursor + 0x28) = puVar6 + 0xc;
    if (puVar6 != (undefined4 *)0x0) {
      puVar6[1] = 1;
      goto LAB_004714ad;
    }
  }
  puVar6 = (undefined4 *)0x0;
LAB_004714ad:
  uVar5 = 0;
  puVar2 = *attributes;
  while (puVar2 != (ushort *)0x0) {
    uVar5 = uVar5 + 1;
    puVar2 = attributes[uVar5];
  }
  puVar6[10] = (int)uVar5 / 2;
  puVar2 = XmlCursor_CopyUtf16ToArena(cursor,name);
  puVar6[2] = puVar2;
  puVar6[3] = 0;
  uVar3 = (-(uint)((int)((ulonglong)uVar5 * 4 >> 0x20) != 0) | (uint)((ulonglong)uVar5 * 4)) + 7 &
          0xfffffff8;
  if (((int)((*(int *)((int)cursor + 0x20) - *(int *)((int)cursor + 0x24)) - uVar3) < 0) &&
     (uVar1 = FUN_004e8b80((void *)((int)cursor + 0x18),uVar3), (char)uVar1 == '\0')) {
    iVar4 = 0;
  }
  else {
    iVar4 = *(int *)((int)cursor + 0x24);
    *(uint *)((int)cursor + 0x24) = uVar3 + iVar4;
    *(uint *)((int)cursor + 0x28) = uVar3 + iVar4;
  }
  iVar7 = 0;
  puVar6[9] = iVar4;
  if (0 < (int)uVar5) {
    do {
      puVar2 = XmlCursor_CopyUtf16ToArena(cursor,attributes[iVar7]);
      *(ushort **)(puVar6[9] + iVar7 * 4) = puVar2;
      iVar7 = iVar7 + 1;
    } while (iVar7 < (int)uVar5);
  }
  *puVar6 = 0;
  iVar4 = FUN_004b9ab0(*(int *)cursor);
  puVar6[5] = iVar4;
  uVar1 = FUN_004b9b00(*(int *)cursor);
  puVar6[6] = uVar1;
  iVar4 = FUN_004b9a70(*(int *)cursor);
  puVar6[7] = iVar4;
  iVar4 = FUN_004b9a90(*(int *)cursor);
  puVar6[8] = iVar4;
  puVar6[4] = *(undefined4 *)((int)cursor + 0xc);
  if (*(undefined4 **)((int)cursor + 0x44) == (undefined4 *)0x0) {
    *(int *)((int)cursor + 0xc) = *(int *)((int)cursor + 0xc) + 1;
    *(undefined4 **)((int)cursor + 0x40) = puVar6;
    *(undefined4 **)((int)cursor + 0x44) = puVar6;
    return;
  }
  **(undefined4 **)((int)cursor + 0x44) = puVar6;
  *(int *)((int)cursor + 0xc) = *(int *)((int)cursor + 0xc) + 1;
  *(undefined4 **)((int)cursor + 0x44) = puVar6;
  return;
}

