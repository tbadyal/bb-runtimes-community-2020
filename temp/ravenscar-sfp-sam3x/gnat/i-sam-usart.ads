--
--  Copyright (C) 2020, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with System;

package Interfaces.SAM.USART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type USART0_CR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : Boolean := False;
      --  Write-only. Reset Transmitter
      RSTTX          : Boolean := False;
      --  Write-only. Receiver Enable
      RXEN           : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS          : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN           : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS          : Boolean := False;
      --  Write-only. Reset Status Bits
      RSTSTA         : Boolean := False;
      --  Write-only. Start Break
      STTBRK         : Boolean := False;
      --  Write-only. Stop Break
      STPBRK         : Boolean := False;
      --  Write-only. Start Time-out
      STTTO          : Boolean := False;
      --  Write-only. Send Address
      SENDA          : Boolean := False;
      --  Write-only. Reset Iterations
      RSTIT          : Boolean := False;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : Boolean := False;
      --  Write-only. Rearm Time-out
      RETTO          : Boolean := False;
      --  unspecified
      Reserved_16_17 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Request to Send Enable
      RTSEN          : Boolean := False;
      --  Write-only. Request to Send Disable
      RTSDIS         : Boolean := False;
      --  Write-only. Abort LIN Transmission
      LINABT         : Boolean := False;
      --  Write-only. Send LIN Wakeup Signal
      LINWKUP        : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      LINABT         at 0 range 20 .. 20;
      LINWKUP        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Control Register
   type USART0_CR_SPI_MODE_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : Boolean := False;
      --  Write-only. Reset Transmitter
      RSTTX          : Boolean := False;
      --  Write-only. Receiver Enable
      RXEN           : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS          : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN           : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS          : Boolean := False;
      --  Write-only. Reset Status Bits
      RSTSTA         : Boolean := False;
      --  unspecified
      Reserved_9_17  : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. Force SPI Chip Select
      FCS            : Boolean := False;
      --  Write-only. Release SPI Chip Select
      RCS            : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CR_SPI_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      FCS            at 0 range 18 .. 18;
      RCS            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  USART Mode of Operation
   type MR_USART_MODE_Field is
     (--  Normal mode
      NORMAL,
      --  RS485
      RS485,
      --  Hardware Handshaking
      HW_HANDSHAKING,
      --  IS07816 Protocol: T = 0
      IS07816_T_0,
      --  IS07816 Protocol: T = 1
      IS07816_T_1,
      --  IrDA
      IRDA,
      --  LIN Master
      LIN_MASTER,
      --  LIN Slave
      LIN_SLAVE,
      --  SPI Master
      SPI_MASTER,
      --  SPI Slave
      SPI_SLAVE)
     with Size => 4;
   for MR_USART_MODE_Field use
     (NORMAL => 0,
      RS485 => 1,
      HW_HANDSHAKING => 2,
      IS07816_T_0 => 4,
      IS07816_T_1 => 6,
      IRDA => 8,
      LIN_MASTER => 10,
      LIN_SLAVE => 11,
      SPI_MASTER => 14,
      SPI_SLAVE => 15);

   --  Clock Selection
   type MR_USCLKS_Field is
     (--  Master Clock MCK is selected
      MCK,
      --  Internal Clock Divided MCK/DIV (DIV=8) is selected
      DIV,
      --  Serial Clock SLK is selected
      SCK)
     with Size => 2;
   for MR_USCLKS_Field use
     (MCK => 0,
      DIV => 1,
      SCK => 3);

   --  Character Length.
   type MR_CHRL_Field is
     (--  Character length is 5 bits
      Val_5_BIT,
      --  Character length is 6 bits
      Val_6_BIT,
      --  Character length is 7 bits
      Val_7_BIT,
      --  Character length is 8 bits
      Val_8_BIT)
     with Size => 2;
   for MR_CHRL_Field use
     (Val_5_BIT => 0,
      Val_6_BIT => 1,
      Val_7_BIT => 2,
      Val_8_BIT => 3);

   --  Parity Type
   type MR_PAR_Field is
     (--  Even parity
      EVEN,
      --  Odd parity
      ODD,
      --  Parity forced to 0 (Space)
      SPACE,
      --  Parity forced to 1 (Mark)
      MARK,
      --  No parity
      NO,
      --  Multidrop mode
      MULTIDROP)
     with Size => 3;
   for MR_PAR_Field use
     (EVEN => 0,
      ODD => 1,
      SPACE => 2,
      MARK => 3,
      NO => 4,
      MULTIDROP => 6);

   --  Number of Stop Bits
   type MR_NBSTOP_Field is
     (--  1 stop bit
      Val_1_BIT,
      --  1.5 stop bit (SYNC = 0) or reserved (SYNC = 1)
      Val_1_5_BIT,
      --  2 stop bits
      Val_2_BIT)
     with Size => 2;
   for MR_NBSTOP_Field use
     (Val_1_BIT => 0,
      Val_1_5_BIT => 1,
      Val_2_BIT => 2);

   --  Channel Mode
   type MR_CHMODE_Field is
     (--  Normal Mode
      NORMAL,
      --  Automatic Echo. Receiver input is connected to the TXD pin.
      AUTOMATIC,
      --  Local Loopback. Transmitter output is connected to the Receiver Input.
      LOCAL_LOOPBACK,
      --  Remote Loopback. RXD pin is internally connected to the TXD pin.
      REMOTE_LOOPBACK)
     with Size => 2;
   for MR_CHMODE_Field use
     (NORMAL => 0,
      AUTOMATIC => 1,
      LOCAL_LOOPBACK => 2,
      REMOTE_LOOPBACK => 3);

   subtype USART0_MR_MAX_ITERATION_Field is Interfaces.SAM.UInt3;

   --  Mode Register
   type USART0_MR_Register is record
      --  USART Mode of Operation
      USART_MODE     : MR_USART_MODE_Field := Interfaces.SAM.USART.NORMAL;
      --  Clock Selection
      USCLKS         : MR_USCLKS_Field := Interfaces.SAM.USART.MCK;
      --  Character Length.
      CHRL           : MR_CHRL_Field := Interfaces.SAM.USART.Val_5_BIT;
      --  Synchronous Mode Select
      SYNC           : Boolean := False;
      --  Parity Type
      PAR            : MR_PAR_Field := Interfaces.SAM.USART.EVEN;
      --  Number of Stop Bits
      NBSTOP         : MR_NBSTOP_Field := Interfaces.SAM.USART.Val_1_BIT;
      --  Channel Mode
      CHMODE         : MR_CHMODE_Field := Interfaces.SAM.USART.NORMAL;
      --  Bit Order
      MSBF           : Boolean := False;
      --  9-bit Character Length
      MODE9          : Boolean := False;
      --  Clock Output Select
      CLKO           : Boolean := False;
      --  Oversampling Mode
      OVER           : Boolean := False;
      --  Inhibit Non Acknowledge
      INACK          : Boolean := False;
      --  Disable Successive NACK
      DSNACK         : Boolean := False;
      --  Variable Synchronization of Command/Data Sync Start Frame Delimiter
      VAR_SYNC       : Boolean := False;
      --  INverted Data
      INVDATA        : Boolean := False;
      --  Maximum Number of Automatic Iteration
      MAX_ITERATION  : USART0_MR_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit := 16#0#;
      --  Infrared Receive Line Filter
      FILTER         : Boolean := False;
      --  Manchester Encoder/Decoder Enable
      MAN            : Boolean := False;
      --  Manchester Synchronization Mode
      MODSYNC        : Boolean := False;
      --  Start Frame Delimiter Selector
      ONEBIT         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_MR_Register use record
      USART_MODE     at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      SYNC           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      MSBF           at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      INACK          at 0 range 20 .. 20;
      DSNACK         at 0 range 21 .. 21;
      VAR_SYNC       at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      MAN            at 0 range 29 .. 29;
      MODSYNC        at 0 range 30 .. 30;
      ONEBIT         at 0 range 31 .. 31;
   end record;

   --  USART Mode of Operation
   type MR_SPI_MODE_USART_MODE_Field is
     (--  Reset value for the field
      MR_SPI_MODE_USART_MODE_Field_Reset,
      --  SPI Master
      SPI_MASTER,
      --  SPI Slave
      SPI_SLAVE)
     with Size => 4;
   for MR_SPI_MODE_USART_MODE_Field use
     (MR_SPI_MODE_USART_MODE_Field_Reset => 0,
      SPI_MASTER => 14,
      SPI_SLAVE => 15);

   --  Clock Selection
   type MR_SPI_MODE_USCLKS_Field is
     (--  Master Clock MCK is selected
      MCK,
      --  Internal Clock Divided MCK/DIV (DIV=8) is selected
      DIV,
      --  Serial Clock SLK is selected
      SCK)
     with Size => 2;
   for MR_SPI_MODE_USCLKS_Field use
     (MCK => 0,
      DIV => 1,
      SCK => 3);

   --  Character Length.
   type MR_SPI_MODE_CHRL_Field is
     (--  Reset value for the field
      MR_SPI_MODE_CHRL_Field_Reset,
      --  Character length is 8 bits
      Val_8_BIT)
     with Size => 2;
   for MR_SPI_MODE_CHRL_Field use
     (MR_SPI_MODE_CHRL_Field_Reset => 0,
      Val_8_BIT => 3);

   --  Mode Register
   type USART0_MR_SPI_MODE_Register is record
      --  USART Mode of Operation
      USART_MODE     : MR_SPI_MODE_USART_MODE_Field :=
                        MR_SPI_MODE_USART_MODE_Field_Reset;
      --  Clock Selection
      USCLKS         : MR_SPI_MODE_USCLKS_Field := Interfaces.SAM.USART.MCK;
      --  Character Length.
      CHRL           : MR_SPI_MODE_CHRL_Field := MR_SPI_MODE_CHRL_Field_Reset;
      --  SPI Clock Phase
      CPHA           : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7 := 16#0#;
      --  SPI Clock Polarity
      CPOL           : Boolean := False;
      --  unspecified
      Reserved_17_19 : Interfaces.SAM.UInt3 := 16#0#;
      --  Wait Read Data Before Transfer
      WRDBT          : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.SAM.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_MR_SPI_MODE_Register use record
      USART_MODE     at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      CPHA           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CPOL           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      WRDBT          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Interrupt Enable Register
   type USART0_IER_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : Boolean := False;
      --  Write-only. End of Receive Transfer Interrupt Enable (available in
      --  all USART modes of operation)
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Interrupt Enable (available in all USART
      --  modes of operation)
      ENDTX          : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : Boolean := False;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. Max number of Repetitions Reached Interrupt Enable
      ITER           : Boolean := False;
      --  Write-only. Buffer Empty Interrupt Enable (available in all USART
      --  modes of operation)
      TXBUFE         : Boolean := False;
      --  Write-only. Buffer Full Interrupt Enable (available in all USART
      --  modes of operation)
      RXBUFF         : Boolean := False;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : Boolean := False;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Manchester Error Interrupt Enable
      MANE           : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Interrupt Enable Register
   type USART0_IER_SPI_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  Write-only. SPI Underrun Error Interrupt Enable
      UNRE           : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Enable Register
   type USART0_IER_LIN_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : Boolean := False;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Enable
      LINBK          : Boolean := False;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Enable
      LINID          : Boolean := False;
      --  Write-only. LIN Transfer Completed Interrupt Enable
      LINTC          : Boolean := False;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Enable
      LINBE          : Boolean := False;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Enable
      LINISFE        : Boolean := False;
      --  Write-only. LIN Identifier Parity Interrupt Enable
      LINIPE         : Boolean := False;
      --  Write-only. LIN Checksum Error Interrupt Enable
      LINCE          : Boolean := False;
      --  Write-only. LIN Slave Not Responding Error Interrupt Enable
      LINSNRE        : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Disable Register
   type USART0_IDR_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : Boolean := False;
      --  Write-only. End of Receive Transfer Interrupt Disable (available in
      --  all USART modes of operation)
      ENDRX          : Boolean := False;
      --  Write-only. End of Transmit Interrupt Disable (available in all USART
      --  modes of operation)
      ENDTX          : Boolean := False;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : Boolean := False;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. Max number of Repetitions Reached Interrupt Disable
      ITER           : Boolean := False;
      --  Write-only. Buffer Empty Interrupt Disable (available in all USART
      --  modes of operation)
      TXBUFE         : Boolean := False;
      --  Write-only. Buffer Full Interrupt Disable (available in all USART
      --  modes of operation)
      RXBUFF         : Boolean := False;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : Boolean := False;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Manchester Error Interrupt Disable
      MANE           : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Interrupt Disable Register
   type USART0_IDR_SPI_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  Write-only. SPI Underrun Error Interrupt Disable
      UNRE           : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Disable Register
   type USART0_IDR_LIN_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : Boolean := False;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : Boolean := False;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : Boolean := False;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : Boolean := False;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Disable
      LINBK          : Boolean := False;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Disable
      LINID          : Boolean := False;
      --  Write-only. LIN Transfer Completed Interrupt Disable
      LINTC          : Boolean := False;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Disable
      LINBE          : Boolean := False;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Disable
      LINISFE        : Boolean := False;
      --  Write-only. LIN Identifier Parity Interrupt Disable
      LINIPE         : Boolean := False;
      --  Write-only. LIN Checksum Error Interrupt Disable
      LINCE          : Boolean := False;
      --  Write-only. LIN Slave Not Responding Error Interrupt Disable
      LINSNRE        : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Mask Register
   type USART0_IMR_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : Boolean;
      --  Read-only. End of Receive Transfer Interrupt Mask (available in all
      --  USART modes of operation)
      ENDRX          : Boolean;
      --  Read-only. End of Transmit Interrupt Mask (available in all USART
      --  modes of operation)
      ENDTX          : Boolean;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : Boolean;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : Boolean;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : Boolean;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  Read-only. Max number of Repetitions Reached Interrupt Mask
      ITER           : Boolean;
      --  Read-only. Buffer Empty Interrupt Mask (available in all USART modes
      --  of operation)
      TXBUFE         : Boolean;
      --  Read-only. Buffer Full Interrupt Mask (available in all USART modes
      --  of operation)
      RXBUFF         : Boolean;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : Boolean;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4;
      --  Read-only. Manchester Error Interrupt Mask
      MANE           : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MANE           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Interrupt Mask Register
   type USART0_IMR_SPI_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  Read-only. SPI Underrun Error Interrupt Mask
      UNRE           : Boolean;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Interrupt Mask Register
   type USART0_IMR_LIN_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : Boolean;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : Boolean;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : Boolean;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : Boolean;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3;
      --  Read-only. LIN Break Sent or LIN Break Received Interrupt Mask
      LINBK          : Boolean;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Mask
      LINID          : Boolean;
      --  Read-only. LIN Transfer Completed Interrupt Mask
      LINTC          : Boolean;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9;
      --  Read-only. LIN Bus Error Interrupt Mask
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error Interrupt Mask
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Interrupt Mask
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error Interrupt Mask
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error Interrupt Mask
      LINSNRE        : Boolean;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Channel Status Register
   type USART0_CSR_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready
      TXRDY          : Boolean;
      --  Read-only. Break Received/End of Break
      RXBRK          : Boolean;
      --  Read-only. End of Receiver Transfer
      ENDRX          : Boolean;
      --  Read-only. End of Transmitter Transfer
      ENDTX          : Boolean;
      --  Read-only. Overrun Error
      OVRE           : Boolean;
      --  Read-only. Framing Error
      FRAME          : Boolean;
      --  Read-only. Parity Error
      PARE           : Boolean;
      --  Read-only. Receiver Time-out
      TIMEOUT        : Boolean;
      --  Read-only. Transmitter Empty
      TXEMPTY        : Boolean;
      --  Read-only. Max number of Repetitions Reached
      ITER           : Boolean;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : Boolean;
      --  Read-only. Reception Buffer Full
      RXBUFF         : Boolean;
      --  Read-only. Non Acknowledge Interrupt
      NACK           : Boolean;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5;
      --  Read-only. Clear to Send Input Change Flag
      CTSIC          : Boolean;
      --  unspecified
      Reserved_20_22 : Interfaces.SAM.UInt3;
      --  Read-only. Image of CTS Input
      CTS            : Boolean;
      --  Read-only. Manchester Error
      MANERR         : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      CTS            at 0 range 23 .. 23;
      MANERR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Channel Status Register
   type USART0_CSR_SPI_MODE_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3;
      --  Read-only. Overrun Error
      OVRE           : Boolean;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3;
      --  Read-only. Transmitter Empty
      TXEMPTY        : Boolean;
      --  Read-only. Underrun Error
      UNRE           : Boolean;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Channel Status Register
   type USART0_CSR_LIN_MODE_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : Interfaces.SAM.UInt3;
      --  Read-only. Overrun Error
      OVRE           : Boolean;
      --  Read-only. Framing Error
      FRAME          : Boolean;
      --  Read-only. Parity Error
      PARE           : Boolean;
      --  Read-only. Receiver Time-out
      TIMEOUT        : Boolean;
      --  Read-only. Transmitter Empty
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_12 : Interfaces.SAM.UInt3;
      --  Read-only. LIN Break Sent or LIN Break Received
      LINBK          : Boolean;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received
      LINID          : Boolean;
      --  Read-only. LIN Transfer Completed
      LINTC          : Boolean;
      --  unspecified
      Reserved_16_22 : Interfaces.SAM.UInt7;
      --  Read-only. LIN Bus Line Status
      LINBLS         : Boolean;
      --  unspecified
      Reserved_24_24 : Interfaces.SAM.Bit;
      --  Read-only. LIN Bit Error
      LINBE          : Boolean;
      --  Read-only. LIN Inconsistent Synch Field Error
      LINISFE        : Boolean;
      --  Read-only. LIN Identifier Parity Error
      LINIPE         : Boolean;
      --  Read-only. LIN Checksum Error
      LINCE          : Boolean;
      --  Read-only. LIN Slave Not Responding Error
      LINSNRE        : Boolean;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      LINBLS         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype USART0_RHR_RXCHR_Field is Interfaces.SAM.UInt9;

   --  Receiver Holding Register
   type USART0_RHR_Register is record
      --  Read-only. Received Character
      RXCHR          : USART0_RHR_RXCHR_Field;
      --  unspecified
      Reserved_9_14  : Interfaces.SAM.UInt6;
      --  Read-only. Received Sync
      RXSYNH         : Boolean;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RHR_Register use record
      RXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      RXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_THR_TXCHR_Field is Interfaces.SAM.UInt9;

   --  Transmitter Holding Register
   type USART0_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR          : USART0_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Sync Field to be transmitted
      TXSYNH         : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_THR_Register use record
      TXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      TXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_BRGR_CD_Field is Interfaces.SAM.UInt16;
   subtype USART0_BRGR_FP_Field is Interfaces.SAM.UInt3;

   --  Baud Rate Generator Register
   type USART0_BRGR_Register is record
      --  Clock Divider
      CD             : USART0_BRGR_CD_Field := 16#0#;
      --  Fractional Part
      FP             : USART0_BRGR_FP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      FP             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype USART0_RTOR_TO_Field is Interfaces.SAM.UInt17;

   --  Receiver Time-out Register
   type USART0_RTOR_Register is record
      --  Time-out Value
      TO             : USART0_RTOR_TO_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.SAM.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RTOR_Register use record
      TO             at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype USART0_TTGR_TG_Field is Interfaces.SAM.Byte;

   --  Transmitter Timeguard Register
   type USART0_TTGR_Register is record
      --  Timeguard Value
      TG            : USART0_TTGR_TG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TTGR_Register use record
      TG            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_FIDI_FI_DI_RATIO_Field is Interfaces.SAM.UInt11;

   --  FI DI Ratio Register
   type USART0_FIDI_Register is record
      --  FI Over DI Ratio Value
      FI_DI_RATIO    : USART0_FIDI_FI_DI_RATIO_Field := 16#174#;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_FIDI_Register use record
      FI_DI_RATIO    at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype USART0_NER_NB_ERRORS_Field is Interfaces.SAM.Byte;

   --  Number of Errors Register
   type USART0_NER_Register is record
      --  Read-only. Number of Errors
      NB_ERRORS     : USART0_NER_NB_ERRORS_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_NER_Register use record
      NB_ERRORS     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_IF_IRDA_FILTER_Field is Interfaces.SAM.Byte;

   --  IrDA Filter Register
   type USART0_IF_Register is record
      --  IrDA Filter
      IRDA_FILTER   : USART0_IF_IRDA_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IF_Register use record
      IRDA_FILTER   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_MAN_TX_PL_Field is Interfaces.SAM.UInt4;

   --  Transmitter Preamble Pattern
   type MAN_TX_PP_Field is
     (--  The preamble is composed of '1's
      ALL_ONE,
      --  The preamble is composed of '0's
      ALL_ZERO,
      --  The preamble is composed of '01's
      ZERO_ONE,
      --  The preamble is composed of '10's
      ONE_ZERO)
     with Size => 2;
   for MAN_TX_PP_Field use
     (ALL_ONE => 0,
      ALL_ZERO => 1,
      ZERO_ONE => 2,
      ONE_ZERO => 3);

   subtype USART0_MAN_RX_PL_Field is Interfaces.SAM.UInt4;

   --  Receiver Preamble Pattern detected
   type MAN_RX_PP_Field is
     (--  The preamble is composed of '1's
      ALL_ONE,
      --  The preamble is composed of '0's
      ALL_ZERO,
      --  The preamble is composed of '01's
      ZERO_ONE,
      --  The preamble is composed of '10's
      ONE_ZERO)
     with Size => 2;
   for MAN_RX_PP_Field use
     (ALL_ONE => 0,
      ALL_ZERO => 1,
      ZERO_ONE => 2,
      ONE_ZERO => 3);

   --  Manchester Encoder Decoder Register
   type USART0_MAN_Register is record
      --  Transmitter Preamble Length
      TX_PL          : USART0_MAN_TX_PL_Field := 16#4#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Transmitter Preamble Pattern
      TX_PP          : MAN_TX_PP_Field := Interfaces.SAM.USART.ALL_ONE;
      --  unspecified
      Reserved_10_11 : Interfaces.SAM.UInt2 := 16#0#;
      --  Transmitter Manchester Polarity
      TX_MPOL        : Boolean := True;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Receiver Preamble Length
      RX_PL          : USART0_MAN_RX_PL_Field := 16#1#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Receiver Preamble Pattern detected
      RX_PP          : MAN_RX_PP_Field := Interfaces.SAM.USART.ALL_ONE;
      --  unspecified
      Reserved_26_27 : Interfaces.SAM.UInt2 := 16#0#;
      --  Receiver Manchester Polarity
      RX_MPOL        : Boolean := True;
      --  Must Be Set to 1
      ONE            : Boolean := True;
      --  Drift compensation
      DRIFT          : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.SAM.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_MAN_Register use record
      TX_PL          at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TX_PP          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TX_MPOL        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RX_PL          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      RX_PP          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      RX_MPOL        at 0 range 28 .. 28;
      ONE            at 0 range 29 .. 29;
      DRIFT          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  LIN Node Action
   type LINMR_NACT_Field is
     (--  The USART transmits the response.
      PUBLISH,
      --  The USART receives the response.
      SUBSCRIBE,
      --  The USART does not transmit and does not receive the response.
      IGNORE)
     with Size => 2;
   for LINMR_NACT_Field use
     (PUBLISH => 0,
      SUBSCRIBE => 1,
      IGNORE => 2);

   subtype USART0_LINMR_DLC_Field is Interfaces.SAM.Byte;

   --  LIN Mode Register
   type USART0_LINMR_Register is record
      --  LIN Node Action
      NACT           : LINMR_NACT_Field := Interfaces.SAM.USART.PUBLISH;
      --  Parity Disable
      PARDIS         : Boolean := False;
      --  Checksum Disable
      CHKDIS         : Boolean := False;
      --  Checksum Type
      CHKTYP         : Boolean := False;
      --  Data Length Mode
      DLM            : Boolean := False;
      --  Frame Slot Mode Disable
      FSDIS          : Boolean := False;
      --  Wakeup Signal Type
      WKUPTYP        : Boolean := False;
      --  Data Length Control
      DLC            : USART0_LINMR_DLC_Field := 16#0#;
      --  PDC Mode
      PDCM           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.SAM.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LINMR_Register use record
      NACT           at 0 range 0 .. 1;
      PARDIS         at 0 range 2 .. 2;
      CHKDIS         at 0 range 3 .. 3;
      CHKTYP         at 0 range 4 .. 4;
      DLM            at 0 range 5 .. 5;
      FSDIS          at 0 range 6 .. 6;
      WKUPTYP        at 0 range 7 .. 7;
      DLC            at 0 range 8 .. 15;
      PDCM           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype USART0_LINIR_IDCHR_Field is Interfaces.SAM.Byte;

   --  LIN Identifier Register
   type USART0_LINIR_Register is record
      --  Identifier Character
      IDCHR         : USART0_LINIR_IDCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LINIR_Register use record
      IDCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protect Mode Register
   type USART0_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : USART0_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype USART0_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  Write Protect Status Register
   type USART0_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : USART0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type USART0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : USART0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type USART0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : USART0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type USART0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : USART0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type USART0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : USART0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type USART0_PTCR_Register is record
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

   for USART0_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type USART0_PTSR_Register is record
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

   for USART0_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USART0_Disc is
     (Default,
      SPI_MODE,
      LIN_MODE);

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   type USART_Peripheral
     (Discriminent : USART0_Disc := Default)
   is record
      --  Receiver Holding Register
      RHR          : aliased USART0_RHR_Register;
      --  Transmitter Holding Register
      THR          : aliased USART0_THR_Register;
      --  Baud Rate Generator Register
      BRGR         : aliased USART0_BRGR_Register;
      --  Receiver Time-out Register
      RTOR         : aliased USART0_RTOR_Register;
      --  Transmitter Timeguard Register
      TTGR         : aliased USART0_TTGR_Register;
      --  FI DI Ratio Register
      FIDI         : aliased USART0_FIDI_Register;
      --  Number of Errors Register
      NER          : aliased USART0_NER_Register;
      --  IrDA Filter Register
      IF_k         : aliased USART0_IF_Register;
      --  Manchester Encoder Decoder Register
      MAN          : aliased USART0_MAN_Register;
      --  LIN Mode Register
      LINMR        : aliased USART0_LINMR_Register;
      --  LIN Identifier Register
      LINIR        : aliased USART0_LINIR_Register;
      --  Write Protect Mode Register
      WPMR         : aliased USART0_WPMR_Register;
      --  Write Protect Status Register
      WPSR         : aliased USART0_WPSR_Register;
      --  Receive Pointer Register
      RPR          : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR          : aliased USART0_RCR_Register;
      --  Transmit Pointer Register
      TPR          : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR          : aliased USART0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR         : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR         : aliased USART0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR         : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR         : aliased USART0_TNCR_Register;
      --  Transfer Control Register
      PTCR         : aliased USART0_PTCR_Register;
      --  Transfer Status Register
      PTSR         : aliased USART0_PTSR_Register;
      case Discriminent is
         when Default =>
            --  Control Register
            CR : aliased USART0_CR_Register;
            --  Mode Register
            MR : aliased USART0_MR_Register;
            --  Interrupt Enable Register
            IER : aliased USART0_IER_Register;
            --  Interrupt Disable Register
            IDR : aliased USART0_IDR_Register;
            --  Interrupt Mask Register
            IMR : aliased USART0_IMR_Register;
            --  Channel Status Register
            CSR : aliased USART0_CSR_Register;
         when SPI_MODE =>
            --  Control Register
            CR_SPI_MODE : aliased USART0_CR_SPI_MODE_Register;
            --  Mode Register
            MR_SPI_MODE : aliased USART0_MR_SPI_MODE_Register;
            --  Interrupt Enable Register
            IER_SPI_MODE : aliased USART0_IER_SPI_MODE_Register;
            --  Interrupt Disable Register
            IDR_SPI_MODE : aliased USART0_IDR_SPI_MODE_Register;
            --  Interrupt Mask Register
            IMR_SPI_MODE : aliased USART0_IMR_SPI_MODE_Register;
            --  Channel Status Register
            CSR_SPI_MODE : aliased USART0_CSR_SPI_MODE_Register;
         when LIN_MODE =>
            --  Interrupt Enable Register
            IER_LIN_MODE : aliased USART0_IER_LIN_MODE_Register;
            --  Interrupt Disable Register
            IDR_LIN_MODE : aliased USART0_IDR_LIN_MODE_Register;
            --  Interrupt Mask Register
            IMR_LIN_MODE : aliased USART0_IMR_LIN_MODE_Register;
            --  Channel Status Register
            CSR_LIN_MODE : aliased USART0_CSR_LIN_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      RHR          at 16#18# range 0 .. 31;
      THR          at 16#1C# range 0 .. 31;
      BRGR         at 16#20# range 0 .. 31;
      RTOR         at 16#24# range 0 .. 31;
      TTGR         at 16#28# range 0 .. 31;
      FIDI         at 16#40# range 0 .. 31;
      NER          at 16#44# range 0 .. 31;
      IF_k         at 16#4C# range 0 .. 31;
      MAN          at 16#50# range 0 .. 31;
      LINMR        at 16#54# range 0 .. 31;
      LINIR        at 16#58# range 0 .. 31;
      WPMR         at 16#E4# range 0 .. 31;
      WPSR         at 16#E8# range 0 .. 31;
      RPR          at 16#100# range 0 .. 31;
      RCR          at 16#104# range 0 .. 31;
      TPR          at 16#108# range 0 .. 31;
      TCR          at 16#10C# range 0 .. 31;
      RNPR         at 16#110# range 0 .. 31;
      RNCR         at 16#114# range 0 .. 31;
      TNPR         at 16#118# range 0 .. 31;
      TNCR         at 16#11C# range 0 .. 31;
      PTCR         at 16#120# range 0 .. 31;
      PTSR         at 16#124# range 0 .. 31;
      CR           at 16#0# range 0 .. 31;
      MR           at 16#4# range 0 .. 31;
      IER          at 16#8# range 0 .. 31;
      IDR          at 16#C# range 0 .. 31;
      IMR          at 16#10# range 0 .. 31;
      CSR          at 16#14# range 0 .. 31;
      CR_SPI_MODE  at 16#0# range 0 .. 31;
      MR_SPI_MODE  at 16#4# range 0 .. 31;
      IER_SPI_MODE at 16#8# range 0 .. 31;
      IDR_SPI_MODE at 16#C# range 0 .. 31;
      IMR_SPI_MODE at 16#10# range 0 .. 31;
      CSR_SPI_MODE at 16#14# range 0 .. 31;
      IER_LIN_MODE at 16#8# range 0 .. 31;
      IDR_LIN_MODE at 16#C# range 0 .. 31;
      IMR_LIN_MODE at 16#10# range 0 .. 31;
      CSR_LIN_MODE at 16#14# range 0 .. 31;
   end record;

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   USART0_Periph : aliased USART_Peripheral
     with Import, Address => USART0_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 1
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => USART1_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 2
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => USART2_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 3
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => USART3_Base;

end Interfaces.SAM.USART;
