# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[004dd970, 004dd974]]
signature=uint __cdecl Stream_ReadUtf16UnitsEndian(int * param_1, ushort * param_2, uint unitCount, uint endianFlag)
PLATE
PC1.67 Room modern-array join: existing actual5byte/1instruction thunk4DD970..4DD974 directly JMPs4DD920 Stream_ReadUtf16UnitsEndian. Preserve inherited genuine name/namespace/signature. Target's four physical cdecl DWORDs are stream,output,UInt32unitCount,endian; selected C07C3B caller pushes all four and cleans10hex. AL success and exact requested byte-count rules are the target's actual contract. This thunk is its own5byte canonical address if not already published, not target body duplication.

Actual Ghidra thunk-C rendering limit, verified after the target-local ABI correction: decompiling this5byte JMP thunk expands the target body but does not inherit that target function's callsite-local indirect-read pop8 override. It still displays an output-pointer comparison with1 where physical target instructions test fourth stackDWORD endianFlag. This is a decompiler-context artifact, not the executed thunk or byte-order rule. The unchanged five original bytes only JMP to 004dd920. Its complete current annotated target C correctly tests endianFlag!=1 after the separately proven local override at 4DD939; target Listing/caller-clean four-word ABI govern. Preserve this actual unedited tool C with this note. No thunk-local override outside its5byte body, foreign callee/vtable type, original byte, function definition or prototype is changed.

004dd970  e9abffffff  JMP 0x004dd920
