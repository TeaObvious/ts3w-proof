/* Analyst translation of the complete archived shader arithmetic, NOT Ghidra
 * native pseudocode. Program10828 uses live c0 input; no literal0.4 is defined
 * in its bytecode. Abstract sample/RCP arithmetic below does not promise native
 * MAD contraction, reciprocal approximation, GPU precision or bitwise parity.
 */
void ParametricToneProgram10828(const float sampledRGBA[4], const float c0[4], float outputRGBA[4])
{
    for (int channel = 0; channel != 3; ++channel)
    {
        float numerator = c0[channel] * sampledRGBA[channel] + sampledRGBA[channel];
        float denominator = sampledRGBA[channel] + c0[channel];
        float reciprocal = 1.0f / denominator;
        outputRGBA[channel] = numerator * reciprocal;
    }
    outputRGBA[3] = 0.0f;
}
