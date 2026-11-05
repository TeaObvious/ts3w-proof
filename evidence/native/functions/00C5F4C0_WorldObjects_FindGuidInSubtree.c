/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 supplied lot identity/import counterpart): Analyst role; physical cdecl four
   DWORD words root/GUIDlow/GUIDhigh/optional counter, plain RET with caller ADD ESP,10hex. Null
   root returns null; equality compares both root+48/+4C DWORDs and returns root directly. On
   mismatch increment optional counter, require virtual+40 result2 for child traversal, enumerate
   using virtual+58 count and virtual+4C child accessor. Critical decompiler stack artifact:
   C5F51B/51C/51D prepush counter/GUIDhigh/GUIDlow for recursion; C5F51E LEA indexLocal after those
   pushes, C5F522 pushes its address for child accessor, C5F525 indirect accessor call consumes that
   one word; C5F527 pushes returned child then C5F528 recurses and C5F52D ADD ESP,10hex. Thus
   recursive arguments are child,low,high,counter; literal decompiler shifted/index-address
   arguments are not original behavior. Unknown virtual target/cleanup modeling is explicitly
   bounded; no guessed target override is installed. First successful depth-first child hit returns;
   no global absence-of-hashing claim. */

int * __cdecl
WorldObjects_FindGuidInSubtree(int *root,uint guidLow,uint guidHigh,uint *visitCounter)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  uint *puVar4;
  int iVar5;
  int *piVar6;
  int **guidLow_00;
  uint guidHigh_00;
  uint *visitCounter_00;
  uint *puVar7;
  
  puVar4 = visitCounter;
  uVar3 = guidHigh;
  uVar2 = guidLow;
  piVar1 = root;
  if ((root != (int *)0x0) && ((root[0x12] != guidLow || (root[0x13] != guidHigh)))) {
    if (visitCounter != (uint *)0x0) {
      *visitCounter = *visitCounter + 1;
    }
    iVar5 = (**(code **)(*root + 0x40))();
    if (iVar5 == 2) {
      root = (int *)0x0;
      piVar6 = (int *)(**(code **)(*piVar1 + 0x58))();
      if (root < piVar6) {
        do {
          guidLow_00 = &root;
          guidHigh_00 = uVar2;
          visitCounter_00 = (uint *)uVar3;
          puVar7 = puVar4;
          piVar6 = (int *)(**(code **)(*piVar1 + 0x4c))();
          piVar6 = WorldObjects_FindGuidInSubtree
                             (piVar6,(uint)guidLow_00,guidHigh_00,visitCounter_00);
          if (piVar6 != (int *)0x0) {
            return piVar6;
          }
          piVar6 = (int *)(**(code **)(*piVar1 + 0x58))(puVar7);
        } while (root < piVar6);
      }
    }
    return (int *)0x0;
  }
  return root;
}

