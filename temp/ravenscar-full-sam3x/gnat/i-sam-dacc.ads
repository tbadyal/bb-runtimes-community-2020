--
--  Copyright (C) 2020, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with System;

--  Digital-to-Analog Converter Controller
package Interfaces.SAM.DACC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type DACC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Trigger Enable
   type MR_TRGEN_Field is
     (--  External trigger mode disabled. DACC in free running mode.
      DIS,
      --  External trigger mode enabled.
      EN)
     with Size => 1;
   for MR_TRGEN_Field use
     (DIS => 0,
      EN => 1);

   subtype DACC_MR_TRGSEL_Field is Interfaces.SAM.UInt3;

   --  Word Transfer
   type MR_WORD_Field is
     (--  Half-Word transfer
      HALF,
      --  Word Transfer
      WORD)
     with Size => 1;
   for MR_WORD_Field use
     (HALF => 0,
      WORD => 1);

   subtype DACC_MR_REFRESH_Field is Interfaces.SAM.Byte;

   --  User Channel Selection
   type MR_USER_SEL_Field is
     (--  Channel 0
      CHANNEL0,
      --  Channel 1
      CHANNEL1)
     with Size => 2;
   for MR_USER_SEL_Field use
     (CHANNEL0 => 0,
      CHANNEL1 => 1);

   --  Tag Selection Mode
   type MR_TAG_Field is
     (--  Tag selection mode disabled. Using USER_SEL to select the channel for the
--  conversion.
      DIS,
      --  Tag selection mode enabled
      EN)
     with Size => 1;
   for MR_TAG_Field use
     (DIS => 0,
      EN => 1);

   --  Max Speed Mode
   type MR_MAXS_Field is
     (--  Normal Mode
      NORMAL,
      --  Max Speed Mode enabled
      MAXIMUM)
     with Size => 1;
   for MR_MAXS_Field use
     (NORMAL => 0,
      MAXIMUM => 1);

   --  Startup Time Selection
   type MR_STARTUP_Field is
     (--  0 periods of DACClock
      Val_0,
      --  8 periods of DACClock
      Val_8,
      --  16 periods of DACClock
      Val_16,
      --  24 periods of DACClock
      Val_24,
      --  64 periods of DACClock
      Val_64,
      --  80 periods of DACClock
      Val_80,
      --  96 periods of DACClock
      Val_96,
      --  112 periods of DACClock
      Val_112,
      --  512 periods of DACClock
      Val_512,
      --  576 periods of DACClock
      Val_576,
      --  640 periods of DACClock
      Val_640,
      --  704 periods of DACClock
      Val_704,
      --  768 periods of DACClock
      Val_768,
      --  832 periods of DACClock
      Val_832,
      --  896 periods of DACClock
      Val_896,
      --  960 periods of DACClock
      Val_960,
      --  1024 periods of DACClock
      Val_1024,
      --  1088 periods of DACClock
      Val_1088,
      --  1152 periods of DACClock
      Val_1152,
      --  1216 periods of DACClock
      Val_1216,
      --  1280 periods of DACClock
      Val_1280,
      --  1344 periods of DACClock
      Val_1344,
      --  1408 periods of DACClock
      Val_1408,
      --  1472 periods of DACClock
      Val_1472,
      --  1536 periods of DACClock
      Val_1536,
      --  1600 periods of DACClock
      Val_1600,
      --  1664 periods of DACClock
      Val_1664,
      --  1728 periods of DACClock
      Val_1728,
      --  1792 periods of DACClock
      Val_1792,
      --  1856 periods of DACClock
      Val_1856,
      --  1920 periods of DACClock
      Val_1920,
      --  1984 periods of DACClock
      Val_1984)
     with Size => 6;
   for MR_STARTUP_Field use
     (Val_0 => 0,
      Val_8 => 1,
      Val_16 => 2,
      Val_24 => 3,
      Val_64 => 4,
      Val_80 => 5,
      Val_96 => 6,
      Val_112 => 7,
      Val_512 => 8,
      Val_576 => 9,
      Val_640 => 10,
      Val_704 => 11,
      Val_768 => 12,
      Val_832 => 13,
      Val_896 => 14,
      Val_960 => 15,
      Val_1024 => 16,
      Val_1088 => 17,
      Val_1152 => 18,
      Val_1216 => 19,
      Val_1280 => 20,
      Val_1344 => 21,
      Val_1408 => 22,
      Val_1472 => 23,
      Val_1536 => 24,
      Val_1600 => 25,
      Val_1664 => 26,
      Val_1728 => 27,
      Val_1792 => 28,
      Val_1856 => 29,
      Val_1920 => 30,
      Val_1984 => 31);

   --  Mode Register
   type DACC_MR_Register is record
      --  Trigger Enable
      TRGEN          : MR_TRGEN_Field := Interfaces.SAM.DACC.DIS;
      --  Trigger Selection
      TRGSEL         : DACC_MR_TRGSEL_Field := 16#0#;
      --  Word Transfer
      WORD           : MR_WORD_Field := Interfaces.SAM.DACC.HALF;
      --  Sleep Mode
      SLEEP          : Boolean := False;
      --  Fast Wake up Mode
      FASTWKUP       : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Refresh Period
      REFRESH        : DACC_MR_REFRESH_Field := 16#0#;
      --  User Channel Selection
      USER_SEL       : MR_USER_SEL_Field := Interfaces.SAM.DACC.CHANNEL0;
      --  unspecified
      Reserved_18_19 : Interfaces.SAM.UInt2 := 16#0#;
      --  Tag Selection Mode
      TAG            : MR_TAG_Field := Interfaces.SAM.DACC.DIS;
      --  Max Speed Mode
      MAXS           : MR_MAXS_Field := Interfaces.SAM.DACC.NORMAL;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Startup Time Selection
      STARTUP        : MR_STARTUP_Field := Interfaces.SAM.DACC.Val_0;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_MR_Register use record
      TRGEN          at 0 range 0 .. 0;
      TRGSEL         at 0 range 1 .. 3;
      WORD           at 0 range 4 .. 4;
      SLEEP          at 0 range 5 .. 5;
      FASTWKUP       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      REFRESH        at 0 range 8 .. 15;
      USER_SEL       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      TAG            at 0 range 20 .. 20;
      MAXS           at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      STARTUP        at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  DACC_CHER_CH array
   type DACC_CHER_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DACC_CHER_CH
   type DACC_CHER_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  CH as an array
            Arr : DACC_CHER_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DACC_CHER_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel Enable Register
   type DACC_CHER_Register is record
      --  Write-only. Channel 0 Enable
      CH            : DACC_CHER_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CHER_Register use record
      CH            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DACC_CHDR_CH array
   type DACC_CHDR_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DACC_CHDR_CH
   type DACC_CHDR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  CH as an array
            Arr : DACC_CHDR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DACC_CHDR_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel Disable Register
   type DACC_CHDR_Register is record
      --  Write-only. Channel 0 Disable
      CH            : DACC_CHDR_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CHDR_Register use record
      CH            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DACC_CHSR_CH array
   type DACC_CHSR_CH_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DACC_CHSR_CH
   type DACC_CHSR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  CH as an array
            Arr : DACC_CHSR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DACC_CHSR_CH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Channel Status Register
   type DACC_CHSR_Register is record
      --  Read-only. Channel 0 Status
      CH            : DACC_CHSR_CH_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_CHSR_Register use record
      CH            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt Enable Register
   type DACC_IER_Register is record
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY         : Boolean := False;
      --  Write-only. End of Conversion Interrupt Enable
      EOC           : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE        : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IER_Register use record
      TXRDY         at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      ENDTX         at 0 range 2 .. 2;
      TXBUFE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Disable Register
   type DACC_IDR_Register is record
      --  Write-only. Transmit Ready Interrupt Disable.
      TXRDY         : Boolean := False;
      --  Write-only. End of Conversion Interrupt Disable
      EOC           : Boolean := False;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX         : Boolean := False;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE        : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IDR_Register use record
      TXRDY         at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      ENDTX         at 0 range 2 .. 2;
      TXBUFE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Mask Register
   type DACC_IMR_Register is record
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY         : Boolean;
      --  Read-only. End of Conversion Interrupt Mask
      EOC           : Boolean;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX         : Boolean;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE        : Boolean;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_IMR_Register use record
      TXRDY         at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      ENDTX         at 0 range 2 .. 2;
      TXBUFE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Status Register
   type DACC_ISR_Register is record
      --  Read-only. Transmit Ready Interrupt Flag
      TXRDY         : Boolean;
      --  Read-only. End of Conversion Interrupt Flag
      EOC           : Boolean;
      --  Read-only. End of DMA Interrupt Flag
      ENDTX         : Boolean;
      --  Read-only. Transmit Buffer Empty
      TXBUFE        : Boolean;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_ISR_Register use record
      TXRDY         at 0 range 0 .. 0;
      EOC           at 0 range 1 .. 1;
      ENDTX         at 0 range 2 .. 2;
      TXBUFE        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DACC_ACR_IBCTLCH array element
   subtype DACC_ACR_IBCTLCH_Element is Interfaces.SAM.UInt2;

   --  DACC_ACR_IBCTLCH array
   type DACC_ACR_IBCTLCH_Field_Array is array (0 .. 1)
     of DACC_ACR_IBCTLCH_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for DACC_ACR_IBCTLCH
   type DACC_ACR_IBCTLCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IBCTLCH as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  IBCTLCH as an array
            Arr : DACC_ACR_IBCTLCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for DACC_ACR_IBCTLCH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype DACC_ACR_IBCTLDACCORE_Field is Interfaces.SAM.UInt2;

   --  Analog Current Register
   type DACC_ACR_Register is record
      --  Analog Output Current Control
      IBCTLCH        : DACC_ACR_IBCTLCH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Bias Current Control for DAC Core
      IBCTLDACCORE   : DACC_ACR_IBCTLDACCORE_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_ACR_Register use record
      IBCTLCH        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      IBCTLDACCORE   at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DACC_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protect Mode register
   type DACC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : DACC_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype DACC_WPSR_WPROTADDR_Field is Interfaces.SAM.Byte;

   --  Write Protect Status register
   type DACC_WPSR_Register is record
      --  Read-only. Write protection error
      WPROTERR       : Boolean;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write protection error address
      WPROTADDR      : DACC_WPSR_WPROTADDR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_WPSR_Register use record
      WPROTERR       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPROTADDR      at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DACC_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type DACC_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : DACC_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DACC_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type DACC_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : DACC_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type DACC_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type DACC_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : Boolean;
      --  unspecified
      Reserved_1_7  : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACC_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital-to-Analog Converter Controller
   type DACC_Peripheral is record
      --  Control Register
      CR   : aliased DACC_CR_Register;
      --  Mode Register
      MR   : aliased DACC_MR_Register;
      --  Channel Enable Register
      CHER : aliased DACC_CHER_Register;
      --  Channel Disable Register
      CHDR : aliased DACC_CHDR_Register;
      --  Channel Status Register
      CHSR : aliased DACC_CHSR_Register;
      --  Conversion Data Register
      CDR  : aliased Interfaces.SAM.UInt32;
      --  Interrupt Enable Register
      IER  : aliased DACC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased DACC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased DACC_IMR_Register;
      --  Interrupt Status Register
      ISR  : aliased DACC_ISR_Register;
      --  Analog Current Register
      ACR  : aliased DACC_ACR_Register;
      --  Write Protect Mode register
      WPMR : aliased DACC_WPMR_Register;
      --  Write Protect Status register
      WPSR : aliased DACC_WPSR_Register;
      --  Transmit Pointer Register
      TPR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR  : aliased DACC_TCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased DACC_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased DACC_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased DACC_PTSR_Register;
   end record
     with Volatile;

   for DACC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      CHER at 16#10# range 0 .. 31;
      CHDR at 16#14# range 0 .. 31;
      CHSR at 16#18# range 0 .. 31;
      CDR  at 16#20# range 0 .. 31;
      IER  at 16#24# range 0 .. 31;
      IDR  at 16#28# range 0 .. 31;
      IMR  at 16#2C# range 0 .. 31;
      ISR  at 16#30# range 0 .. 31;
      ACR  at 16#94# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Digital-to-Analog Converter Controller
   DACC_Periph : aliased DACC_Peripheral
     with Import, Address => DACC_Base;

end Interfaces.SAM.DACC;
