MEMORY
{
  flash (rx)  : ORIGIN = 0x00080000, LENGTH = 512K
  sram (rwx)  : ORIGIN = 0x20000000, LENGTH = 96K
}

REGION_ALIAS("sram_tx", sram)
REGION_ALIAS("sram_ro", sram)
REGION_ALIAS("sram_bs", sram)
REGION_ALIAS("sram_da", sram)
REGION_ALIAS("ccm_da", sram)
