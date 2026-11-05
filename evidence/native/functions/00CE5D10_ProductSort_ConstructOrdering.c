/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical thiscall ECXoutFunctor,familyDWORD,optionalFilter pointer; everyRET8, MOV
   EAX,ECX retained through ALL return paths, EAXsame outputpointer. Writes mode0 thenfilterpointer.
   Family4/nullfilter retainsmode0; family4withspecialfilter20==EFFFFFFF choosesmode1
   whenfilter18AND1C==FFFFFFFF else2. Otherfamily4 chooses3. Families14or23 choose4, allothers3.
   Prior void prototype hid real constructor output used by CEA820. */

void * __thiscall ProductSort_ConstructOrdering(void *this,uint family,void *optionalFilter)

{
  *(undefined4 *)this = 0;
  *(void **)((int)this + 4) = optionalFilter;
  if (family == 4) {
    if (optionalFilter == (void *)0x0) {
      return this;
    }
    if (*(int *)((int)optionalFilter + 0x20) == -0x10000001) {
      if ((*(uint *)((int)optionalFilter + 0x18) & *(uint *)((int)optionalFilter + 0x1c)) ==
          0xffffffff) {
        *(undefined4 *)this = 1;
        return this;
      }
      *(undefined4 *)this = 2;
      return this;
    }
  }
  else if ((family == 0xe) || (family == 0x17)) {
    *(undefined4 *)this = 4;
    return this;
  }
  *(undefined4 *)this = 3;
  return this;
}

