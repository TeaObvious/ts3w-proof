/* Original ScriptCore PC1.67; identity: ../../reference-inputs.json.
   Fresh ILSpy decompilation; full selected methods or full selected type.
   Analyst: Original P/Invoke returns Int32. Native entry D83020 and cross-entry continuation D83038 normally return zero-extended reader status, never negative. */

using System.Runtime.InteropServices;

[DllImport("Sims3Common.dll")]
public static extern int Serializer_ReadFastFields(object obj, PersistFastField[] fastFields, uint fastStreamHandle);
