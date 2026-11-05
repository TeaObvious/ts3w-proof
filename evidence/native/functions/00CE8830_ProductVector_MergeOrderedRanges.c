/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical cdecl7stackwords:
   leftbegin,leftend,rightbegin,rightend,outcursor,mode,optionalFilter; plainRET,EAXfinal
   outputcursor. Complete55instruction mergecaller. Loads left productEDI and rightproductEAX;
   pushes mode,loads filterECX,CALLCE8210,ADDESP4,TESTAL. True selects right, false left; equal
   comparator therefore preserves left range order. Copies remaining ranges using actualmemmoveIAT
   F96688. This is the bounded actual comparator consumer, not a claim entire native sort
   allocation/error policy matches LINQ. */

void * __cdecl
ProductVector_MergeOrderedRanges
          (void *leftBegin,void *leftEnd,void *rightBegin,void *rightEnd,void *outCursor,uint mode,
          void *optionalFilter)

{
  bool bVar1;
  void *pvVar2;
  
  while ((leftBegin != leftEnd && (rightBegin != rightEnd))) {
    bVar1 = ProductSort_IsBefore(*(void **)rightBegin,*(void **)leftBegin,optionalFilter,mode);
    if (bVar1) {
      *(undefined4 *)outCursor = *(undefined4 *)rightBegin;
      rightBegin = (void *)((int)rightBegin + 4);
    }
    else {
      *(undefined4 *)outCursor = *(undefined4 *)leftBegin;
      leftBegin = (void *)((int)leftBegin + 4);
    }
    outCursor = (void *)((int)outCursor + 4);
  }
  pvVar2 = memmove(outCursor,leftBegin,(int)leftEnd - (int)leftBegin);
  pvVar2 = memmove((void *)((int)pvVar2 + ((int)leftEnd - (int)leftBegin >> 2) * 4),rightBegin,
                   (int)rightEnd - (int)rightBegin);
  return (void *)((int)pvVar2 + ((int)rightEnd - (int)rightBegin >> 2) * 4);
}

