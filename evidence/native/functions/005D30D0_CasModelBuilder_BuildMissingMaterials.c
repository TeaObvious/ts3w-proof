/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 missing-material dispatcher. Physical ECX builder plus two stack DWORDs, RET08; no
   declared result. Snapshot begin/end at builder+134/+138, iterate0D0-byte records. Call005D05B0
   only when record+70 is null, passing current record and both incoming DWORDs. Set record+74 byte
   to1 after the conditional call for every visited record, including one with a preexisting
   material. End pointer is captured before traversal, with no count/cancellation/yield or Vulkan
   cache protocol in this complete body. */

void __thiscall CasModelBuilder_BuildMissingMaterials(void *this,int param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)((int)this + 0x138);
  for (iVar2 = *(int *)((int)this + 0x134); iVar2 != iVar1; iVar2 = iVar2 + 0xd0) {
    if (*(int *)(iVar2 + 0x70) == 0) {
      CasModelBuilder_BuildMaterial(this,iVar2,param_1,param_2);
    }
                    /* Always set record+74 after conditional creation, including records whose +70
                       material was already present. */
    *(undefined1 *)(iVar2 + 0x74) = 1;
  }
  return;
}

