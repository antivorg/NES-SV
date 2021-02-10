/*
*   Addressing modes prefix:
*   - a : accumulator
*   - abs : absolute
*   - i : imediate
*   - imp : implied
*   - ind : indirect
*   - rel : relative
*   - zpg : zero page
*   - x : x-indexed
*   - y : y-indexed
*/

package opcodes;

    typedef enum logic [7:0] {
        iADC = 8'd69
        // Remaining opcodes
    } codes;

endpackage