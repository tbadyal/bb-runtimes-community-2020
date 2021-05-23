--
--  Copyright (C) 2020, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with System;

--  Ethernet MAC 10/100
package Interfaces.SAM.EMAC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Network Control Register
   type EMAC_NCR_Register is record
      --  LoopBack
      LB             : Boolean := False;
      --  Loopback local
      LLB            : Boolean := False;
      --  Receive enable
      RE             : Boolean := False;
      --  Transmit enable
      TE             : Boolean := False;
      --  Management port enable
      MPE            : Boolean := False;
      --  Clear statistics registers
      CLRSTAT        : Boolean := False;
      --  Increment statistics registers
      INCSTAT        : Boolean := False;
      --  Write enable for statistics registers
      WESTAT         : Boolean := False;
      --  Back pressure
      BP             : Boolean := False;
      --  Start transmission
      TSTART         : Boolean := False;
      --  Transmit halt
      THALT          : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_NCR_Register use record
      LB             at 0 range 0 .. 0;
      LLB            at 0 range 1 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      MPE            at 0 range 4 .. 4;
      CLRSTAT        at 0 range 5 .. 5;
      INCSTAT        at 0 range 6 .. 6;
      WESTAT         at 0 range 7 .. 7;
      BP             at 0 range 8 .. 8;
      TSTART         at 0 range 9 .. 9;
      THALT          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  MDC clock divider
   type NCFGR_CLK_Field is
     (--  MCK divided by 8 (MCK up to 20 MHz).
      MCK_8,
      --  MCK divided by 16 (MCK up to 40 MHz).
      MCK_16,
      --  MCK divided by 32 (MCK up to 80 MHz).
      MCK_32,
      --  MCK divided by 64 (MCK up to 160 MHz).
      MCK_64)
     with Size => 2;
   for NCFGR_CLK_Field use
     (MCK_8 => 0,
      MCK_16 => 1,
      MCK_32 => 2,
      MCK_64 => 3);

   --  Receive Buffer Offset
   type NCFGR_RBOF_Field is
     (--  No offset from start of receive buffer.
      OFFSET_0,
      --  One-byte offset from start of receive buffer.
      OFFSET_1,
      --  Two-byte offset from start of receive buffer.
      OFFSET_2,
      --  Three-byte offset from start of receive buffer.
      OFFSET_3)
     with Size => 2;
   for NCFGR_RBOF_Field use
     (OFFSET_0 => 0,
      OFFSET_1 => 1,
      OFFSET_2 => 2,
      OFFSET_3 => 3);

   --  Network Configuration Register
   type EMAC_NCFGR_Register is record
      --  Speed
      SPD            : Boolean := False;
      --  Full Duplex
      FD             : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      --  Jumbo Frames
      JFRAME         : Boolean := False;
      --  Copy All Frames
      CAF            : Boolean := False;
      --  No Broadcast
      NBC            : Boolean := False;
      --  Multicast Hash Enable
      MTI            : Boolean := False;
      --  Unicast Hash Enable
      UNI            : Boolean := False;
      --  Receive 1536 bytes frames
      BIG            : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.SAM.Bit := 16#0#;
      --  MDC clock divider
      CLK            : NCFGR_CLK_Field := Interfaces.SAM.EMAC.MCK_32;
      --  Retry test
      RTY            : Boolean := False;
      --  Pause Enable
      PAE            : Boolean := False;
      --  Receive Buffer Offset
      RBOF           : NCFGR_RBOF_Field := Interfaces.SAM.EMAC.OFFSET_0;
      --  Receive Length field Checking Enable
      RLCE           : Boolean := False;
      --  Discard Receive FCS
      DRFCS          : Boolean := False;
      EFRHD          : Boolean := False;
      --  Ignore RX FCS
      IRXFCS         : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_NCFGR_Register use record
      SPD            at 0 range 0 .. 0;
      FD             at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      JFRAME         at 0 range 3 .. 3;
      CAF            at 0 range 4 .. 4;
      NBC            at 0 range 5 .. 5;
      MTI            at 0 range 6 .. 6;
      UNI            at 0 range 7 .. 7;
      BIG            at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CLK            at 0 range 10 .. 11;
      RTY            at 0 range 12 .. 12;
      PAE            at 0 range 13 .. 13;
      RBOF           at 0 range 14 .. 15;
      RLCE           at 0 range 16 .. 16;
      DRFCS          at 0 range 17 .. 17;
      EFRHD          at 0 range 18 .. 18;
      IRXFCS         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Network Status Register
   type EMAC_NSR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.SAM.Bit;
      --  Read-only.
      MDIO          : Boolean;
      --  Read-only.
      IDLE          : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_NSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      MDIO          at 0 range 1 .. 1;
      IDLE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Transmit Status Register
   type EMAC_TSR_Register is record
      --  Used Bit Read
      UBR           : Boolean := False;
      --  Collision Occurred
      COL           : Boolean := False;
      --  Retry Limit exceeded
      RLES          : Boolean := False;
      --  Transmit Go
      TGO           : Boolean := False;
      --  Buffers exhausted mid frame
      BEX           : Boolean := False;
      --  Transmit Complete
      COMP          : Boolean := False;
      --  Transmit Underrun
      UND           : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.SAM.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_TSR_Register use record
      UBR           at 0 range 0 .. 0;
      COL           at 0 range 1 .. 1;
      RLES          at 0 range 2 .. 2;
      TGO           at 0 range 3 .. 3;
      BEX           at 0 range 4 .. 4;
      COMP          at 0 range 5 .. 5;
      UND           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EMAC_RBQP_ADDR_Field is Interfaces.SAM.UInt30;

   --  Receive Buffer Queue Pointer Register
   type EMAC_RBQP_Register is record
      --  unspecified
      Reserved_0_1 : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive buffer queue pointer address
      ADDR         : EMAC_RBQP_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_RBQP_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      ADDR         at 0 range 2 .. 31;
   end record;

   subtype EMAC_TBQP_ADDR_Field is Interfaces.SAM.UInt30;

   --  Transmit Buffer Queue Pointer Register
   type EMAC_TBQP_Register is record
      --  unspecified
      Reserved_0_1 : Interfaces.SAM.UInt2 := 16#0#;
      --  Transmit buffer queue pointer address
      ADDR         : EMAC_TBQP_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_TBQP_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      ADDR         at 0 range 2 .. 31;
   end record;

   --  Receive Status Register
   type EMAC_RSR_Register is record
      --  Buffer Not Available
      BNA           : Boolean := False;
      --  Frame Received
      REC           : Boolean := False;
      --  Receive Overrun
      OVR           : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_RSR_Register use record
      BNA           at 0 range 0 .. 0;
      REC           at 0 range 1 .. 1;
      OVR           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Status Register
   type EMAC_ISR_Register is record
      --  Management Frame Done
      MFD            : Boolean := False;
      --  Receive Complete
      RCOMP          : Boolean := False;
      --  Receive Used Bit Read
      RXUBR          : Boolean := False;
      --  Transmit Used Bit Read
      TXUBR          : Boolean := False;
      --  Ethernet Transmit Buffer Underrun
      TUND           : Boolean := False;
      --  Retry Limit Exceeded
      RLEX           : Boolean := False;
      --  Transmit Error
      TXERR          : Boolean := False;
      --  Transmit Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.SAM.UInt2 := 16#0#;
      --  Receive Overrun
      ROVR           : Boolean := False;
      --  Hresp not OK
      HRESP          : Boolean := False;
      --  Pause Frame Received
      PFRE           : Boolean := False;
      --  Pause Time Zero
      PTZ            : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_ISR_Register use record
      MFD            at 0 range 0 .. 0;
      RCOMP          at 0 range 1 .. 1;
      RXUBR          at 0 range 2 .. 2;
      TXUBR          at 0 range 3 .. 3;
      TUND           at 0 range 4 .. 4;
      RLEX           at 0 range 5 .. 5;
      TXERR          at 0 range 6 .. 6;
      TCOMP          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ROVR           at 0 range 10 .. 10;
      HRESP          at 0 range 11 .. 11;
      PFRE           at 0 range 12 .. 12;
      PTZ            at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Enable Register
   type EMAC_IER_Register is record
      --  Write-only. Management Frame sent
      MFD            : Boolean := False;
      --  Write-only. Receive Complete
      RCOMP          : Boolean := False;
      --  Write-only. Receive Used Bit Read
      RXUBR          : Boolean := False;
      --  Write-only. Transmit Used Bit Read
      TXUBR          : Boolean := False;
      --  Write-only. Ethernet Transmit Buffer Underrun
      TUND           : Boolean := False;
      --  Write-only. Retry Limit Exceeded
      RLE            : Boolean := False;
      --  Write-only.
      TXERR          : Boolean := False;
      --  Write-only. Transmit Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Receive Overrun
      ROVR           : Boolean := False;
      --  Write-only. Hresp not OK
      HRESP          : Boolean := False;
      --  Write-only. Pause Frame Received
      PFR            : Boolean := False;
      --  Write-only. Pause Time Zero
      PTZ            : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_IER_Register use record
      MFD            at 0 range 0 .. 0;
      RCOMP          at 0 range 1 .. 1;
      RXUBR          at 0 range 2 .. 2;
      TXUBR          at 0 range 3 .. 3;
      TUND           at 0 range 4 .. 4;
      RLE            at 0 range 5 .. 5;
      TXERR          at 0 range 6 .. 6;
      TCOMP          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ROVR           at 0 range 10 .. 10;
      HRESP          at 0 range 11 .. 11;
      PFR            at 0 range 12 .. 12;
      PTZ            at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Disable Register
   type EMAC_IDR_Register is record
      --  Write-only. Management Frame sent
      MFD            : Boolean := False;
      --  Write-only. Receive Complete
      RCOMP          : Boolean := False;
      --  Write-only. Receive Used Bit Read
      RXUBR          : Boolean := False;
      --  Write-only. Transmit Used Bit Read
      TXUBR          : Boolean := False;
      --  Write-only. Ethernet Transmit Buffer Underrun
      TUND           : Boolean := False;
      --  Write-only. Retry Limit Exceeded
      RLE            : Boolean := False;
      --  Write-only.
      TXERR          : Boolean := False;
      --  Write-only. Transmit Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_8_9   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Receive Overrun
      ROVR           : Boolean := False;
      --  Write-only. Hresp not OK
      HRESP          : Boolean := False;
      --  Write-only. Pause Frame Received
      PFR            : Boolean := False;
      --  Write-only. Pause Time Zero
      PTZ            : Boolean := False;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_IDR_Register use record
      MFD            at 0 range 0 .. 0;
      RCOMP          at 0 range 1 .. 1;
      RXUBR          at 0 range 2 .. 2;
      TXUBR          at 0 range 3 .. 3;
      TUND           at 0 range 4 .. 4;
      RLE            at 0 range 5 .. 5;
      TXERR          at 0 range 6 .. 6;
      TCOMP          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ROVR           at 0 range 10 .. 10;
      HRESP          at 0 range 11 .. 11;
      PFR            at 0 range 12 .. 12;
      PTZ            at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Interrupt Mask Register
   type EMAC_IMR_Register is record
      --  Read-only. Management Frame sent
      MFD            : Boolean;
      --  Read-only. Receive Complete
      RCOMP          : Boolean;
      --  Read-only. Receive Used Bit Read
      RXUBR          : Boolean;
      --  Read-only. Transmit Used Bit Read
      TXUBR          : Boolean;
      --  Read-only. Ethernet Transmit Buffer Underrun
      TUND           : Boolean;
      --  Read-only. Retry Limit Exceeded
      RLE            : Boolean;
      --  Read-only.
      TXERR          : Boolean;
      --  Read-only. Transmit Complete
      TCOMP          : Boolean;
      --  unspecified
      Reserved_8_9   : Interfaces.SAM.UInt2;
      --  Read-only. Receive Overrun
      ROVR           : Boolean;
      --  Read-only. Hresp not OK
      HRESP          : Boolean;
      --  Read-only. Pause Frame Received
      PFR            : Boolean;
      --  Read-only. Pause Time Zero
      PTZ            : Boolean;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_IMR_Register use record
      MFD            at 0 range 0 .. 0;
      RCOMP          at 0 range 1 .. 1;
      RXUBR          at 0 range 2 .. 2;
      TXUBR          at 0 range 3 .. 3;
      TUND           at 0 range 4 .. 4;
      RLE            at 0 range 5 .. 5;
      TXERR          at 0 range 6 .. 6;
      TCOMP          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ROVR           at 0 range 10 .. 10;
      HRESP          at 0 range 11 .. 11;
      PFR            at 0 range 12 .. 12;
      PTZ            at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype EMAC_MAN_DATA_Field is Interfaces.SAM.UInt16;
   subtype EMAC_MAN_CODE_Field is Interfaces.SAM.UInt2;
   subtype EMAC_MAN_REGA_Field is Interfaces.SAM.UInt5;
   subtype EMAC_MAN_PHYA_Field is Interfaces.SAM.UInt5;
   subtype EMAC_MAN_RW_Field is Interfaces.SAM.UInt2;
   subtype EMAC_MAN_SOF_Field is Interfaces.SAM.UInt2;

   --  Phy Maintenance Register
   type EMAC_MAN_Register is record
      DATA : EMAC_MAN_DATA_Field := 16#0#;
      CODE : EMAC_MAN_CODE_Field := 16#0#;
      --  Register Address
      REGA : EMAC_MAN_REGA_Field := 16#0#;
      --  PHY Address
      PHYA : EMAC_MAN_PHYA_Field := 16#0#;
      --  Read-write
      RW   : EMAC_MAN_RW_Field := 16#0#;
      --  Start of frame
      SOF  : EMAC_MAN_SOF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_MAN_Register use record
      DATA at 0 range 0 .. 15;
      CODE at 0 range 16 .. 17;
      REGA at 0 range 18 .. 22;
      PHYA at 0 range 23 .. 27;
      RW   at 0 range 28 .. 29;
      SOF  at 0 range 30 .. 31;
   end record;

   subtype EMAC_PTR_PTIME_Field is Interfaces.SAM.UInt16;

   --  Pause Time Register
   type EMAC_PTR_Register is record
      --  Pause Time
      PTIME          : EMAC_PTR_PTIME_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_PTR_Register use record
      PTIME          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_PFR_FROK_Field is Interfaces.SAM.UInt16;

   --  Pause Frames Received Register
   type EMAC_PFR_Register is record
      --  Pause Frames received OK
      FROK           : EMAC_PFR_FROK_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_PFR_Register use record
      FROK           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_FTO_FTOK_Field is Interfaces.SAM.UInt24;

   --  Frames Transmitted Ok Register
   type EMAC_FTO_Register is record
      --  Frames Transmitted OK
      FTOK           : EMAC_FTO_FTOK_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_FTO_Register use record
      FTOK           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype EMAC_SCF_SCF_Field is Interfaces.SAM.UInt16;

   --  Single Collision Frames Register
   type EMAC_SCF_Register is record
      --  Single Collision Frames
      SCF            : EMAC_SCF_SCF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_SCF_Register use record
      SCF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_MCF_MCF_Field is Interfaces.SAM.UInt16;

   --  Multiple Collision Frames Register
   type EMAC_MCF_Register is record
      --  Multicollision Frames
      MCF            : EMAC_MCF_MCF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_MCF_Register use record
      MCF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_FRO_FROK_Field is Interfaces.SAM.UInt24;

   --  Frames Received Ok Register
   type EMAC_FRO_Register is record
      --  Frames Received OK
      FROK           : EMAC_FRO_FROK_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_FRO_Register use record
      FROK           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype EMAC_FCSE_FCSE_Field is Interfaces.SAM.Byte;

   --  Frame Check Sequence Errors Register
   type EMAC_FCSE_Register is record
      --  Frame Check Sequence Errors
      FCSE          : EMAC_FCSE_FCSE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_FCSE_Register use record
      FCSE          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_ALE_ALE_Field is Interfaces.SAM.Byte;

   --  Alignment Errors Register
   type EMAC_ALE_Register is record
      --  Alignment Errors
      ALE           : EMAC_ALE_ALE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_ALE_Register use record
      ALE           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_DTF_DTF_Field is Interfaces.SAM.UInt16;

   --  Deferred Transmission Frames Register
   type EMAC_DTF_Register is record
      --  Deferred Transmission Frames
      DTF            : EMAC_DTF_DTF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_DTF_Register use record
      DTF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_LCOL_LCOL_Field is Interfaces.SAM.Byte;

   --  Late Collisions Register
   type EMAC_LCOL_Register is record
      --  Late Collisions
      LCOL          : EMAC_LCOL_LCOL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_LCOL_Register use record
      LCOL          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_ECOL_EXCOL_Field is Interfaces.SAM.Byte;

   --  Excessive Collisions Register
   type EMAC_ECOL_Register is record
      --  Excessive Collisions
      EXCOL         : EMAC_ECOL_EXCOL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_ECOL_Register use record
      EXCOL         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_TUND_TUND_Field is Interfaces.SAM.Byte;

   --  Transmit Underrun Errors Register
   type EMAC_TUND_Register is record
      --  Transmit Underruns
      TUND          : EMAC_TUND_TUND_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_TUND_Register use record
      TUND          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_CSE_CSE_Field is Interfaces.SAM.Byte;

   --  Carrier Sense Errors Register
   type EMAC_CSE_Register is record
      --  Carrier Sense Errors
      CSE           : EMAC_CSE_CSE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_CSE_Register use record
      CSE           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_RRE_RRE_Field is Interfaces.SAM.UInt16;

   --  Receive Resource Errors Register
   type EMAC_RRE_Register is record
      --  Receive Resource Errors
      RRE            : EMAC_RRE_RRE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_RRE_Register use record
      RRE            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_ROV_ROVR_Field is Interfaces.SAM.Byte;

   --  Receive Overrun Errors Register
   type EMAC_ROV_Register is record
      --  Receive Overrun
      ROVR          : EMAC_ROV_ROVR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_ROV_Register use record
      ROVR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_RSE_RSE_Field is Interfaces.SAM.Byte;

   --  Receive Symbol Errors Register
   type EMAC_RSE_Register is record
      --  Receive Symbol Errors
      RSE           : EMAC_RSE_RSE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_RSE_Register use record
      RSE           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_ELE_EXL_Field is Interfaces.SAM.Byte;

   --  Excessive Length Errors Register
   type EMAC_ELE_Register is record
      --  Excessive Length Errors
      EXL           : EMAC_ELE_EXL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_ELE_Register use record
      EXL           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_RJA_RJB_Field is Interfaces.SAM.Byte;

   --  Receive Jabbers Register
   type EMAC_RJA_Register is record
      --  Receive Jabbers
      RJB           : EMAC_RJA_RJB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_RJA_Register use record
      RJB           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_USF_USF_Field is Interfaces.SAM.Byte;

   --  Undersize Frames Register
   type EMAC_USF_Register is record
      --  Undersize frames
      USF           : EMAC_USF_USF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_USF_Register use record
      USF           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_STE_SQER_Field is Interfaces.SAM.Byte;

   --  SQE Test Errors Register
   type EMAC_STE_Register is record
      --  SQE test errors
      SQER          : EMAC_STE_SQER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_STE_Register use record
      SQER          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_RLE_RLFM_Field is Interfaces.SAM.Byte;

   --  Received Length Field Mismatch Register
   type EMAC_RLE_Register is record
      --  Receive Length Field Mismatch
      RLFM          : EMAC_RLE_RLFM_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_RLE_Register use record
      RLFM          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EMAC_SA1T_ADDR_Field is Interfaces.SAM.UInt16;

   --  Specific Address 1 Top Register
   type EMAC_SA1T_Register is record
      ADDR           : EMAC_SA1T_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_SA1T_Register use record
      ADDR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_SA2T_ADDR_Field is Interfaces.SAM.UInt16;

   --  Specific Address 2 Top Register
   type EMAC_SA2T_Register is record
      ADDR           : EMAC_SA2T_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_SA2T_Register use record
      ADDR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_SA3T_ADDR_Field is Interfaces.SAM.UInt16;

   --  Specific Address 3 Top Register
   type EMAC_SA3T_Register is record
      ADDR           : EMAC_SA3T_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_SA3T_Register use record
      ADDR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_SA4T_ADDR_Field is Interfaces.SAM.UInt16;

   --  Specific Address 4 Top Register
   type EMAC_SA4T_Register is record
      ADDR           : EMAC_SA4T_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_SA4T_Register use record
      ADDR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMAC_TID_TID_Field is Interfaces.SAM.UInt16;

   --  Type ID Checking Register
   type EMAC_TID_Register is record
      --  Type ID checking
      TID            : EMAC_TID_TID_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_TID_Register use record
      TID            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  User Input/Output Register
   type EMAC_USRIO_Register is record
      --  Reduce MII
      RMII          : Boolean := False;
      --  Clock Enable
      CLKEN         : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMAC_USRIO_Register use record
      RMII          at 0 range 0 .. 0;
      CLKEN         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Ethernet MAC 10/100
   type EMAC_Peripheral is record
      --  Network Control Register
      NCR   : aliased EMAC_NCR_Register;
      --  Network Configuration Register
      NCFGR : aliased EMAC_NCFGR_Register;
      --  Network Status Register
      NSR   : aliased EMAC_NSR_Register;
      --  Transmit Status Register
      TSR   : aliased EMAC_TSR_Register;
      --  Receive Buffer Queue Pointer Register
      RBQP  : aliased EMAC_RBQP_Register;
      --  Transmit Buffer Queue Pointer Register
      TBQP  : aliased EMAC_TBQP_Register;
      --  Receive Status Register
      RSR   : aliased EMAC_RSR_Register;
      --  Interrupt Status Register
      ISR   : aliased EMAC_ISR_Register;
      --  Interrupt Enable Register
      IER   : aliased EMAC_IER_Register;
      --  Interrupt Disable Register
      IDR   : aliased EMAC_IDR_Register;
      --  Interrupt Mask Register
      IMR   : aliased EMAC_IMR_Register;
      --  Phy Maintenance Register
      MAN   : aliased EMAC_MAN_Register;
      --  Pause Time Register
      PTR   : aliased EMAC_PTR_Register;
      --  Pause Frames Received Register
      PFR   : aliased EMAC_PFR_Register;
      --  Frames Transmitted Ok Register
      FTO   : aliased EMAC_FTO_Register;
      --  Single Collision Frames Register
      SCF   : aliased EMAC_SCF_Register;
      --  Multiple Collision Frames Register
      MCF   : aliased EMAC_MCF_Register;
      --  Frames Received Ok Register
      FRO   : aliased EMAC_FRO_Register;
      --  Frame Check Sequence Errors Register
      FCSE  : aliased EMAC_FCSE_Register;
      --  Alignment Errors Register
      ALE   : aliased EMAC_ALE_Register;
      --  Deferred Transmission Frames Register
      DTF   : aliased EMAC_DTF_Register;
      --  Late Collisions Register
      LCOL  : aliased EMAC_LCOL_Register;
      --  Excessive Collisions Register
      ECOL  : aliased EMAC_ECOL_Register;
      --  Transmit Underrun Errors Register
      TUND  : aliased EMAC_TUND_Register;
      --  Carrier Sense Errors Register
      CSE   : aliased EMAC_CSE_Register;
      --  Receive Resource Errors Register
      RRE   : aliased EMAC_RRE_Register;
      --  Receive Overrun Errors Register
      ROV   : aliased EMAC_ROV_Register;
      --  Receive Symbol Errors Register
      RSE   : aliased EMAC_RSE_Register;
      --  Excessive Length Errors Register
      ELE   : aliased EMAC_ELE_Register;
      --  Receive Jabbers Register
      RJA   : aliased EMAC_RJA_Register;
      --  Undersize Frames Register
      USF   : aliased EMAC_USF_Register;
      --  SQE Test Errors Register
      STE   : aliased EMAC_STE_Register;
      --  Received Length Field Mismatch Register
      RLE   : aliased EMAC_RLE_Register;
      --  Hash Register Bottom [31:0] Register
      HRB   : aliased Interfaces.SAM.UInt32;
      --  Hash Register Top [63:32] Register
      HRT   : aliased Interfaces.SAM.UInt32;
      --  Specific Address 1 Bottom Register
      SA1B  : aliased Interfaces.SAM.UInt32;
      --  Specific Address 1 Top Register
      SA1T  : aliased EMAC_SA1T_Register;
      --  Specific Address 2 Bottom Register
      SA2B  : aliased Interfaces.SAM.UInt32;
      --  Specific Address 2 Top Register
      SA2T  : aliased EMAC_SA2T_Register;
      --  Specific Address 3 Bottom Register
      SA3B  : aliased Interfaces.SAM.UInt32;
      --  Specific Address 3 Top Register
      SA3T  : aliased EMAC_SA3T_Register;
      --  Specific Address 4 Bottom Register
      SA4B  : aliased Interfaces.SAM.UInt32;
      --  Specific Address 4 Top Register
      SA4T  : aliased EMAC_SA4T_Register;
      --  Type ID Checking Register
      TID   : aliased EMAC_TID_Register;
      --  User Input/Output Register
      USRIO : aliased EMAC_USRIO_Register;
   end record
     with Volatile;

   for EMAC_Peripheral use record
      NCR   at 16#0# range 0 .. 31;
      NCFGR at 16#4# range 0 .. 31;
      NSR   at 16#8# range 0 .. 31;
      TSR   at 16#14# range 0 .. 31;
      RBQP  at 16#18# range 0 .. 31;
      TBQP  at 16#1C# range 0 .. 31;
      RSR   at 16#20# range 0 .. 31;
      ISR   at 16#24# range 0 .. 31;
      IER   at 16#28# range 0 .. 31;
      IDR   at 16#2C# range 0 .. 31;
      IMR   at 16#30# range 0 .. 31;
      MAN   at 16#34# range 0 .. 31;
      PTR   at 16#38# range 0 .. 31;
      PFR   at 16#3C# range 0 .. 31;
      FTO   at 16#40# range 0 .. 31;
      SCF   at 16#44# range 0 .. 31;
      MCF   at 16#48# range 0 .. 31;
      FRO   at 16#4C# range 0 .. 31;
      FCSE  at 16#50# range 0 .. 31;
      ALE   at 16#54# range 0 .. 31;
      DTF   at 16#58# range 0 .. 31;
      LCOL  at 16#5C# range 0 .. 31;
      ECOL  at 16#60# range 0 .. 31;
      TUND  at 16#64# range 0 .. 31;
      CSE   at 16#68# range 0 .. 31;
      RRE   at 16#6C# range 0 .. 31;
      ROV   at 16#70# range 0 .. 31;
      RSE   at 16#74# range 0 .. 31;
      ELE   at 16#78# range 0 .. 31;
      RJA   at 16#7C# range 0 .. 31;
      USF   at 16#80# range 0 .. 31;
      STE   at 16#84# range 0 .. 31;
      RLE   at 16#88# range 0 .. 31;
      HRB   at 16#90# range 0 .. 31;
      HRT   at 16#94# range 0 .. 31;
      SA1B  at 16#98# range 0 .. 31;
      SA1T  at 16#9C# range 0 .. 31;
      SA2B  at 16#A0# range 0 .. 31;
      SA2T  at 16#A4# range 0 .. 31;
      SA3B  at 16#A8# range 0 .. 31;
      SA3T  at 16#AC# range 0 .. 31;
      SA4B  at 16#B0# range 0 .. 31;
      SA4T  at 16#B4# range 0 .. 31;
      TID   at 16#B8# range 0 .. 31;
      USRIO at 16#C0# range 0 .. 31;
   end record;

   --  Ethernet MAC 10/100
   EMAC_Periph : aliased EMAC_Peripheral
     with Import, Address => EMAC_Base;

end Interfaces.SAM.EMAC;
