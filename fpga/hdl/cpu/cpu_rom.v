/*
 * cpu_rom generated by KCAsm at Fri Oct 26 22:03:44 PDT 2012
 */

module cpu_rom(address, instruction, clk);
input [9:0] address;
output [17:0] instruction;
input clk;
RAMB16_S18 ram_1024_x_18(
	.DI (16'b0),
	.DIP (2'b0),
	.EN (1'b1),
	.WE (1'b0),
	.SSR (1'b0),
	.CLK (clk),
	.ADDR (address),
	.DO (instruction[15:0]),
	.DOP (instruction[17:16])
);
/*	synthesis
	init_00 = "01410001014B01030004010300030103000201030001005D4001005C001E0004"
	init_01 = "40004021A000020C0003020C0002020C00010196013300030196013100020196"
	init_02 = "54324078A0000041542E4072A000003F542A4077A000003D5426406D004AB000"
	init_03 = "D120A0001210A000D1000106010601060106A00FA000004754364073A0000044"
	init_04 = "CF210F014020504A4F004F21A00000537020A00000531020A00000535020A000"
	init_05 = "020D01020080A000A000CF220F00CF220F01C02050534F004F22A000CF210F00"
	init_06 = "02050100000000CF00CF0322008000CF00CF032100CF00CF0100000000CF0320"
	init_07 = "0100000100CF030602000166000600CF00CF030500CF00CF030400CF00CF0303"
	init_08 = "02400100001000CF034902550155005500CF030802000111001100CF03070200"
	init_09 = "036D02060102003B00CF036C0200010C001300CF030B02000100003400CF030A"
	init_0A = "00CF031802000100000000CF03100204015500C100CF030E02000100000200CF"
	init_0B = "000200CF031D02040180000000CF031C02000110000000CF031A020001A80083"
	init_0C = "1400A000024600CF0100024600CF030B020001010034024600CF031E02040100"
	init_0D = "04000500142054D84508850100ED04000500141054D14508850100ED04000500"
	init_0E = "0904080058F1A00000FA54E64508850100ED04000500143054DF4508850100ED"
	init_0F = "0236C9000236C80009010800A0000236C8000236C9000236C8000906080240F3"
	init_10 = "03000204012503060203012503020201012503030200011B0101A0000236C800"
	init_11 = "0901552141009800080BA0000125038802080125030802060125030002050125"
	init_12 = "8A01013C0B000B001B200A00013C01000100011B0100A0000236D98009094122"
	init_13 = "4142090508015940A000011B010155344A088A01013C0B001B300A00552D4A07"
	init_14 = "A0000150020001F0001CA0000236D8C00236D9C00236D8C09C000C0B09070803"
	init_15 = "018101850181A000015D05000400031F015D152014101300015D05010400031F"
	init_16 = "556B470587010189060007000600060006001630018101810181018101810185"
	init_17 = "557B470887010189060007001650557447088701018906000700164001810185"
	init_18 = "C80409070803418F09050801598DA000018906000680A000018906000600A000"
	init_19 = "01C103CC020701C10340020601C10301020501BCA0000236C8040236C9040236"
	init_1A = "020201C11310020101C10308020B01C10300020A01C10306020901C103550208"
	init_1B = "01DE040101D30401A00001C10300020001C10300020401C10300020301C10310"
	init_1C = "01EE0608153001F901EE0608152001F901E7090001EE06070506056001FBA000"
	init_1D = "CF011F00A0000236DEF0DED0AEFD0D061D405EF08F11CF011F00A000020001F9"
	init_1E = "05000A00A00001DE040001DE040101D31490A0000236DEF0DE40AEFE5EF08F11"
	init_1F = "A00001DE040001D30400A0000205A00055EF5A608A0101E7090141F4090059F3"
	init_20 = "0240022E02000100A00001DE040001DE040101D30401A00001D3040101DE0401"
	init_21 = "1800560E4104A10082045E1FD4505A1BD450050E050E040E040E022602400240"
	init_22 = "CF011F00A00055808801548088140806C8011800A000F2808801F1800806C801"
	init_23 = "A000563C4FD08F010F00A00056374F1A8F010F00A000D1F08F01D2F08F060F06"
	init_24 = "0000000000000000A00056474D0A8D0102400D00A00056414EFA8E01023B0E00"
	init_25 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_26 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_27 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_28 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_29 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2A = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2B = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2C = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2D = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2E = "0000000000000000000000000000000000000000000000000000000000000000"
	init_2F = "0000000000000000000000000000000000000000000000000000000000000000"
	init_30 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_31 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_32 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_33 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_34 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_35 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_36 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_37 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_38 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_39 = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3A = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3B = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3C = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3D = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3E = "0000000000000000000000000000000000000000000000000000000000000000"
	init_3F = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_00 = "0C03CF3C03C3CF0C02A22D28834B2CB2A22A8BDBDBDBDBDE4B3330C30F3333FF"
	initp_01 = "EE0BBB830EF5E0D7835E0D782F3C03C0300C0300C0300C0300C0300C0300C030"
	initp_02 = "D7835E0FD78A8FFFFEC0C0C0B02EEE40C3B35E0D7A0E32E3352C30C30C30C32E"
	initp_03 = "B32ED7338B332E014B82052FC3C3CC8ECCB0C30C30C30C30C30C3BBB830EE2E2"
	initp_04 = "00000000000000000000000000B5CB5CB52D4A6648464A6935776ABFF0B332CC"
	initp_05 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_06 = "0000000000000000000000000000000000000000000000000000000000000000"
	initp_07 = "0000000000000000000000000000000000000000000000000000000000000000"
*/
defparam ram_1024_x_18.INIT_00 = 256'h01410001014B01030004010300030103000201030001005D4001005C001E0004;
defparam ram_1024_x_18.INIT_01 = 256'h40004021A000020C0003020C0002020C00010196013300030196013100020196;
defparam ram_1024_x_18.INIT_02 = 256'h54324078A0000041542E4072A000003F542A4077A000003D5426406D004AB000;
defparam ram_1024_x_18.INIT_03 = 256'hD120A0001210A000D1000106010601060106A00FA000004754364073A0000044;
defparam ram_1024_x_18.INIT_04 = 256'hCF210F014020504A4F004F21A00000537020A00000531020A00000535020A000;
defparam ram_1024_x_18.INIT_05 = 256'h020D01020080A000A000CF220F00CF220F01C02050534F004F22A000CF210F00;
defparam ram_1024_x_18.INIT_06 = 256'h02050100000000CF00CF0322008000CF00CF032100CF00CF0100000000CF0320;
defparam ram_1024_x_18.INIT_07 = 256'h0100000100CF030602000166000600CF00CF030500CF00CF030400CF00CF0303;
defparam ram_1024_x_18.INIT_08 = 256'h02400100001000CF034902550155005500CF030802000111001100CF03070200;
defparam ram_1024_x_18.INIT_09 = 256'h036D02060102003B00CF036C0200010C001300CF030B02000100003400CF030A;
defparam ram_1024_x_18.INIT_0A = 256'h00CF031802000100000000CF03100204015500C100CF030E02000100000200CF;
defparam ram_1024_x_18.INIT_0B = 256'h000200CF031D02040180000000CF031C02000110000000CF031A020001A80083;
defparam ram_1024_x_18.INIT_0C = 256'h1400A000024600CF0100024600CF030B020001010034024600CF031E02040100;
defparam ram_1024_x_18.INIT_0D = 256'h04000500142054D84508850100ED04000500141054D14508850100ED04000500;
defparam ram_1024_x_18.INIT_0E = 256'h0904080058F1A00000FA54E64508850100ED04000500143054DF4508850100ED;
defparam ram_1024_x_18.INIT_0F = 256'h0236C9000236C80009010800A0000236C8000236C9000236C8000906080240F3;
defparam ram_1024_x_18.INIT_10 = 256'h03000204012503060203012503020201012503030200011B0101A0000236C800;
defparam ram_1024_x_18.INIT_11 = 256'h0901552141009800080BA0000125038802080125030802060125030002050125;
defparam ram_1024_x_18.INIT_12 = 256'h8A01013C0B000B001B200A00013C01000100011B0100A0000236D98009094122;
defparam ram_1024_x_18.INIT_13 = 256'h4142090508015940A000011B010155344A088A01013C0B001B300A00552D4A07;
defparam ram_1024_x_18.INIT_14 = 256'hA0000150020001F0001CA0000236D8C00236D9C00236D8C09C000C0B09070803;
defparam ram_1024_x_18.INIT_15 = 256'h018101850181A000015D05000400031F015D152014101300015D05010400031F;
defparam ram_1024_x_18.INIT_16 = 256'h556B470587010189060007000600060006001630018101810181018101810185;
defparam ram_1024_x_18.INIT_17 = 256'h557B470887010189060007001650557447088701018906000700164001810185;
defparam ram_1024_x_18.INIT_18 = 256'hC80409070803418F09050801598DA000018906000680A000018906000600A000;
defparam ram_1024_x_18.INIT_19 = 256'h01C103CC020701C10340020601C10301020501BCA0000236C8040236C9040236;
defparam ram_1024_x_18.INIT_1A = 256'h020201C11310020101C10308020B01C10300020A01C10306020901C103550208;
defparam ram_1024_x_18.INIT_1B = 256'h01DE040101D30401A00001C10300020001C10300020401C10300020301C10310;
defparam ram_1024_x_18.INIT_1C = 256'h01EE0608153001F901EE0608152001F901E7090001EE06070506056001FBA000;
defparam ram_1024_x_18.INIT_1D = 256'hCF011F00A0000236DEF0DED0AEFD0D061D405EF08F11CF011F00A000020001F9;
defparam ram_1024_x_18.INIT_1E = 256'h05000A00A00001DE040001DE040101D31490A0000236DEF0DE40AEFE5EF08F11;
defparam ram_1024_x_18.INIT_1F = 256'hA00001DE040001D30400A0000205A00055EF5A608A0101E7090141F4090059F3;
defparam ram_1024_x_18.INIT_20 = 256'h0240022E02000100A00001DE040001DE040101D30401A00001D3040101DE0401;
defparam ram_1024_x_18.INIT_21 = 256'h1800560E4104A10082045E1FD4505A1BD450050E050E040E040E022602400240;
defparam ram_1024_x_18.INIT_22 = 256'hCF011F00A00055808801548088140806C8011800A000F2808801F1800806C801;
defparam ram_1024_x_18.INIT_23 = 256'hA000563C4FD08F010F00A00056374F1A8F010F00A000D1F08F01D2F08F060F06;
defparam ram_1024_x_18.INIT_24 = 256'h0000000000000000A00056474D0A8D0102400D00A00056414EFA8E01023B0E00;
defparam ram_1024_x_18.INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_00 = 256'h0C03CF3C03C3CF0C02A22D28834B2CB2A22A8BDBDBDBDBDE4B3330C30F3333FF;
defparam ram_1024_x_18.INITP_01 = 256'hEE0BBB830EF5E0D7835E0D782F3C03C0300C0300C0300C0300C0300C0300C030;
defparam ram_1024_x_18.INITP_02 = 256'hD7835E0FD78A8FFFFEC0C0C0B02EEE40C3B35E0D7A0E32E3352C30C30C30C32E;
defparam ram_1024_x_18.INITP_03 = 256'hB32ED7338B332E014B82052FC3C3CC8ECCB0C30C30C30C30C30C3BBB830EE2E2;
defparam ram_1024_x_18.INITP_04 = 256'h00000000000000000000000000B5CB5CB52D4A6648464A6935776ABFF0B332CC;
defparam ram_1024_x_18.INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
// synthesis attribute INIT_00 of ram_1024_x_18 is "01410001014B01030004010300030103000201030001005D4001005C001E0004"
// synthesis attribute INIT_01 of ram_1024_x_18 is "40004021A000020C0003020C0002020C00010196013300030196013100020196"
// synthesis attribute INIT_02 of ram_1024_x_18 is "54324078A0000041542E4072A000003F542A4077A000003D5426406D004AB000"
// synthesis attribute INIT_03 of ram_1024_x_18 is "D120A0001210A000D1000106010601060106A00FA000004754364073A0000044"
// synthesis attribute INIT_04 of ram_1024_x_18 is "CF210F014020504A4F004F21A00000537020A00000531020A00000535020A000"
// synthesis attribute INIT_05 of ram_1024_x_18 is "020D01020080A000A000CF220F00CF220F01C02050534F004F22A000CF210F00"
// synthesis attribute INIT_06 of ram_1024_x_18 is "02050100000000CF00CF0322008000CF00CF032100CF00CF0100000000CF0320"
// synthesis attribute INIT_07 of ram_1024_x_18 is "0100000100CF030602000166000600CF00CF030500CF00CF030400CF00CF0303"
// synthesis attribute INIT_08 of ram_1024_x_18 is "02400100001000CF034902550155005500CF030802000111001100CF03070200"
// synthesis attribute INIT_09 of ram_1024_x_18 is "036D02060102003B00CF036C0200010C001300CF030B02000100003400CF030A"
// synthesis attribute INIT_0A of ram_1024_x_18 is "00CF031802000100000000CF03100204015500C100CF030E02000100000200CF"
// synthesis attribute INIT_0B of ram_1024_x_18 is "000200CF031D02040180000000CF031C02000110000000CF031A020001A80083"
// synthesis attribute INIT_0C of ram_1024_x_18 is "1400A000024600CF0100024600CF030B020001010034024600CF031E02040100"
// synthesis attribute INIT_0D of ram_1024_x_18 is "04000500142054D84508850100ED04000500141054D14508850100ED04000500"
// synthesis attribute INIT_0E of ram_1024_x_18 is "0904080058F1A00000FA54E64508850100ED04000500143054DF4508850100ED"
// synthesis attribute INIT_0F of ram_1024_x_18 is "0236C9000236C80009010800A0000236C8000236C9000236C8000906080240F3"
// synthesis attribute INIT_10 of ram_1024_x_18 is "03000204012503060203012503020201012503030200011B0101A0000236C800"
// synthesis attribute INIT_11 of ram_1024_x_18 is "0901552141009800080BA0000125038802080125030802060125030002050125"
// synthesis attribute INIT_12 of ram_1024_x_18 is "8A01013C0B000B001B200A00013C01000100011B0100A0000236D98009094122"
// synthesis attribute INIT_13 of ram_1024_x_18 is "4142090508015940A000011B010155344A088A01013C0B001B300A00552D4A07"
// synthesis attribute INIT_14 of ram_1024_x_18 is "A0000150020001F0001CA0000236D8C00236D9C00236D8C09C000C0B09070803"
// synthesis attribute INIT_15 of ram_1024_x_18 is "018101850181A000015D05000400031F015D152014101300015D05010400031F"
// synthesis attribute INIT_16 of ram_1024_x_18 is "556B470587010189060007000600060006001630018101810181018101810185"
// synthesis attribute INIT_17 of ram_1024_x_18 is "557B470887010189060007001650557447088701018906000700164001810185"
// synthesis attribute INIT_18 of ram_1024_x_18 is "C80409070803418F09050801598DA000018906000680A000018906000600A000"
// synthesis attribute INIT_19 of ram_1024_x_18 is "01C103CC020701C10340020601C10301020501BCA0000236C8040236C9040236"
// synthesis attribute INIT_1A of ram_1024_x_18 is "020201C11310020101C10308020B01C10300020A01C10306020901C103550208"
// synthesis attribute INIT_1B of ram_1024_x_18 is "01DE040101D30401A00001C10300020001C10300020401C10300020301C10310"
// synthesis attribute INIT_1C of ram_1024_x_18 is "01EE0608153001F901EE0608152001F901E7090001EE06070506056001FBA000"
// synthesis attribute INIT_1D of ram_1024_x_18 is "CF011F00A0000236DEF0DED0AEFD0D061D405EF08F11CF011F00A000020001F9"
// synthesis attribute INIT_1E of ram_1024_x_18 is "05000A00A00001DE040001DE040101D31490A0000236DEF0DE40AEFE5EF08F11"
// synthesis attribute INIT_1F of ram_1024_x_18 is "A00001DE040001D30400A0000205A00055EF5A608A0101E7090141F4090059F3"
// synthesis attribute INIT_20 of ram_1024_x_18 is "0240022E02000100A00001DE040001DE040101D30401A00001D3040101DE0401"
// synthesis attribute INIT_21 of ram_1024_x_18 is "1800560E4104A10082045E1FD4505A1BD450050E050E040E040E022602400240"
// synthesis attribute INIT_22 of ram_1024_x_18 is "CF011F00A00055808801548088140806C8011800A000F2808801F1800806C801"
// synthesis attribute INIT_23 of ram_1024_x_18 is "A000563C4FD08F010F00A00056374F1A8F010F00A000D1F08F01D2F08F060F06"
// synthesis attribute INIT_24 of ram_1024_x_18 is "0000000000000000A00056474D0A8D0102400D00A00056414EFA8E01023B0E00"
// synthesis attribute INIT_25 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_26 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_27 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_28 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_29 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2A of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2B of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2C of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2D of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2E of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2F of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_30 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_31 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_32 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_33 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_34 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_35 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_36 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_37 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_38 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_39 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3A of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3B of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3C of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3D of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3E of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3F of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_00 of ram_1024_x_18 is "0C03CF3C03C3CF0C02A22D28834B2CB2A22A8BDBDBDBDBDE4B3330C30F3333FF"
// synthesis attribute INITP_01 of ram_1024_x_18 is "EE0BBB830EF5E0D7835E0D782F3C03C0300C0300C0300C0300C0300C0300C030"
// synthesis attribute INITP_02 of ram_1024_x_18 is "D7835E0FD78A8FFFFEC0C0C0B02EEE40C3B35E0D7A0E32E3352C30C30C30C32E"
// synthesis attribute INITP_03 of ram_1024_x_18 is "B32ED7338B332E014B82052FC3C3CC8ECCB0C30C30C30C30C30C3BBB830EE2E2"
// synthesis attribute INITP_04 of ram_1024_x_18 is "00000000000000000000000000B5CB5CB52D4A6648464A6935776ABFF0B332CC"
// synthesis attribute INITP_05 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_06 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_07 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
endmodule