require_rv64;
FILE* log_file = p->get_log_file();
// add rd, rs1, rs2
// this is equivalent to rd = rs1 + rs2
if(pc == 0x10218) { // This specific address is invoking SIMD
    reg_t x = RS1; // Read rs1
    reg_t y = RS2; // Read rs2
    reg_t z = 0; // Initialize the sum to be 0
    // Simulate the parallelism of SIMD
    for(int i = 7; i >= 0; i--) {
        // Performing element-wise addition
        z += (uint8_t)((x >> (i << 3)) + (y >> (i << 3)));
        z <<= 8 * (i != 0);
    }
    // Report execution of our newly added tvadd
    fprintf(log_file, "OUR ADD: %ld + %ld = %ld!!!!!\n", x, y, z);
    // Write the result to the register
    WRITE_RD(sext_xlen(z));
} else {
    // Performing normal addition 
    WRITE_RD(sext_xlen(RS1 + RS2));
}


