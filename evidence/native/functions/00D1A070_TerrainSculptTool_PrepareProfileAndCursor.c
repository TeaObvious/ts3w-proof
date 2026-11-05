/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 thiscallECXtool,noargs/plainRETvoid. RequiresselectedbrushD4; updates sound/resource
   cursor when operationchanges; atD1A0EF pushes
   allocate1,outfieldD0,preserve1,productprofilekeyD4+8;C88FF0callerfourwordscdecl+ADDESP10hex;thenD190E0samekey.
   ALloadresult not separately tested here. Existing profile ownership/cleanup supplied by selected
   surface paths,not inferredfromplainmemory alias. */

void __thiscall TerrainSculptTool_PrepareProfileAndCursor(void *this)

{
  int iVar1;
  int *piVar2;
  undefined1 *puVar3;
  
  piVar2 = (int *)(*(int *)((int)this + 0x19c) + 0x90);
  *(int **)((int)this + 0xd4) = piVar2;
  *(float *)((int)this + 200) = *(float *)(*(int *)((int)this + 0x19c) + 0xac) * _DAT_0118e4a0;
  *(float *)((int)this + 0xd8) = (1.0 - DAT_0118e4a4 * 0.1) * 12.0 + 1.0;
  iVar1 = *piVar2;
  if (iVar1 != *(int *)((int)this + 0x198)) {
    *(int *)((int)this + 0x198) = iVar1;
    puVar3 = FUN_00d19070(iVar1);
    *(undefined1 **)((int)this + 0xcc) = puVar3;
    FUN_00d19d70((int)this);
  }
  ImageResource_LoadProfileSurface
            ((undefined *)(*(int *)((int)this + 0xd4) + 8),true,(undefined *)((int)this + 0xd0),true
            );
  TerrainBrush_SelectSquareCursorFromProfileKey(this,(undefined *)(*(int *)((int)this + 0xd4) + 8));
  return;
}

