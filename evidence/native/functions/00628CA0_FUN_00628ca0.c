/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintSet_InsertUniquePointer.
   Original Ghidra database symbol: FUN_00628ca0; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00628ca0,00628d27); 0 envelope gap bytes are not owned instructions.
*/

/* Key comparison is unsigned pointer identity, not GUID, type or geometry equality (628CB5..628CE9). Existing keys return the existing node and inserted=false without incrementing set+14. The displayed declaration omits a third physical stack word: both returns pop 0x0c; 629850 supplies a trailing zero word. Do not use the inferred two-parameter C declaration as the ABI. */

undefined4 * __thiscall FootprintSet_InsertUniquePointer(void *this,undefined4 *param_1,uint *param_2)

{
  uint *puVar1;
  int *piVar2;
  int *piVar3;
  bool bVar4;
  
  puVar1 = param_2;
  piVar2 = (int *)((int)this + 4);
  bVar4 = true;
  if (*(int **)((int)this + 0xc) != (int *)0x0) {
    piVar3 = *(int **)((int)this + 0xc);
    do {
      piVar2 = piVar3;
      /* 00628CB5..C2: compare unsigned pointer keys, not footprint contents. */
      bVar4 = *param_2 < (uint)piVar2[4];
      if (bVar4) {
        piVar3 = (int *)piVar2[1];
      }
      else {
        piVar3 = (int *)*piVar2;
      }
    } while (piVar3 != (int *)0x0);
  }
  piVar3 = piVar2;
  if (bVar4) {
    if (piVar2 == *(int **)((int)this + 8)) goto LAB_00628cf5;
    piVar3 = FUN_004e1070(piVar2);
  }
  if (*puVar1 <= (uint)piVar3[4]) {
    *param_1 = piVar3;
    *(undefined1 *)(param_1 + 1) = 0;
    return param_1;
  }
LAB_00628cf5:
  FootprintSet_InsertRetainedNode(this,&param_2,piVar2,puVar1,'\0');
  *param_1 = param_2;
  *(undefined1 *)(param_1 + 1) = 1;
  return param_1;
}
