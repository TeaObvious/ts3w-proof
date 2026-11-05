/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 bounded custom-rig lookup. Receiver ECX, raw name DWORD Stack4, pointer result EAX, RET4;
   existing inferred int-pointer metadata is preserved without asserting a complete class type.
   Requires receiver ready byte at0xDD nonzero. Scans existing vector begin+0xC/end+0x10
   in0x110-byte steps and returns the first row whose raw DWORD name at0 equals the supplied word;
   otherwise returns null. Zero is a valid compared name. No string conversion, hashing, IO,
   allocation, load, catch or initialization occurs in this helper. Readiness producer and catalog
   construction/lifetime are not established here. Analyst name and previously empty PLATE only;
   existing ABI, references, instructions and bytes are preserved. */

int * __thiscall CustomLightRigCatalog_FindReadyName(void *this,int param_1)

{
  int *piVar1;
  
  if (*(char *)((int)this + 0xdd) != '\0') {
    for (piVar1 = *(int **)((int)this + 0xc); piVar1 != *(int **)((int)this + 0x10);
        piVar1 = piVar1 + 0x44) {
      if (*piVar1 == param_1) {
        return piVar1;
      }
    }
  }
  return (int *)0x0;
}

