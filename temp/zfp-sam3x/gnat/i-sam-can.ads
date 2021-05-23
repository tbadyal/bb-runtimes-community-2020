--
--  Copyright (C) 2020, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with System;

package Interfaces.SAM.CAN is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Reception Synchronization Stage (not readable)
   type MR_RXSYNC_Field is
     (--  Rx Signal with Double Synchro Stages (2 Positive Edges)
      DOUBLE_PP,
      --  Rx Signal with Double Synchro Stages (One Positive Edge and One Negative
--  Edge)
      DOUBLE_PN,
      --  Rx Signal with Single Synchro Stage (Positive Edge)
      SINGLE_P,
      --  Rx Signal with No Synchro Stage
      NONE)
     with Size => 3;
   for MR_RXSYNC_Field use
     (DOUBLE_PP => 0,
      DOUBLE_PN => 1,
      SINGLE_P => 2,
      NONE => 3);

   --  Mode Register
   type CAN0_MR_Register is record
      --  CAN Controller Enable
      CANEN          : Boolean := False;
      --  Disable/Enable Low Power Mode
      LPM            : Boolean := False;
      --  Disable/Enable Autobaud/Listen mode
      ABM            : Boolean := False;
      --  Disable/Enable Overload Frame
      OVL            : Boolean := False;
      --  Timestamp messages at each end of Frame
      TEOF           : Boolean := False;
      --  Disable/Enable Time Triggered Mode
      TTM            : Boolean := False;
      --  Enable Timer Freeze
      TIMFRZ         : Boolean := False;
      --  Disable Repeat
      DRPT           : Boolean := False;
      --  unspecified
      Reserved_8_23  : Interfaces.SAM.UInt16 := 16#0#;
      --  Reception Synchronization Stage (not readable)
      RXSYNC         : MR_RXSYNC_Field := Interfaces.SAM.CAN.DOUBLE_PP;
      --  unspecified
      Reserved_27_31 : Interfaces.SAM.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_MR_Register use record
      CANEN          at 0 range 0 .. 0;
      LPM            at 0 range 1 .. 1;
      ABM            at 0 range 2 .. 2;
      OVL            at 0 range 3 .. 3;
      TEOF           at 0 range 4 .. 4;
      TTM            at 0 range 5 .. 5;
      TIMFRZ         at 0 range 6 .. 6;
      DRPT           at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      RXSYNC         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  CAN0_IER_MB array
   type CAN0_IER_MB_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for CAN0_IER_MB
   type CAN0_IER_MB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MB as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  MB as an array
            Arr : CAN0_IER_MB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CAN0_IER_MB_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Enable Register
   type CAN0_IER_Register is record
      --  Write-only. Mailbox 0 Interrupt Enable
      MB             : CAN0_IER_MB_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte := 16#0#;
      --  Write-only. Error Active Mode Interrupt Enable
      ERRA           : Boolean := False;
      --  Write-only. Warning Limit Interrupt Enable
      WARN           : Boolean := False;
      --  Write-only. Error Passive Mode Interrupt Enable
      ERRP           : Boolean := False;
      --  Write-only. Bus Off Mode Interrupt Enable
      BOFF           : Boolean := False;
      --  Write-only. Sleep Interrupt Enable
      SLEEP          : Boolean := False;
      --  Write-only. Wakeup Interrupt Enable
      WAKEUP         : Boolean := False;
      --  Write-only. Timer Overflow Interrupt Enable
      TOVF           : Boolean := False;
      --  Write-only. TimeStamp Interrupt Enable
      TSTP           : Boolean := False;
      --  Write-only. CRC Error Interrupt Enable
      CERR           : Boolean := False;
      --  Write-only. Stuffing Error Interrupt Enable
      SERR           : Boolean := False;
      --  Write-only. Acknowledgment Error Interrupt Enable
      AERR           : Boolean := False;
      --  Write-only. Form Error Interrupt Enable
      FERR           : Boolean := False;
      --  Write-only. Bit Error Interrupt Enable
      BERR           : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_IER_Register use record
      MB             at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ERRA           at 0 range 16 .. 16;
      WARN           at 0 range 17 .. 17;
      ERRP           at 0 range 18 .. 18;
      BOFF           at 0 range 19 .. 19;
      SLEEP          at 0 range 20 .. 20;
      WAKEUP         at 0 range 21 .. 21;
      TOVF           at 0 range 22 .. 22;
      TSTP           at 0 range 23 .. 23;
      CERR           at 0 range 24 .. 24;
      SERR           at 0 range 25 .. 25;
      AERR           at 0 range 26 .. 26;
      FERR           at 0 range 27 .. 27;
      BERR           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  CAN0_IDR_MB array
   type CAN0_IDR_MB_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for CAN0_IDR_MB
   type CAN0_IDR_MB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MB as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  MB as an array
            Arr : CAN0_IDR_MB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CAN0_IDR_MB_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Disable Register
   type CAN0_IDR_Register is record
      --  Write-only. Mailbox 0 Interrupt Disable
      MB             : CAN0_IDR_MB_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte := 16#0#;
      --  Write-only. Error Active Mode Interrupt Disable
      ERRA           : Boolean := False;
      --  Write-only. Warning Limit Interrupt Disable
      WARN           : Boolean := False;
      --  Write-only. Error Passive Mode Interrupt Disable
      ERRP           : Boolean := False;
      --  Write-only. Bus Off Mode Interrupt Disable
      BOFF           : Boolean := False;
      --  Write-only. Sleep Interrupt Disable
      SLEEP          : Boolean := False;
      --  Write-only. Wakeup Interrupt Disable
      WAKEUP         : Boolean := False;
      --  Write-only. Timer Overflow Interrupt
      TOVF           : Boolean := False;
      --  Write-only. TimeStamp Interrupt Disable
      TSTP           : Boolean := False;
      --  Write-only. CRC Error Interrupt Disable
      CERR           : Boolean := False;
      --  Write-only. Stuffing Error Interrupt Disable
      SERR           : Boolean := False;
      --  Write-only. Acknowledgment Error Interrupt Disable
      AERR           : Boolean := False;
      --  Write-only. Form Error Interrupt Disable
      FERR           : Boolean := False;
      --  Write-only. Bit Error Interrupt Disable
      BERR           : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_IDR_Register use record
      MB             at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ERRA           at 0 range 16 .. 16;
      WARN           at 0 range 17 .. 17;
      ERRP           at 0 range 18 .. 18;
      BOFF           at 0 range 19 .. 19;
      SLEEP          at 0 range 20 .. 20;
      WAKEUP         at 0 range 21 .. 21;
      TOVF           at 0 range 22 .. 22;
      TSTP           at 0 range 23 .. 23;
      CERR           at 0 range 24 .. 24;
      SERR           at 0 range 25 .. 25;
      AERR           at 0 range 26 .. 26;
      FERR           at 0 range 27 .. 27;
      BERR           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  CAN0_IMR_MB array
   type CAN0_IMR_MB_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for CAN0_IMR_MB
   type CAN0_IMR_MB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MB as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  MB as an array
            Arr : CAN0_IMR_MB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CAN0_IMR_MB_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt Mask Register
   type CAN0_IMR_Register is record
      --  Read-only. Mailbox 0 Interrupt Mask
      MB             : CAN0_IMR_MB_Field;
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte;
      --  Read-only. Error Active Mode Interrupt Mask
      ERRA           : Boolean;
      --  Read-only. Warning Limit Interrupt Mask
      WARN           : Boolean;
      --  Read-only. Error Passive Mode Interrupt Mask
      ERRP           : Boolean;
      --  Read-only. Bus Off Mode Interrupt Mask
      BOFF           : Boolean;
      --  Read-only. Sleep Interrupt Mask
      SLEEP          : Boolean;
      --  Read-only. Wakeup Interrupt Mask
      WAKEUP         : Boolean;
      --  Read-only. Timer Overflow Interrupt Mask
      TOVF           : Boolean;
      --  Read-only. Timestamp Interrupt Mask
      TSTP           : Boolean;
      --  Read-only. CRC Error Interrupt Mask
      CERR           : Boolean;
      --  Read-only. Stuffing Error Interrupt Mask
      SERR           : Boolean;
      --  Read-only. Acknowledgment Error Interrupt Mask
      AERR           : Boolean;
      --  Read-only. Form Error Interrupt Mask
      FERR           : Boolean;
      --  Read-only. Bit Error Interrupt Mask
      BERR           : Boolean;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_IMR_Register use record
      MB             at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ERRA           at 0 range 16 .. 16;
      WARN           at 0 range 17 .. 17;
      ERRP           at 0 range 18 .. 18;
      BOFF           at 0 range 19 .. 19;
      SLEEP          at 0 range 20 .. 20;
      WAKEUP         at 0 range 21 .. 21;
      TOVF           at 0 range 22 .. 22;
      TSTP           at 0 range 23 .. 23;
      CERR           at 0 range 24 .. 24;
      SERR           at 0 range 25 .. 25;
      AERR           at 0 range 26 .. 26;
      FERR           at 0 range 27 .. 27;
      BERR           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  CAN0_SR_MB array
   type CAN0_SR_MB_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for CAN0_SR_MB
   type CAN0_SR_MB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MB as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  MB as an array
            Arr : CAN0_SR_MB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CAN0_SR_MB_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Status Register
   type CAN0_SR_Register is record
      --  Read-only. Mailbox 0 Event
      MB            : CAN0_SR_MB_Field;
      --  unspecified
      Reserved_8_15 : Interfaces.SAM.Byte;
      --  Read-only. Error Active Mode
      ERRA          : Boolean;
      --  Read-only. Warning Limit
      WARN          : Boolean;
      --  Read-only. Error Passive Mode
      ERRP          : Boolean;
      --  Read-only. Bus Off Mode
      BOFF          : Boolean;
      --  Read-only. CAN controller in Low power Mode
      SLEEP         : Boolean;
      --  Read-only. CAN controller is not in Low power Mode
      WAKEUP        : Boolean;
      --  Read-only. Timer Overflow
      TOVF          : Boolean;
      --  Read-only.
      TSTP          : Boolean;
      --  Read-only. Mailbox CRC Error
      CERR          : Boolean;
      --  Read-only. Mailbox Stuffing Error
      SERR          : Boolean;
      --  Read-only. Acknowledgment Error
      AERR          : Boolean;
      --  Read-only. Form Error
      FERR          : Boolean;
      --  Read-only. Bit Error
      BERR          : Boolean;
      --  Read-only. Receiver busy
      RBSY          : Boolean;
      --  Read-only. Transmitter busy
      TBSY          : Boolean;
      --  Read-only. Overload busy
      OVLSY         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_SR_Register use record
      MB            at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      ERRA          at 0 range 16 .. 16;
      WARN          at 0 range 17 .. 17;
      ERRP          at 0 range 18 .. 18;
      BOFF          at 0 range 19 .. 19;
      SLEEP         at 0 range 20 .. 20;
      WAKEUP        at 0 range 21 .. 21;
      TOVF          at 0 range 22 .. 22;
      TSTP          at 0 range 23 .. 23;
      CERR          at 0 range 24 .. 24;
      SERR          at 0 range 25 .. 25;
      AERR          at 0 range 26 .. 26;
      FERR          at 0 range 27 .. 27;
      BERR          at 0 range 28 .. 28;
      RBSY          at 0 range 29 .. 29;
      TBSY          at 0 range 30 .. 30;
      OVLSY         at 0 range 31 .. 31;
   end record;

   subtype CAN0_BR_PHASE2_Field is Interfaces.SAM.UInt3;
   subtype CAN0_BR_PHASE1_Field is Interfaces.SAM.UInt3;
   subtype CAN0_BR_PROPAG_Field is Interfaces.SAM.UInt3;
   subtype CAN0_BR_SJW_Field is Interfaces.SAM.UInt2;
   subtype CAN0_BR_BRP_Field is Interfaces.SAM.UInt7;

   --  Sampling Mode
   type BR_SMP_Field is
     (--  The incoming bit stream is sampled once at sample point.
      ONCE,
      --  The incoming bit stream is sampled three times with a period of a MCK clock
--  period, centered on sample point.
      THREE)
     with Size => 1;
   for BR_SMP_Field use
     (ONCE => 0,
      THREE => 1);

   --  Baudrate Register
   type CAN0_BR_Register is record
      --  Phase 2 segment
      PHASE2         : CAN0_BR_PHASE2_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Phase 1 segment
      PHASE1         : CAN0_BR_PHASE1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Programming time segment
      PROPAG         : CAN0_BR_PROPAG_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit := 16#0#;
      --  Re-synchronization jump width
      SJW            : CAN0_BR_SJW_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  Baudrate Prescaler.
      BRP            : CAN0_BR_BRP_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Sampling Mode
      SMP            : BR_SMP_Field := Interfaces.SAM.CAN.ONCE;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_BR_Register use record
      PHASE2         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PHASE1         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PROPAG         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SJW            at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BRP            at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SMP            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CAN0_TIM_TIMER_Field is Interfaces.SAM.UInt16;

   --  Timer Register
   type CAN0_TIM_Register is record
      --  Read-only. Timer
      TIMER          : CAN0_TIM_TIMER_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_TIM_Register use record
      TIMER          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CAN0_TIMESTP_MTIMESTAMP_Field is Interfaces.SAM.UInt16;

   --  Timestamp Register
   type CAN0_TIMESTP_Register is record
      --  Read-only. Timestamp
      MTIMESTAMP     : CAN0_TIMESTP_MTIMESTAMP_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_TIMESTP_Register use record
      MTIMESTAMP     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CAN0_ECR_REC_Field is Interfaces.SAM.Byte;
   subtype CAN0_ECR_TEC_Field is Interfaces.SAM.Byte;

   --  Error Counter Register
   type CAN0_ECR_Register is record
      --  Read-only. Receive Error Counter
      REC            : CAN0_ECR_REC_Field;
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte;
      --  Read-only. Transmit Error Counter
      TEC            : CAN0_ECR_TEC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_ECR_Register use record
      REC            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TEC            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  CAN0_TCR_MB array
   type CAN0_TCR_MB_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for CAN0_TCR_MB
   type CAN0_TCR_MB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MB as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  MB as an array
            Arr : CAN0_TCR_MB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CAN0_TCR_MB_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Transfer Command Register
   type CAN0_TCR_Register is record
      --  Write-only. Transfer Request for Mailbox 0
      MB            : CAN0_TCR_MB_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_30 : Interfaces.SAM.UInt23 := 16#0#;
      --  Write-only. Timer Reset
      TIMRST        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_TCR_Register use record
      MB            at 0 range 0 .. 7;
      Reserved_8_30 at 0 range 8 .. 30;
      TIMRST        at 0 range 31 .. 31;
   end record;

   --  CAN0_ACR_MB array
   type CAN0_ACR_MB_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for CAN0_ACR_MB
   type CAN0_ACR_MB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MB as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  MB as an array
            Arr : CAN0_ACR_MB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CAN0_ACR_MB_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Abort Command Register
   type CAN0_ACR_Register is record
      --  Write-only. Abort Request for Mailbox 0
      MB            : CAN0_ACR_MB_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_ACR_Register use record
      MB            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CAN0_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protect Mode Register
   type CAN0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  SPI Write Protection Key Password
      WPKEY        : CAN0_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype CAN0_WPSR_WPVSRC_Field is Interfaces.SAM.Byte;

   --  Write Protect Status Register
   type CAN0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : CAN0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAN0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MMR_MTIMEMARK_Field is Interfaces.SAM.UInt16;
   subtype MMR_PRIOR_Field is Interfaces.SAM.UInt4;

   --  Mailbox Object Type
   type MMR0_MOT_Field is
     (--  Mailbox is disabled. This prevents receiving or transmitting any messages
--  with this mailbox.
      MB_DISABLED,
      --  Reception Mailbox. Mailbox is configured for reception. If a message is
--  received while the mailbox data register is full, it is discarded.
      MB_RX,
      --  Reception mailbox with overwrite. Mailbox is configured for reception. If a
--  message is received while the mailbox is full, it overwrites the previous
--  message.
      MB_RX_OVERWRITE,
      --  Transmit mailbox. Mailbox is configured for transmission.
      MB_TX,
      --  Consumer Mailbox. Mailbox is configured in reception but behaves as a
--  Transmit Mailbox, i.e., it sends a remote frame and waits for an answer.
      MB_CONSUMER,
      --  Producer Mailbox. Mailbox is configured in transmission but also behaves
--  like a reception mailbox, i.e., it waits to receive a Remote Frame before
--  sending its contents.
      MB_PRODUCER)
     with Size => 3;
   for MMR0_MOT_Field use
     (MB_DISABLED => 0,
      MB_RX => 1,
      MB_RX_OVERWRITE => 2,
      MB_TX => 3,
      MB_CONSUMER => 4,
      MB_PRODUCER => 5);

   --  Mailbox Mode Register (MB = 0)
   type MMR_Register is record
      --  Mailbox Timemark
      MTIMEMARK      : MMR_MTIMEMARK_Field := 16#0#;
      --  Mailbox Priority
      PRIOR          : MMR_PRIOR_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Mailbox Object Type
      MOT            : MMR0_MOT_Field := Interfaces.SAM.CAN.MB_DISABLED;
      --  unspecified
      Reserved_27_31 : Interfaces.SAM.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MMR_Register use record
      MTIMEMARK      at 0 range 0 .. 15;
      PRIOR          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MOT            at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype MAM_MIDvB_Field is Interfaces.SAM.UInt18;
   subtype MAM_MIDvA_Field is Interfaces.SAM.UInt11;

   --  Mailbox Acceptance Mask Register (MB = 0)
   type MAM_Register is record
      --  Complementary bits for identifier in extended frame mode
      MIDvB          : MAM_MIDvB_Field := 16#0#;
      --  Identifier for standard frame mode
      MIDvA          : MAM_MIDvA_Field := 16#0#;
      --  Identifier Version
      MIDE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAM_Register use record
      MIDvB          at 0 range 0 .. 17;
      MIDvA          at 0 range 18 .. 28;
      MIDE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MID_MIDvB_Field is Interfaces.SAM.UInt18;
   subtype MID_MIDvA_Field is Interfaces.SAM.UInt11;

   --  Mailbox ID Register (MB = 0)
   type MID_Register is record
      --  Complementary bits for identifier in extended frame mode
      MIDvB          : MID_MIDvB_Field := 16#0#;
      --  Identifier for standard frame mode
      MIDvA          : MID_MIDvA_Field := 16#0#;
      --  Identifier Version
      MIDE           : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MID_Register use record
      MIDvB          at 0 range 0 .. 17;
      MIDvA          at 0 range 18 .. 28;
      MIDE           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MFID_MFID_Field is Interfaces.SAM.UInt29;

   --  Mailbox Family ID Register (MB = 0)
   type MFID_Register is record
      --  Read-only. Family ID
      MFID           : MFID_MFID_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MFID_Register use record
      MFID           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype MSR_MTIMESTAMP_Field is Interfaces.SAM.UInt16;
   subtype MSR_MDLC_Field is Interfaces.SAM.UInt4;

   --  Mailbox Status Register (MB = 0)
   type MSR_Register is record
      --  Read-only. Timer value
      MTIMESTAMP     : MSR_MTIMESTAMP_Field;
      --  Read-only. Mailbox Data Length Code
      MDLC           : MSR_MDLC_Field;
      --  Read-only. Mailbox Remote Transmission Request
      MRTR           : Boolean;
      --  unspecified
      Reserved_21_21 : Interfaces.SAM.Bit;
      --  Read-only. Mailbox Message Abort
      MABT           : Boolean;
      --  Read-only. Mailbox Ready
      MRDY           : Boolean;
      --  Read-only. Mailbox Message Ignored
      MMI            : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSR_Register use record
      MTIMESTAMP     at 0 range 0 .. 15;
      MDLC           at 0 range 16 .. 19;
      MRTR           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      MABT           at 0 range 22 .. 22;
      MRDY           at 0 range 23 .. 23;
      MMI            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype MCR_MDLC_Field is Interfaces.SAM.UInt4;

   --  Mailbox Control Register (MB = 0)
   type MCR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.SAM.UInt16 := 16#0#;
      --  Write-only. Mailbox Data Length Code
      MDLC           : MCR_MDLC_Field := 16#0#;
      --  Write-only. Mailbox Remote Transmission Request
      MRTR           : Boolean := False;
      --  unspecified
      Reserved_21_21 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Abort Request for Mailbox x
      MACR           : Boolean := False;
      --  Write-only. Mailbox Transfer Command
      MTCR           : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      MDLC           at 0 range 16 .. 19;
      MRTR           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      MACR           at 0 range 22 .. 22;
      MTCR           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Controller Area Network 0
   type CAN_Peripheral is record
      --  Mode Register
      MR      : aliased CAN0_MR_Register;
      --  Interrupt Enable Register
      IER     : aliased CAN0_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased CAN0_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased CAN0_IMR_Register;
      --  Status Register
      SR      : aliased CAN0_SR_Register;
      --  Baudrate Register
      BR      : aliased CAN0_BR_Register;
      --  Timer Register
      TIM     : aliased CAN0_TIM_Register;
      --  Timestamp Register
      TIMESTP : aliased CAN0_TIMESTP_Register;
      --  Error Counter Register
      ECR     : aliased CAN0_ECR_Register;
      --  Transfer Command Register
      TCR     : aliased CAN0_TCR_Register;
      --  Abort Command Register
      ACR     : aliased CAN0_ACR_Register;
      --  Write Protect Mode Register
      WPMR    : aliased CAN0_WPMR_Register;
      --  Write Protect Status Register
      WPSR    : aliased CAN0_WPSR_Register;
      --  Mailbox Mode Register (MB = 0)
      MMR0    : aliased MMR_Register;
      --  Mailbox Acceptance Mask Register (MB = 0)
      MAM0    : aliased MAM_Register;
      --  Mailbox ID Register (MB = 0)
      MID0    : aliased MID_Register;
      --  Mailbox Family ID Register (MB = 0)
      MFID0   : aliased MFID_Register;
      --  Mailbox Status Register (MB = 0)
      MSR0    : aliased MSR_Register;
      --  Mailbox Data Low Register (MB = 0)
      MDL0    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Data High Register (MB = 0)
      MDH0    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Control Register (MB = 0)
      MCR0    : aliased MCR_Register;
      --  Mailbox Mode Register (MB = 1)
      MMR1    : aliased MMR_Register;
      --  Mailbox Acceptance Mask Register (MB = 1)
      MAM1    : aliased MAM_Register;
      --  Mailbox ID Register (MB = 1)
      MID1    : aliased MID_Register;
      --  Mailbox Family ID Register (MB = 1)
      MFID1   : aliased MFID_Register;
      --  Mailbox Status Register (MB = 1)
      MSR1    : aliased MSR_Register;
      --  Mailbox Data Low Register (MB = 1)
      MDL1    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Data High Register (MB = 1)
      MDH1    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Control Register (MB = 1)
      MCR1    : aliased MCR_Register;
      --  Mailbox Mode Register (MB = 2)
      MMR2    : aliased MMR_Register;
      --  Mailbox Acceptance Mask Register (MB = 2)
      MAM2    : aliased MAM_Register;
      --  Mailbox ID Register (MB = 2)
      MID2    : aliased MID_Register;
      --  Mailbox Family ID Register (MB = 2)
      MFID2   : aliased MFID_Register;
      --  Mailbox Status Register (MB = 2)
      MSR2    : aliased MSR_Register;
      --  Mailbox Data Low Register (MB = 2)
      MDL2    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Data High Register (MB = 2)
      MDH2    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Control Register (MB = 2)
      MCR2    : aliased MCR_Register;
      --  Mailbox Mode Register (MB = 3)
      MMR3    : aliased MMR_Register;
      --  Mailbox Acceptance Mask Register (MB = 3)
      MAM3    : aliased MAM_Register;
      --  Mailbox ID Register (MB = 3)
      MID3    : aliased MID_Register;
      --  Mailbox Family ID Register (MB = 3)
      MFID3   : aliased MFID_Register;
      --  Mailbox Status Register (MB = 3)
      MSR3    : aliased MSR_Register;
      --  Mailbox Data Low Register (MB = 3)
      MDL3    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Data High Register (MB = 3)
      MDH3    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Control Register (MB = 3)
      MCR3    : aliased MCR_Register;
      --  Mailbox Mode Register (MB = 4)
      MMR4    : aliased MMR_Register;
      --  Mailbox Acceptance Mask Register (MB = 4)
      MAM4    : aliased MAM_Register;
      --  Mailbox ID Register (MB = 4)
      MID4    : aliased MID_Register;
      --  Mailbox Family ID Register (MB = 4)
      MFID4   : aliased MFID_Register;
      --  Mailbox Status Register (MB = 4)
      MSR4    : aliased MSR_Register;
      --  Mailbox Data Low Register (MB = 4)
      MDL4    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Data High Register (MB = 4)
      MDH4    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Control Register (MB = 4)
      MCR4    : aliased MCR_Register;
      --  Mailbox Mode Register (MB = 5)
      MMR5    : aliased MMR_Register;
      --  Mailbox Acceptance Mask Register (MB = 5)
      MAM5    : aliased MAM_Register;
      --  Mailbox ID Register (MB = 5)
      MID5    : aliased MID_Register;
      --  Mailbox Family ID Register (MB = 5)
      MFID5   : aliased MFID_Register;
      --  Mailbox Status Register (MB = 5)
      MSR5    : aliased MSR_Register;
      --  Mailbox Data Low Register (MB = 5)
      MDL5    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Data High Register (MB = 5)
      MDH5    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Control Register (MB = 5)
      MCR5    : aliased MCR_Register;
      --  Mailbox Mode Register (MB = 6)
      MMR6    : aliased MMR_Register;
      --  Mailbox Acceptance Mask Register (MB = 6)
      MAM6    : aliased MAM_Register;
      --  Mailbox ID Register (MB = 6)
      MID6    : aliased MID_Register;
      --  Mailbox Family ID Register (MB = 6)
      MFID6   : aliased MFID_Register;
      --  Mailbox Status Register (MB = 6)
      MSR6    : aliased MSR_Register;
      --  Mailbox Data Low Register (MB = 6)
      MDL6    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Data High Register (MB = 6)
      MDH6    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Control Register (MB = 6)
      MCR6    : aliased MCR_Register;
      --  Mailbox Mode Register (MB = 7)
      MMR7    : aliased MMR_Register;
      --  Mailbox Acceptance Mask Register (MB = 7)
      MAM7    : aliased MAM_Register;
      --  Mailbox ID Register (MB = 7)
      MID7    : aliased MID_Register;
      --  Mailbox Family ID Register (MB = 7)
      MFID7   : aliased MFID_Register;
      --  Mailbox Status Register (MB = 7)
      MSR7    : aliased MSR_Register;
      --  Mailbox Data Low Register (MB = 7)
      MDL7    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Data High Register (MB = 7)
      MDH7    : aliased Interfaces.SAM.UInt32;
      --  Mailbox Control Register (MB = 7)
      MCR7    : aliased MCR_Register;
   end record
     with Volatile;

   for CAN_Peripheral use record
      MR      at 16#0# range 0 .. 31;
      IER     at 16#4# range 0 .. 31;
      IDR     at 16#8# range 0 .. 31;
      IMR     at 16#C# range 0 .. 31;
      SR      at 16#10# range 0 .. 31;
      BR      at 16#14# range 0 .. 31;
      TIM     at 16#18# range 0 .. 31;
      TIMESTP at 16#1C# range 0 .. 31;
      ECR     at 16#20# range 0 .. 31;
      TCR     at 16#24# range 0 .. 31;
      ACR     at 16#28# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
      MMR0    at 16#200# range 0 .. 31;
      MAM0    at 16#204# range 0 .. 31;
      MID0    at 16#208# range 0 .. 31;
      MFID0   at 16#20C# range 0 .. 31;
      MSR0    at 16#210# range 0 .. 31;
      MDL0    at 16#214# range 0 .. 31;
      MDH0    at 16#218# range 0 .. 31;
      MCR0    at 16#21C# range 0 .. 31;
      MMR1    at 16#220# range 0 .. 31;
      MAM1    at 16#224# range 0 .. 31;
      MID1    at 16#228# range 0 .. 31;
      MFID1   at 16#22C# range 0 .. 31;
      MSR1    at 16#230# range 0 .. 31;
      MDL1    at 16#234# range 0 .. 31;
      MDH1    at 16#238# range 0 .. 31;
      MCR1    at 16#23C# range 0 .. 31;
      MMR2    at 16#240# range 0 .. 31;
      MAM2    at 16#244# range 0 .. 31;
      MID2    at 16#248# range 0 .. 31;
      MFID2   at 16#24C# range 0 .. 31;
      MSR2    at 16#250# range 0 .. 31;
      MDL2    at 16#254# range 0 .. 31;
      MDH2    at 16#258# range 0 .. 31;
      MCR2    at 16#25C# range 0 .. 31;
      MMR3    at 16#260# range 0 .. 31;
      MAM3    at 16#264# range 0 .. 31;
      MID3    at 16#268# range 0 .. 31;
      MFID3   at 16#26C# range 0 .. 31;
      MSR3    at 16#270# range 0 .. 31;
      MDL3    at 16#274# range 0 .. 31;
      MDH3    at 16#278# range 0 .. 31;
      MCR3    at 16#27C# range 0 .. 31;
      MMR4    at 16#280# range 0 .. 31;
      MAM4    at 16#284# range 0 .. 31;
      MID4    at 16#288# range 0 .. 31;
      MFID4   at 16#28C# range 0 .. 31;
      MSR4    at 16#290# range 0 .. 31;
      MDL4    at 16#294# range 0 .. 31;
      MDH4    at 16#298# range 0 .. 31;
      MCR4    at 16#29C# range 0 .. 31;
      MMR5    at 16#2A0# range 0 .. 31;
      MAM5    at 16#2A4# range 0 .. 31;
      MID5    at 16#2A8# range 0 .. 31;
      MFID5   at 16#2AC# range 0 .. 31;
      MSR5    at 16#2B0# range 0 .. 31;
      MDL5    at 16#2B4# range 0 .. 31;
      MDH5    at 16#2B8# range 0 .. 31;
      MCR5    at 16#2BC# range 0 .. 31;
      MMR6    at 16#2C0# range 0 .. 31;
      MAM6    at 16#2C4# range 0 .. 31;
      MID6    at 16#2C8# range 0 .. 31;
      MFID6   at 16#2CC# range 0 .. 31;
      MSR6    at 16#2D0# range 0 .. 31;
      MDL6    at 16#2D4# range 0 .. 31;
      MDH6    at 16#2D8# range 0 .. 31;
      MCR6    at 16#2DC# range 0 .. 31;
      MMR7    at 16#2E0# range 0 .. 31;
      MAM7    at 16#2E4# range 0 .. 31;
      MID7    at 16#2E8# range 0 .. 31;
      MFID7   at 16#2EC# range 0 .. 31;
      MSR7    at 16#2F0# range 0 .. 31;
      MDL7    at 16#2F4# range 0 .. 31;
      MDH7    at 16#2F8# range 0 .. 31;
      MCR7    at 16#2FC# range 0 .. 31;
   end record;

   --  Controller Area Network 0
   CAN0_Periph : aliased CAN_Peripheral
     with Import, Address => CAN0_Base;

   --  Controller Area Network 1
   CAN1_Periph : aliased CAN_Peripheral
     with Import, Address => CAN1_Base;

end Interfaces.SAM.CAN;
