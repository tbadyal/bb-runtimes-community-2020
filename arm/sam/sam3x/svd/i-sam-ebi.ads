--
--  Copyright (C) 2020, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with System;

package Interfaces.SAM.EBI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   type CFG_PAGESIZE_Field is
     (--  Main area 512 Bytes + Spare area 16 Bytes = 528 Bytes
      PS512_16,
      --  Main area 1024 Bytes + Spare area 32 Bytes = 1056 Bytes
      PS1024_32,
      --  Main area 2048 Bytes + Spare area 64 Bytes = 2112 Bytes
      PS2048_64,
      --  Main area 4096 Bytes + Spare area 128 Bytes = 4224 Bytes
      PS4096_128)
     with Size => 2;
   for CFG_PAGESIZE_Field use
     (PS512_16 => 0,
      PS1024_32 => 1,
      PS2048_64 => 2,
      PS4096_128 => 3);

   subtype SMC_CFG_DTOCYC_Field is Interfaces.SAM.UInt4;

   --  Data Timeout Multiplier
   type CFG_DTOMUL_Field is
     (--  DTOCYC
      X1,
      --  DTOCYC x 16
      X16,
      --  DTOCYC x 128
      X128,
      --  DTOCYC x 256
      X256,
      --  DTOCYC x 1024
      X1024,
      --  DTOCYC x 4096
      X4096,
      --  DTOCYC x 65536
      X65536,
      --  DTOCYC x 1048576
      X1048576)
     with Size => 3;
   for CFG_DTOMUL_Field use
     (X1 => 0,
      X16 => 1,
      X128 => 2,
      X256 => 3,
      X1024 => 4,
      X4096 => 5,
      X65536 => 6,
      X1048576 => 7);

   --  SMC NFC Configuration Register
   type SMC_CFG_Register is record
      PAGESIZE       : CFG_PAGESIZE_Field := Interfaces.SAM.EBI.PS512_16;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write Spare Area
      WSPARE         : Boolean := False;
      --  Read Spare Area
      RSPARE         : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.SAM.UInt2 := 16#0#;
      --  Rising/Falling Edge Detection Control
      EDGECTRL       : Boolean := False;
      --  Ready/Busy Signal Edge Detection
      RBEDGE         : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  Data Timeout Cycle Number
      DTOCYC         : SMC_CFG_DTOCYC_Field := 16#0#;
      --  Data Timeout Multiplier
      DTOMUL         : CFG_DTOMUL_Field := Interfaces.SAM.EBI.X1;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_CFG_Register use record
      PAGESIZE       at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      WSPARE         at 0 range 8 .. 8;
      RSPARE         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      EDGECTRL       at 0 range 12 .. 12;
      RBEDGE         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DTOCYC         at 0 range 16 .. 19;
      DTOMUL         at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  SMC NFC Control Register
   type SMC_CTRL_Register is record
      --  Write-only. NAND Flash Controller Enable
      NFCEN         : Boolean := False;
      --  Write-only. NAND Flash Controller Disable
      NFCDIS        : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_CTRL_Register use record
      NFCEN         at 0 range 0 .. 0;
      NFCDIS        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SMC_SR_NFCSID_Field is Interfaces.SAM.UInt3;

   --  SMC NFC Status Register
   type SMC_SR_Register is record
      --  Read-only. NAND Flash Controller status (this field cannot be reset)
      SMCSTS         : Boolean;
      --  unspecified
      Reserved_1_3   : Interfaces.SAM.UInt3;
      --  Read-only. Selected Ready Busy Rising Edge Detected
      RB_RISE        : Boolean;
      --  Read-only. Selected Ready Busy Falling Edge Detected
      RB_FALL        : Boolean;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2;
      --  Read-only. NFC Busy (this field cannot be reset)
      NFCBUSY        : Boolean;
      --  unspecified
      Reserved_9_10  : Interfaces.SAM.UInt2;
      --  Read-only. NFC Write/Read Operation (this field cannot be reset)
      NFCWR          : Boolean;
      --  Read-only. NFC Chip Select ID (this field cannot be reset)
      NFCSID         : SMC_SR_NFCSID_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit;
      --  Read-only. NFC Data Transfer Terminated
      XFRDONE        : Boolean;
      --  Read-only. Command Done
      CMDDONE        : Boolean;
      --  unspecified
      Reserved_18_19 : Interfaces.SAM.UInt2;
      --  Read-only. Data Timeout Error
      DTOE           : Boolean;
      --  Read-only. Undefined Area Error
      UNDEF          : Boolean;
      --  Read-only. Accessing While Busy
      AWB            : Boolean;
      --  Read-only. NFC Access Size Error
      NFCASE         : Boolean;
      --  Read-only. Ready/Busy Line 0 Edge Detected
      RB_EDGE0       : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_SR_Register use record
      SMCSTS         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      RB_RISE        at 0 range 4 .. 4;
      RB_FALL        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NFCBUSY        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      NFCWR          at 0 range 11 .. 11;
      NFCSID         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      XFRDONE        at 0 range 16 .. 16;
      CMDDONE        at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      DTOE           at 0 range 20 .. 20;
      UNDEF          at 0 range 21 .. 21;
      AWB            at 0 range 22 .. 22;
      NFCASE         at 0 range 23 .. 23;
      RB_EDGE0       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  SMC NFC Interrupt Enable Register
   type SMC_IER_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Ready Busy Rising Edge Detection Interrupt Enable
      RB_RISE        : Boolean := False;
      --  Write-only. Ready Busy Falling Edge Detection Interrupt Enable
      RB_FALL        : Boolean := False;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10 := 16#0#;
      --  Write-only. Transfer Done Interrupt Enable
      XFRDONE        : Boolean := False;
      --  Write-only. Command Done Interrupt Enable
      CMDDONE        : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Data Timeout Error Interrupt Enable
      DTOE           : Boolean := False;
      --  Write-only. Undefined Area Access Interrupt Enable
      UNDEF          : Boolean := False;
      --  Write-only. Accessing While Busy Interrupt Enable
      AWB            : Boolean := False;
      --  Write-only. NFC Access Size Error Interrupt Enable
      NFCASE         : Boolean := False;
      --  Write-only. Ready/Busy Line 0 Interrupt Enable
      RB_EDGE0       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_IER_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RB_RISE        at 0 range 4 .. 4;
      RB_FALL        at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      XFRDONE        at 0 range 16 .. 16;
      CMDDONE        at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      DTOE           at 0 range 20 .. 20;
      UNDEF          at 0 range 21 .. 21;
      AWB            at 0 range 22 .. 22;
      NFCASE         at 0 range 23 .. 23;
      RB_EDGE0       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  SMC NFC Interrupt Disable Register
   type SMC_IDR_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Ready Busy Rising Edge Detection Interrupt Disable
      RB_RISE        : Boolean := False;
      --  Write-only. Ready Busy Falling Edge Detection Interrupt Disable
      RB_FALL        : Boolean := False;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10 := 16#0#;
      --  Write-only. Transfer Done Interrupt Disable
      XFRDONE        : Boolean := False;
      --  Write-only. Command Done Interrupt Disable
      CMDDONE        : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Data Timeout Error Interrupt Disable
      DTOE           : Boolean := False;
      --  Write-only. Undefined Area Access Interrupt Disable
      UNDEF          : Boolean := False;
      --  Write-only. Accessing While Busy Interrupt Disable
      AWB            : Boolean := False;
      --  Write-only. NFC Access Size Error Interrupt Disable
      NFCASE         : Boolean := False;
      --  Write-only. Ready/Busy Line 0 Interrupt Disable
      RB_EDGE0       : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_IDR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RB_RISE        at 0 range 4 .. 4;
      RB_FALL        at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      XFRDONE        at 0 range 16 .. 16;
      CMDDONE        at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      DTOE           at 0 range 20 .. 20;
      UNDEF          at 0 range 21 .. 21;
      AWB            at 0 range 22 .. 22;
      NFCASE         at 0 range 23 .. 23;
      RB_EDGE0       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  SMC NFC Interrupt Mask Register
   type SMC_IMR_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.SAM.UInt4;
      --  Read-only. Ready Busy Rising Edge Detection Interrupt Mask
      RB_RISE        : Boolean;
      --  Read-only. Ready Busy Falling Edge Detection Interrupt Mask
      RB_FALL        : Boolean;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10;
      --  Read-only. Transfer Done Interrupt Mask
      XFRDONE        : Boolean;
      --  Read-only. Command Done Interrupt Mask
      CMDDONE        : Boolean;
      --  unspecified
      Reserved_18_19 : Interfaces.SAM.UInt2;
      --  Read-only. Data Timeout Error Interrupt Mask
      DTOE           : Boolean;
      --  Read-only. Undefined Area Access Interrupt Mask5
      UNDEF          : Boolean;
      --  Read-only. Accessing While Busy Interrupt Mask
      AWB            : Boolean;
      --  Read-only. NFC Access Size Error Interrupt Mask
      NFCASE         : Boolean;
      --  Read-only. Ready/Busy Line 0 Interrupt Mask
      RB_EDGE0       : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_IMR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RB_RISE        at 0 range 4 .. 4;
      RB_FALL        at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      XFRDONE        at 0 range 16 .. 16;
      CMDDONE        at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      DTOE           at 0 range 20 .. 20;
      UNDEF          at 0 range 21 .. 21;
      AWB            at 0 range 22 .. 22;
      NFCASE         at 0 range 23 .. 23;
      RB_EDGE0       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SMC_ADDR_ADDR_CYCLE0_Field is Interfaces.SAM.Byte;

   --  SMC NFC Address Cycle Zero Register
   type SMC_ADDR_Register is record
      --  NAND Flash Array Address cycle 0
      ADDR_CYCLE0   : SMC_ADDR_ADDR_CYCLE0_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ADDR_Register use record
      ADDR_CYCLE0   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SMC_BANK_BANK_Field is Interfaces.SAM.UInt3;

   --  SMC Bank Address Register
   type SMC_BANK_Register is record
      --  Bank Identifier
      BANK          : SMC_BANK_BANK_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_BANK_Register use record
      BANK          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SMC ECC Control Register
   type SMC_ECC_CTRL_Register is record
      --  Write-only. Reset ECC
      RST           : Boolean := False;
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_CTRL_Register use record
      RST           at 0 range 0 .. 0;
      SWRST         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  ECC Page Size
   type ECC_MD_ECC_PAGESIZE_Field is
     (--  Main area 512 Bytes + Spare area 16 Bytes = 528 Bytes
      PS512_16,
      --  Main area 1024 Bytes + Spare area 32 Bytes = 1056 Bytes
      PS1024_32,
      --  Main area 2048 Bytes + Spare area 64 Bytes = 2112 Bytes
      PS2048_64,
      --  Main area 4096 Bytes + Spare area 128 Bytes = 4224 Bytes
      PS4096_128)
     with Size => 2;
   for ECC_MD_ECC_PAGESIZE_Field use
     (PS512_16 => 0,
      PS1024_32 => 1,
      PS2048_64 => 2,
      PS4096_128 => 3);

   --  Type of Correction
   type ECC_MD_TYPCORREC_Field is
     (--  1 bit correction for a page of 512/1024/2048/4096 Bytes (for 8 or 16-bit
--  NAND Flash)
      CPAGE,
      --  1 bit correction for 256 Bytes of data for a page of 512/2048/4096 bytes
--  (for 8-bit NAND Flash only)
      C256B,
      --  1 bit correction for 512 Bytes of data for a page of 512/2048/4096 bytes
--  (for 8-bit NAND Flash only)
      C512B)
     with Size => 2;
   for ECC_MD_TYPCORREC_Field use
     (CPAGE => 0,
      C256B => 1,
      C512B => 2);

   --  SMC ECC Mode Register
   type SMC_ECC_MD_Register is record
      --  ECC Page Size
      ECC_PAGESIZE  : ECC_MD_ECC_PAGESIZE_Field :=
                       Interfaces.SAM.EBI.PS512_16;
      --  unspecified
      Reserved_2_3  : Interfaces.SAM.UInt2 := 16#0#;
      --  Type of Correction
      TYPCORREC     : ECC_MD_TYPCORREC_Field := Interfaces.SAM.EBI.CPAGE;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_MD_Register use record
      ECC_PAGESIZE  at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      TYPCORREC     at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SMC_ECC_SR1_ECCERR0_Field is Interfaces.SAM.UInt2;
   subtype SMC_ECC_SR1_ECCERR4_Field is Interfaces.SAM.UInt2;
   subtype SMC_ECC_SR1_ECCERR5_Field is Interfaces.SAM.UInt2;
   subtype SMC_ECC_SR1_ECCERR6_Field is Interfaces.SAM.UInt2;
   subtype SMC_ECC_SR1_ECCERR7_Field is Interfaces.SAM.UInt2;

   --  SMC ECC Status 1 Register
   type SMC_ECC_SR1_Register is record
      --  Read-only. Recoverable Error
      RECERR0        : Boolean;
      --  Read-only. ECC Error
      ECCERR0        : SMC_ECC_SR1_ECCERR0_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 256th and the
      --  511th bytes or the 512nd and the 1023rd bytes
      RECERR1        : Boolean;
      --  Read-only. ECC Error in the page between the 256th and the 511th
      --  bytes or between the 512nd and the 1023rd bytes
      ECCERR1        : Boolean;
      --  Read-only. Multiple Error in the page between the 256th and the 511th
      --  bytes or between the 512nd and the 1023rd bytes
      MULERR1        : Boolean;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 512nd and the
      --  767th bytes or between the 1024th and the 1535th bytes
      RECERR2        : Boolean;
      --  Read-only. ECC Error in the page between the 512nd and the 767th
      --  bytes or between the 1024th and the 1535th bytes
      ECCERR2        : Boolean;
      --  Read-only. Multiple Error in the page between the 512nd and the 767th
      --  bytes or between the 1024th and the 1535th bytes
      MULERR2        : Boolean;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 768th and the
      --  1023rd bytes or between the 1536th and the 2047th bytes
      RECERR3        : Boolean;
      --  Read-only. ECC Error in the page between the 768th and the 1023rd
      --  bytes or between the 1536th and the 2047th bytes
      ECCERR3        : Boolean;
      --  Read-only. Multiple Error in the page between the 768th and the
      --  1023rd bytes or between the 1536th and the 2047th bytes
      MULERR3        : Boolean;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 1024th and the
      --  1279th bytes or between the 2048th and the 2559th bytes
      RECERR4        : Boolean;
      --  Read-only. ECC Error in the page between the 1024th and the 1279th
      --  bytes or between the 2048th and the 2559th bytes
      ECCERR4        : SMC_ECC_SR1_ECCERR4_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 1280th and the
      --  1535th bytes or between the 2560th and the 3071st bytes
      RECERR5        : Boolean;
      --  Read-only. ECC Error in the page between the 1280th and the 1535th
      --  bytes or between the 2560th and the 3071st bytes
      ECCERR5        : SMC_ECC_SR1_ECCERR5_Field;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 1536th and the
      --  1791st bytes or between the 3072nd and the 3583rd bytes
      RECERR6        : Boolean;
      --  Read-only. ECC Error in the page between the 1536th and the 1791st
      --  bytes or between the 3072nd and the 3583rd bytes
      ECCERR6        : SMC_ECC_SR1_ECCERR6_Field;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 1792nd and the
      --  2047th bytes or between the 3584th and the 4095th bytes
      RECERR7        : Boolean;
      --  Read-only. ECC Error in the page between the 1792nd and the 2047th
      --  bytes or between the 3584th and the 4095th bytes
      ECCERR7        : SMC_ECC_SR1_ECCERR7_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.SAM.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_SR1_Register use record
      RECERR0        at 0 range 0 .. 0;
      ECCERR0        at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RECERR1        at 0 range 4 .. 4;
      ECCERR1        at 0 range 5 .. 5;
      MULERR1        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RECERR2        at 0 range 8 .. 8;
      ECCERR2        at 0 range 9 .. 9;
      MULERR2        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RECERR3        at 0 range 12 .. 12;
      ECCERR3        at 0 range 13 .. 13;
      MULERR3        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RECERR4        at 0 range 16 .. 16;
      ECCERR4        at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RECERR5        at 0 range 20 .. 20;
      ECCERR5        at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RECERR6        at 0 range 24 .. 24;
      ECCERR6        at 0 range 25 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      RECERR7        at 0 range 28 .. 28;
      ECCERR7        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype SMC_ECC_PR0_BITADDR_Field is Interfaces.SAM.UInt4;
   subtype SMC_ECC_PR0_WORDADDR_Field is Interfaces.SAM.UInt12;

   --  SMC ECC Parity 0 Register
   type SMC_ECC_PR0_Register is record
      --  Read-only. Bit Address
      BITADDR        : SMC_ECC_PR0_BITADDR_Field;
      --  Read-only. Word Address
      WORDADDR       : SMC_ECC_PR0_WORDADDR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR0_Register use record
      BITADDR        at 0 range 0 .. 3;
      WORDADDR       at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SMC_ECC_PR0_W9BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR0_W9BIT_WORDADDR_Field is Interfaces.SAM.UInt9;
   subtype SMC_ECC_PR0_W9BIT_NPARITY_Field is Interfaces.SAM.UInt12;

   --  SMC ECC Parity 0 Register
   type SMC_ECC_PR0_W9BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 512) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR0_W9BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 512) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR0_W9BIT_WORDADDR_Field;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR0_W9BIT_NPARITY_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR0_W9BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 11;
      NPARITY        at 0 range 12 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SMC_ECC_PR0_W8BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR0_W8BIT_WORDADDR_Field is Interfaces.SAM.Byte;
   subtype SMC_ECC_PR0_W8BIT_NPARITY_Field is Interfaces.SAM.UInt11;

   --  SMC ECC Parity 0 Register
   type SMC_ECC_PR0_W8BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR0_W8BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR0_W8BIT_WORDADDR_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR0_W8BIT_NPARITY_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR0_W8BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SMC_ECC_PR1_NPARITY_Field is Interfaces.SAM.UInt16;

   --  SMC ECC parity 1 Register
   type SMC_ECC_PR1_Register is record
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR1_NPARITY_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR1_Register use record
      NPARITY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SMC_ECC_PR1_W9BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR1_W9BIT_WORDADDR_Field is Interfaces.SAM.UInt9;
   subtype SMC_ECC_PR1_W9BIT_NPARITY_Field is Interfaces.SAM.UInt12;

   --  SMC ECC parity 1 Register
   type SMC_ECC_PR1_W9BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 512) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR1_W9BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 512) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR1_W9BIT_WORDADDR_Field;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR1_W9BIT_NPARITY_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR1_W9BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 11;
      NPARITY        at 0 range 12 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SMC_ECC_PR1_W8BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR1_W8BIT_WORDADDR_Field is Interfaces.SAM.Byte;
   subtype SMC_ECC_PR1_W8BIT_NPARITY_Field is Interfaces.SAM.UInt11;

   --  SMC ECC parity 1 Register
   type SMC_ECC_PR1_W8BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR1_W8BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR1_W8BIT_WORDADDR_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR1_W8BIT_NPARITY_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR1_W8BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SMC_ECC_SR2_ECCERR8_Field is Interfaces.SAM.UInt2;
   subtype SMC_ECC_SR2_ECCERR12_Field is Interfaces.SAM.UInt2;
   subtype SMC_ECC_SR2_ECCERR13_Field is Interfaces.SAM.UInt2;
   subtype SMC_ECC_SR2_ECCERR14_Field is Interfaces.SAM.UInt2;
   subtype SMC_ECC_SR2_ECCERR15_Field is Interfaces.SAM.UInt2;

   --  SMC ECC status 2 Register
   type SMC_ECC_SR2_Register is record
      --  Read-only. Recoverable Error in the page between the 2048th and the
      --  2303rd bytes
      RECERR8        : Boolean;
      --  Read-only. ECC Error in the page between the 2048th and the 2303rd
      --  bytes
      ECCERR8        : SMC_ECC_SR2_ECCERR8_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 2304th and the
      --  2559th bytes
      RECERR9        : Boolean;
      --  Read-only. ECC Error in the page between the 2304th and the 2559th
      --  bytes
      ECCERR9        : Boolean;
      --  Read-only. Multiple Error in the page between the 2304th and the
      --  2559th bytes
      MULERR9        : Boolean;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 2560th and the
      --  2815th bytes
      RECERR10       : Boolean;
      --  Read-only. ECC Error in the page between the 2560th and the 2815th
      --  bytes
      ECCERR10       : Boolean;
      --  Read-only. Multiple Error in the page between the 2560th and the
      --  2815th bytes
      MULERR10       : Boolean;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 2816th and the
      --  3071st bytes
      RECERR11       : Boolean;
      --  Read-only. ECC Error in the page between the 2816th and the 3071st
      --  bytes
      ECCERR11       : Boolean;
      --  Read-only. Multiple Error in the page between the 2816th and the
      --  3071st bytes
      MULERR11       : Boolean;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 3072nd and the
      --  3327th bytes
      RECERR12       : Boolean;
      --  Read-only. ECC Error in the page between the 3072nd and the 3327th
      --  bytes
      ECCERR12       : SMC_ECC_SR2_ECCERR12_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 3328th and the
      --  3583rd bytes
      RECERR13       : Boolean;
      --  Read-only. ECC Error in the page between the 3328th and the 3583rd
      --  bytes
      ECCERR13       : SMC_ECC_SR2_ECCERR13_Field;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 3584th and the
      --  3839th bytes
      RECERR14       : Boolean;
      --  Read-only. ECC Error in the page between the 3584th and the 3839th
      --  bytes
      ECCERR14       : SMC_ECC_SR2_ECCERR14_Field;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit;
      --  Read-only. Recoverable Error in the page between the 3840th and the
      --  4095th bytes
      RECERR15       : Boolean;
      --  Read-only. ECC Error in the page between the 3840th and the 4095th
      --  bytes
      ECCERR15       : SMC_ECC_SR2_ECCERR15_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.SAM.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_SR2_Register use record
      RECERR8        at 0 range 0 .. 0;
      ECCERR8        at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RECERR9        at 0 range 4 .. 4;
      ECCERR9        at 0 range 5 .. 5;
      MULERR9        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RECERR10       at 0 range 8 .. 8;
      ECCERR10       at 0 range 9 .. 9;
      MULERR10       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RECERR11       at 0 range 12 .. 12;
      ECCERR11       at 0 range 13 .. 13;
      MULERR11       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RECERR12       at 0 range 16 .. 16;
      ECCERR12       at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RECERR13       at 0 range 20 .. 20;
      ECCERR13       at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RECERR14       at 0 range 24 .. 24;
      ECCERR14       at 0 range 25 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      RECERR15       at 0 range 28 .. 28;
      ECCERR15       at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ECC_PR_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype ECC_PR_WORDADDR_Field is Interfaces.SAM.UInt9;
   subtype ECC_PR_NPARITY_Field is Interfaces.SAM.UInt12;

   --  SMC ECC parity 2 Register
   type ECC_PR_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 512) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : ECC_PR_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 512) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : ECC_PR_WORDADDR_Field;
      --  Read-only. Parity N
      NPARITY        : ECC_PR_NPARITY_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_PR_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 11;
      NPARITY        at 0 range 12 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SMC_ECC_PR2_W8BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR2_W8BIT_WORDADDR_Field is Interfaces.SAM.Byte;
   subtype SMC_ECC_PR2_W8BIT_NPARITY_Field is Interfaces.SAM.UInt11;

   --  SMC ECC parity 2 Register
   type SMC_ECC_PR2_W8BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR2_W8BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR2_W8BIT_WORDADDR_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR2_W8BIT_NPARITY_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR2_W8BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SMC_ECC_PR3_W8BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR3_W8BIT_WORDADDR_Field is Interfaces.SAM.Byte;
   subtype SMC_ECC_PR3_W8BIT_NPARITY_Field is Interfaces.SAM.UInt11;

   --  SMC ECC parity 3 Register
   type SMC_ECC_PR3_W8BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR3_W8BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR3_W8BIT_WORDADDR_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR3_W8BIT_NPARITY_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR3_W8BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SMC_ECC_PR4_W8BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR4_W8BIT_WORDADDR_Field is Interfaces.SAM.Byte;
   subtype SMC_ECC_PR4_W8BIT_NPARITY_Field is Interfaces.SAM.UInt11;

   --  SMC ECC parity 4 Register
   type SMC_ECC_PR4_W8BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR4_W8BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR4_W8BIT_WORDADDR_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR4_W8BIT_NPARITY_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR4_W8BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SMC_ECC_PR5_W8BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR5_W8BIT_WORDADDR_Field is Interfaces.SAM.Byte;
   subtype SMC_ECC_PR5_W8BIT_NPARITY_Field is Interfaces.SAM.UInt11;

   --  SMC ECC parity 5 Register
   type SMC_ECC_PR5_W8BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR5_W8BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR5_W8BIT_WORDADDR_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR5_W8BIT_NPARITY_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR5_W8BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SMC_ECC_PR6_W8BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR6_W8BIT_WORDADDR_Field is Interfaces.SAM.Byte;
   subtype SMC_ECC_PR6_W8BIT_NPARITY_Field is Interfaces.SAM.UInt11;

   --  SMC ECC parity 6 Register
   type SMC_ECC_PR6_W8BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR6_W8BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR6_W8BIT_WORDADDR_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR6_W8BIT_NPARITY_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR6_W8BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SMC_ECC_PR7_W8BIT_BITADDR_Field is Interfaces.SAM.UInt3;
   subtype SMC_ECC_PR7_W8BIT_WORDADDR_Field is Interfaces.SAM.Byte;
   subtype SMC_ECC_PR7_W8BIT_NPARITY_Field is Interfaces.SAM.UInt11;

   --  SMC ECC parity 7 Register
   type SMC_ECC_PR7_W8BIT_Register is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : SMC_ECC_PR7_W8BIT_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : SMC_ECC_PR7_W8BIT_WORDADDR_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : SMC_ECC_PR7_W8BIT_NPARITY_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_ECC_PR7_W8BIT_Register use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype ECC_PR_WORDADDR_Field_1 is Interfaces.SAM.Byte;
   subtype ECC_PR_NPARITY_Field_1 is Interfaces.SAM.UInt11;

   --  SMC ECC parity 8 Register
   type ECC_PR_Register_1 is record
      --  Read-only. Corrupted Bit Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      BITADDR        : ECC_PR_BITADDR_Field;
      --  Read-only. Corrupted Word Address in the Page between (i x 256) and
      --  ((i + 1) x 512) - 1) Bytes
      WORDADDR       : ECC_PR_WORDADDR_Field_1;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit;
      --  Read-only. Parity N
      NPARITY        : ECC_PR_NPARITY_Field_1;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_PR_Register_1 use record
      BITADDR        at 0 range 0 .. 2;
      WORDADDR       at 0 range 3 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NPARITY        at 0 range 12 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SETUP_NWE_SETUP_Field is Interfaces.SAM.UInt6;
   subtype SETUP_NCS_WR_SETUP_Field is Interfaces.SAM.UInt6;
   subtype SETUP_NRD_SETUP_Field is Interfaces.SAM.UInt6;
   subtype SETUP_NCS_RD_SETUP_Field is Interfaces.SAM.UInt6;

   --  SMC Setup Register (CS_number = 0)
   type SETUP_Register is record
      --  NWE Setup Length
      NWE_SETUP      : SETUP_NWE_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  NCS Setup Length in Write Access
      NCS_WR_SETUP   : SETUP_NCS_WR_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  NRD Setup Length
      NRD_SETUP      : SETUP_NRD_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  NCS Setup Length in Read Access
      NCS_RD_SETUP   : SETUP_NCS_RD_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETUP_Register use record
      NWE_SETUP      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCS_WR_SETUP   at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      NRD_SETUP      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      NCS_RD_SETUP   at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PULSE_NWE_PULSE_Field is Interfaces.SAM.UInt6;
   subtype PULSE_NCS_WR_PULSE_Field is Interfaces.SAM.UInt6;
   subtype PULSE_NRD_PULSE_Field is Interfaces.SAM.UInt6;
   subtype PULSE_NCS_RD_PULSE_Field is Interfaces.SAM.UInt6;

   --  SMC Pulse Register (CS_number = 0)
   type PULSE_Register is record
      --  NWE Pulse Length
      NWE_PULSE      : PULSE_NWE_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  NCS Pulse Length in WRITE Access
      NCS_WR_PULSE   : PULSE_NCS_WR_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  NRD Pulse Length
      NRD_PULSE      : PULSE_NRD_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  NCS Pulse Length in READ Access
      NCS_RD_PULSE   : PULSE_NCS_RD_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PULSE_Register use record
      NWE_PULSE      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCS_WR_PULSE   at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      NRD_PULSE      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      NCS_RD_PULSE   at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CYCLE_NWE_CYCLE_Field is Interfaces.SAM.UInt9;
   subtype CYCLE_NRD_CYCLE_Field is Interfaces.SAM.UInt9;

   --  SMC Cycle Register (CS_number = 0)
   type CYCLE_Register is record
      --  Total Write Cycle Length
      NWE_CYCLE      : CYCLE_NWE_CYCLE_Field := 16#3#;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7 := 16#0#;
      --  Total Read Cycle Length
      NRD_CYCLE      : CYCLE_NRD_CYCLE_Field := 16#3#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CYCLE_Register use record
      NWE_CYCLE      at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      NRD_CYCLE      at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TIMINGS_TCLR_Field is Interfaces.SAM.UInt4;
   subtype TIMINGS_TADL_Field is Interfaces.SAM.UInt4;
   subtype TIMINGS_TAR_Field is Interfaces.SAM.UInt4;
   subtype TIMINGS_TRR_Field is Interfaces.SAM.UInt4;
   subtype TIMINGS_TWB_Field is Interfaces.SAM.UInt4;
   subtype TIMINGS_RBNSEL_Field is Interfaces.SAM.UInt3;

   --  SMC Timings Register (CS_number = 0)
   type TIMINGS_Register is record
      --  CLE to REN Low Delay
      TCLR           : TIMINGS_TCLR_Field := 16#0#;
      --  ALE to Data Start
      TADL           : TIMINGS_TADL_Field := 16#0#;
      --  ALE to REN Low Delay
      TAR            : TIMINGS_TAR_Field := 16#0#;
      --  Off Chip Memory Scrambling Enable
      OCMS           : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Ready to REN Low Delay
      TRR            : TIMINGS_TRR_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  WEN High to REN to Busy
      TWB            : TIMINGS_TWB_Field := 16#0#;
      --  Ready/Busy Line Selection
      RBNSEL         : TIMINGS_RBNSEL_Field := 16#0#;
      --  NAND Flash Selection
      NFSEL          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMINGS_Register use record
      TCLR           at 0 range 0 .. 3;
      TADL           at 0 range 4 .. 7;
      TAR            at 0 range 8 .. 11;
      OCMS           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TRR            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TWB            at 0 range 24 .. 27;
      RBNSEL         at 0 range 28 .. 30;
      NFSEL          at 0 range 31 .. 31;
   end record;

   type MODE0_READ_MODE_Field is
     (--  The Read operation is controlled by the NCS signal.
      NCS_CTRL,
      --  The Read operation is controlled by the NRD signal.
      NRD_CTRL)
     with Size => 1;
   for MODE0_READ_MODE_Field use
     (NCS_CTRL => 0,
      NRD_CTRL => 1);

   type MODE0_WRITE_MODE_Field is
     (--  The Write operation is controller by the NCS signal.
      NCS_CTRL,
      --  The Write operation is controlled by the NWE signal.
      NWE_CTRL)
     with Size => 1;
   for MODE0_WRITE_MODE_Field use
     (NCS_CTRL => 0,
      NWE_CTRL => 1);

   --  NWAIT Mode
   type MODE0_EXNW_MODE_Field is
     (--  Disabled
      DISABLED,
      --  Frozen Mode
      FROZEN,
      --  Ready Mode
      READY)
     with Size => 2;
   for MODE0_EXNW_MODE_Field use
     (DISABLED => 0,
      FROZEN => 2,
      READY => 3);

   --  Data Bus Width
   type MODE0_DBW_Field is
     (--  8-bit bus
      BIT_8,
      --  16-bit bus
      BIT_16)
     with Size => 1;
   for MODE0_DBW_Field use
     (BIT_8 => 0,
      BIT_16 => 1);

   subtype MODE_TDF_CYCLES_Field is Interfaces.SAM.UInt4;

   --  SMC Mode Register (CS_number = 0)
   type MODE_Register is record
      READ_MODE      : MODE0_READ_MODE_Field := Interfaces.SAM.EBI.NRD_CTRL;
      WRITE_MODE     : MODE0_WRITE_MODE_Field := Interfaces.SAM.EBI.NWE_CTRL;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  NWAIT Mode
      EXNW_MODE      : MODE0_EXNW_MODE_Field := Interfaces.SAM.EBI.DISABLED;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  Byte Access Type
      BAT            : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.SAM.UInt3 := 16#0#;
      --  Data Bus Width
      DBW            : MODE0_DBW_Field := Interfaces.SAM.EBI.BIT_8;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Data Float Time
      TDF_CYCLES     : MODE_TDF_CYCLES_Field := 16#0#;
      --  TDF Optimization
      TDF_MODE       : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.SAM.UInt11 := 16#80#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      READ_MODE      at 0 range 0 .. 0;
      WRITE_MODE     at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EXNW_MODE      at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BAT            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      DBW            at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TDF_CYCLES     at 0 range 16 .. 19;
      TDF_MODE       at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  SMC OCMS Register
   type SMC_OCMS_Register is record
      --  Static Memory Controller Scrambling Enable
      SMSE          : Boolean := False;
      --  SRAM Scrambling Enable
      SRSE          : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_OCMS_Register use record
      SMSE          at 0 range 0 .. 0;
      SRSE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SMC_WPCR_WP_KEY_Field is Interfaces.SAM.UInt24;

   --  Write Protection Control Register
   type SMC_WPCR_Register is record
      --  Write-only. Write Protection Enable
      WP_EN        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write-only. Write Protection KEY password
      WP_KEY       : SMC_WPCR_WP_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_WPCR_Register use record
      WP_EN        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WP_KEY       at 0 range 8 .. 31;
   end record;

   subtype SMC_WPSR_WP_VS_Field is Interfaces.SAM.UInt4;
   subtype SMC_WPSR_WP_VSRC_Field is Interfaces.SAM.UInt16;

   --  Write Protection Status Register
   type SMC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WP_VS          : SMC_WPSR_WP_VS_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4;
      --  Read-only. Write Protection Violation Source
      WP_VSRC        : SMC_WPSR_WP_VSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_WPSR_Register use record
      WP_VS          at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      WP_VSRC        at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SMC_Disc is
     (Default,
      W9BIT,
      W8BIT);

   --  Static Memory Controller
   type SMC_Peripheral
     (Discriminent : SMC_Disc := Default)
   is record
      --  SMC NFC Configuration Register
      CFG           : aliased SMC_CFG_Register;
      --  SMC NFC Control Register
      CTRL          : aliased SMC_CTRL_Register;
      --  SMC NFC Status Register
      SR            : aliased SMC_SR_Register;
      --  SMC NFC Interrupt Enable Register
      IER           : aliased SMC_IER_Register;
      --  SMC NFC Interrupt Disable Register
      IDR           : aliased SMC_IDR_Register;
      --  SMC NFC Interrupt Mask Register
      IMR           : aliased SMC_IMR_Register;
      --  SMC NFC Address Cycle Zero Register
      ADDR          : aliased SMC_ADDR_Register;
      --  SMC Bank Address Register
      BANK          : aliased SMC_BANK_Register;
      --  SMC ECC Control Register
      ECC_CTRL      : aliased SMC_ECC_CTRL_Register;
      --  SMC ECC Mode Register
      ECC_MD        : aliased SMC_ECC_MD_Register;
      --  SMC ECC Status 1 Register
      ECC_SR1       : aliased SMC_ECC_SR1_Register;
      --  SMC ECC status 2 Register
      ECC_SR2       : aliased SMC_ECC_SR2_Register;
      --  SMC ECC parity 8 Register
      ECC_PR8       : aliased ECC_PR_Register_1;
      --  SMC ECC parity 9 Register
      ECC_PR9       : aliased ECC_PR_Register_1;
      --  SMC ECC parity 10 Register
      ECC_PR10      : aliased ECC_PR_Register_1;
      --  SMC ECC parity 11 Register
      ECC_PR11      : aliased ECC_PR_Register_1;
      --  SMC ECC parity 12 Register
      ECC_PR12      : aliased ECC_PR_Register_1;
      --  SMC ECC parity 13 Register
      ECC_PR13      : aliased ECC_PR_Register_1;
      --  SMC ECC parity 14 Register
      ECC_PR14      : aliased ECC_PR_Register_1;
      --  SMC ECC parity 15 Register
      ECC_PR15      : aliased ECC_PR_Register_1;
      --  SMC Setup Register (CS_number = 0)
      SETUP0        : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 0)
      PULSE0        : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 0)
      CYCLE0        : aliased CYCLE_Register;
      --  SMC Timings Register (CS_number = 0)
      TIMINGS0      : aliased TIMINGS_Register;
      --  SMC Mode Register (CS_number = 0)
      MODE0         : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 1)
      SETUP1        : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 1)
      PULSE1        : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 1)
      CYCLE1        : aliased CYCLE_Register;
      --  SMC Timings Register (CS_number = 1)
      TIMINGS1      : aliased TIMINGS_Register;
      --  SMC Mode Register (CS_number = 1)
      MODE1         : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 2)
      SETUP2        : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 2)
      PULSE2        : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 2)
      CYCLE2        : aliased CYCLE_Register;
      --  SMC Timings Register (CS_number = 2)
      TIMINGS2      : aliased TIMINGS_Register;
      --  SMC Mode Register (CS_number = 2)
      MODE2         : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 3)
      SETUP3        : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 3)
      PULSE3        : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 3)
      CYCLE3        : aliased CYCLE_Register;
      --  SMC Timings Register (CS_number = 3)
      TIMINGS3      : aliased TIMINGS_Register;
      --  SMC Mode Register (CS_number = 3)
      MODE3         : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 4)
      SETUP4        : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 4)
      PULSE4        : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 4)
      CYCLE4        : aliased CYCLE_Register;
      --  SMC Timings Register (CS_number = 4)
      TIMINGS4      : aliased TIMINGS_Register;
      --  SMC Mode Register (CS_number = 4)
      MODE4         : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 5)
      SETUP5        : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 5)
      PULSE5        : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 5)
      CYCLE5        : aliased CYCLE_Register;
      --  SMC Timings Register (CS_number = 5)
      TIMINGS5      : aliased TIMINGS_Register;
      --  SMC Mode Register (CS_number = 5)
      MODE5         : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 6)
      SETUP6        : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 6)
      PULSE6        : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 6)
      CYCLE6        : aliased CYCLE_Register;
      --  SMC Timings Register (CS_number = 6)
      TIMINGS6      : aliased TIMINGS_Register;
      --  SMC Mode Register (CS_number = 6)
      MODE6         : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 7)
      SETUP7        : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 7)
      PULSE7        : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 7)
      CYCLE7        : aliased CYCLE_Register;
      --  SMC Timings Register (CS_number = 7)
      TIMINGS7      : aliased TIMINGS_Register;
      --  SMC Mode Register (CS_number = 7)
      MODE7         : aliased MODE_Register;
      --  SMC OCMS Register
      OCMS          : aliased SMC_OCMS_Register;
      --  SMC OCMS KEY1 Register
      KEY1          : aliased Interfaces.SAM.UInt32;
      --  SMC OCMS KEY2 Register
      KEY2          : aliased Interfaces.SAM.UInt32;
      --  Write Protection Control Register
      WPCR          : aliased SMC_WPCR_Register;
      --  Write Protection Status Register
      WPSR          : aliased SMC_WPSR_Register;
      case Discriminent is
         when Default =>
            --  SMC ECC Parity 0 Register
            ECC_PR0 : aliased SMC_ECC_PR0_Register;
            --  SMC ECC parity 1 Register
            ECC_PR1 : aliased SMC_ECC_PR1_Register;
            --  SMC ECC parity 2 Register
            ECC_PR2 : aliased ECC_PR_Register;
            --  SMC ECC parity 3 Register
            ECC_PR3 : aliased ECC_PR_Register;
            --  SMC ECC parity 4 Register
            ECC_PR4 : aliased ECC_PR_Register;
            --  SMC ECC parity 5 Register
            ECC_PR5 : aliased ECC_PR_Register;
            --  SMC ECC parity 6 Register
            ECC_PR6 : aliased ECC_PR_Register;
            --  SMC ECC parity 7 Register
            ECC_PR7 : aliased ECC_PR_Register;
         when W9BIT =>
            --  SMC ECC Parity 0 Register
            ECC_PR0_W9BIT : aliased SMC_ECC_PR0_W9BIT_Register;
            --  SMC ECC parity 1 Register
            ECC_PR1_W9BIT : aliased SMC_ECC_PR1_W9BIT_Register;
         when W8BIT =>
            --  SMC ECC Parity 0 Register
            ECC_PR0_W8BIT : aliased SMC_ECC_PR0_W8BIT_Register;
            --  SMC ECC parity 1 Register
            ECC_PR1_W8BIT : aliased SMC_ECC_PR1_W8BIT_Register;
            --  SMC ECC parity 2 Register
            ECC_PR2_W8BIT : aliased SMC_ECC_PR2_W8BIT_Register;
            --  SMC ECC parity 3 Register
            ECC_PR3_W8BIT : aliased SMC_ECC_PR3_W8BIT_Register;
            --  SMC ECC parity 4 Register
            ECC_PR4_W8BIT : aliased SMC_ECC_PR4_W8BIT_Register;
            --  SMC ECC parity 5 Register
            ECC_PR5_W8BIT : aliased SMC_ECC_PR5_W8BIT_Register;
            --  SMC ECC parity 6 Register
            ECC_PR6_W8BIT : aliased SMC_ECC_PR6_W8BIT_Register;
            --  SMC ECC parity 7 Register
            ECC_PR7_W8BIT : aliased SMC_ECC_PR7_W8BIT_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for SMC_Peripheral use record
      CFG           at 16#0# range 0 .. 31;
      CTRL          at 16#4# range 0 .. 31;
      SR            at 16#8# range 0 .. 31;
      IER           at 16#C# range 0 .. 31;
      IDR           at 16#10# range 0 .. 31;
      IMR           at 16#14# range 0 .. 31;
      ADDR          at 16#18# range 0 .. 31;
      BANK          at 16#1C# range 0 .. 31;
      ECC_CTRL      at 16#20# range 0 .. 31;
      ECC_MD        at 16#24# range 0 .. 31;
      ECC_SR1       at 16#28# range 0 .. 31;
      ECC_SR2       at 16#34# range 0 .. 31;
      ECC_PR8       at 16#50# range 0 .. 31;
      ECC_PR9       at 16#54# range 0 .. 31;
      ECC_PR10      at 16#58# range 0 .. 31;
      ECC_PR11      at 16#5C# range 0 .. 31;
      ECC_PR12      at 16#60# range 0 .. 31;
      ECC_PR13      at 16#64# range 0 .. 31;
      ECC_PR14      at 16#68# range 0 .. 31;
      ECC_PR15      at 16#6C# range 0 .. 31;
      SETUP0        at 16#70# range 0 .. 31;
      PULSE0        at 16#74# range 0 .. 31;
      CYCLE0        at 16#78# range 0 .. 31;
      TIMINGS0      at 16#7C# range 0 .. 31;
      MODE0         at 16#80# range 0 .. 31;
      SETUP1        at 16#84# range 0 .. 31;
      PULSE1        at 16#88# range 0 .. 31;
      CYCLE1        at 16#8C# range 0 .. 31;
      TIMINGS1      at 16#90# range 0 .. 31;
      MODE1         at 16#94# range 0 .. 31;
      SETUP2        at 16#98# range 0 .. 31;
      PULSE2        at 16#9C# range 0 .. 31;
      CYCLE2        at 16#A0# range 0 .. 31;
      TIMINGS2      at 16#A4# range 0 .. 31;
      MODE2         at 16#A8# range 0 .. 31;
      SETUP3        at 16#AC# range 0 .. 31;
      PULSE3        at 16#B0# range 0 .. 31;
      CYCLE3        at 16#B4# range 0 .. 31;
      TIMINGS3      at 16#B8# range 0 .. 31;
      MODE3         at 16#BC# range 0 .. 31;
      SETUP4        at 16#C0# range 0 .. 31;
      PULSE4        at 16#C4# range 0 .. 31;
      CYCLE4        at 16#C8# range 0 .. 31;
      TIMINGS4      at 16#CC# range 0 .. 31;
      MODE4         at 16#D0# range 0 .. 31;
      SETUP5        at 16#D4# range 0 .. 31;
      PULSE5        at 16#D8# range 0 .. 31;
      CYCLE5        at 16#DC# range 0 .. 31;
      TIMINGS5      at 16#E0# range 0 .. 31;
      MODE5         at 16#E4# range 0 .. 31;
      SETUP6        at 16#E8# range 0 .. 31;
      PULSE6        at 16#EC# range 0 .. 31;
      CYCLE6        at 16#F0# range 0 .. 31;
      TIMINGS6      at 16#F4# range 0 .. 31;
      MODE6         at 16#F8# range 0 .. 31;
      SETUP7        at 16#FC# range 0 .. 31;
      PULSE7        at 16#100# range 0 .. 31;
      CYCLE7        at 16#104# range 0 .. 31;
      TIMINGS7      at 16#108# range 0 .. 31;
      MODE7         at 16#10C# range 0 .. 31;
      OCMS          at 16#110# range 0 .. 31;
      KEY1          at 16#114# range 0 .. 31;
      KEY2          at 16#118# range 0 .. 31;
      WPCR          at 16#1E4# range 0 .. 31;
      WPSR          at 16#1E8# range 0 .. 31;
      ECC_PR0       at 16#2C# range 0 .. 31;
      ECC_PR1       at 16#30# range 0 .. 31;
      ECC_PR2       at 16#38# range 0 .. 31;
      ECC_PR3       at 16#3C# range 0 .. 31;
      ECC_PR4       at 16#40# range 0 .. 31;
      ECC_PR5       at 16#44# range 0 .. 31;
      ECC_PR6       at 16#48# range 0 .. 31;
      ECC_PR7       at 16#4C# range 0 .. 31;
      ECC_PR0_W9BIT at 16#2C# range 0 .. 31;
      ECC_PR1_W9BIT at 16#30# range 0 .. 31;
      ECC_PR0_W8BIT at 16#2C# range 0 .. 31;
      ECC_PR1_W8BIT at 16#30# range 0 .. 31;
      ECC_PR2_W8BIT at 16#38# range 0 .. 31;
      ECC_PR3_W8BIT at 16#3C# range 0 .. 31;
      ECC_PR4_W8BIT at 16#40# range 0 .. 31;
      ECC_PR5_W8BIT at 16#44# range 0 .. 31;
      ECC_PR6_W8BIT at 16#48# range 0 .. 31;
      ECC_PR7_W8BIT at 16#4C# range 0 .. 31;
   end record;

   --  Static Memory Controller
   SMC_Periph : aliased SMC_Peripheral
     with Import, Address => SMC_Base;

end Interfaces.SAM.EBI;
