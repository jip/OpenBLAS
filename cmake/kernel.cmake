# helper functions for the kernel CMakeLists.txt

function(SetFallback KERNEL SOURCE_PATH)
  if (NOT (DEFINED ${KERNEL}))
    set(${KERNEL} ${SOURCE_PATH} PARENT_SCOPE)
  endif ()
endfunction()

macro(SetDefaultL1)
  SetFallback(SAMAXKERNEL amax.S)
  SetFallback(DAMAXKERNEL amax.S)
  SetFallback(QAMAXKERNEL amax.S)
  SetFallback(CAMAXKERNEL zamax.S)
  SetFallback(ZAMAXKERNEL zamax.S)
  SetFallback(XAMAXKERNEL zamax.S)
  SetFallback(SAMINKERNEL amin.S)
  SetFallback(DAMINKERNEL amin.S)
  SetFallback(QAMINKERNEL amin.S)
  SetFallback(CAMINKERNEL zamin.S)
  SetFallback(ZAMINKERNEL zamin.S)
  SetFallback(XAMINKERNEL zamin.S)
  SetFallback(SMAXKERNEL max.S)
  SetFallback(DMAXKERNEL max.S)
  SetFallback(QMAXKERNEL max.S)
  SetFallback(SMINKERNEL min.S)
  SetFallback(DMINKERNEL min.S)
  SetFallback(QMINKERNEL min.S)
  SetFallback(ISAMAXKERNEL iamax.S)
  SetFallback(IDAMAXKERNEL iamax.S)
  SetFallback(IQAMAXKERNEL iamax.S)
  SetFallback(ICAMAXKERNEL izamax.S)
  SetFallback(IZAMAXKERNEL izamax.S)
  SetFallback(IXAMAXKERNEL izamax.S)
  SetFallback(ISAMINKERNEL iamin.S)
  SetFallback(IDAMINKERNEL iamin.S)
  SetFallback(IQAMINKERNEL iamin.S)
  SetFallback(ICAMINKERNEL izamin.S)
  SetFallback(IZAMINKERNEL izamin.S)
  SetFallback(IXAMINKERNEL izamin.S)
  SetFallback(ISMAXKERNEL iamax.S)
  SetFallback(IDMAXKERNEL iamax.S)
  SetFallback(IQMAXKERNEL iamax.S)
  SetFallback(ISMINKERNEL iamin.S)
  SetFallback(IDMINKERNEL iamin.S)
  SetFallback(IQMINKERNEL iamin.S)
  SetFallback(SASUMKERNEL asum.S)
  SetFallback(DASUMKERNEL asum.S)
  SetFallback(CASUMKERNEL zasum.S)
  SetFallback(ZASUMKERNEL zasum.S)
  SetFallback(QASUMKERNEL asum.S)
  SetFallback(XASUMKERNEL zasum.S)
  SetFallback(SAXPYKERNEL axpy.S)
  SetFallback(DAXPYKERNEL axpy.S)
  SetFallback(CAXPYKERNEL zaxpy.S)
  SetFallback(ZAXPYKERNEL zaxpy.S)
  SetFallback(QAXPYKERNEL axpy.S)
  SetFallback(XAXPYKERNEL zaxpy.S)
  SetFallback(SCOPYKERNEL copy.S)
  SetFallback(DCOPYKERNEL copy.S)
  SetFallback(CCOPYKERNEL zcopy.S)
  SetFallback(ZCOPYKERNEL zcopy.S)
  SetFallback(QCOPYKERNEL copy.S)
  SetFallback(XCOPYKERNEL zcopy.S)
  SetFallback(SDOTKERNEL dot.S)
  SetFallback(DDOTKERNEL dot.S)
  SetFallback(CDOTKERNEL zdot.S)
  SetFallback(ZDOTKERNEL zdot.S)
  SetFallback(QDOTKERNEL dot.S)
  SetFallback(XDOTKERNEL zdot.S)
  SetFallback(SNRM2KERNEL nrm2.S)
  SetFallback(DNRM2KERNEL nrm2.S)
  SetFallback(QNRM2KERNEL nrm2.S)
  SetFallback(CNRM2KERNEL znrm2.S)
  SetFallback(ZNRM2KERNEL znrm2.S)
  SetFallback(XNRM2KERNEL znrm2.S)
  SetFallback(SROTKERNEL rot.S)
  SetFallback(DROTKERNEL rot.S)
  SetFallback(QROTKERNEL rot.S)
  SetFallback(CROTKERNEL zrot.S)
  SetFallback(ZROTKERNEL zrot.S)
  SetFallback(XROTKERNEL zrot.S)
  SetFallback(SROTMKERNEL rotm.S)
  SetFallback(DROTMKERNEL rotm.S)
  SetFallback(QROTMKERNEL rotm.S)
  SetFallback(SSCALKERNEL scal.S)
  SetFallback(DSCALKERNEL scal.S)
  SetFallback(CSCALKERNEL zscal.S)
  SetFallback(ZSCALKERNEL zscal.S)
  SetFallback(QSCALKERNEL scal.S)
  SetFallback(XSCALKERNEL zscal.S)
  SetFallback(SSWAPKERNEL swap.S)
  SetFallback(DSWAPKERNEL swap.S)
  SetFallback(CSWAPKERNEL zswap.S)
  SetFallback(ZSWAPKERNEL zswap.S)
  SetFallback(QSWAPKERNEL swap.S)
  SetFallback(XSWAPKERNEL zswap.S)
  SetFallback(SGEMVNKERNEL gemv_n.S)
  SetFallback(SGEMVTKERNEL gemv_t.S)
  SetFallback(DGEMVNKERNEL gemv_n.S)
  SetFallback(DGEMVTKERNEL gemv_t.S)
  SetFallback(CGEMVNKERNEL zgemv_n.S)
  SetFallback(CGEMVTKERNEL zgemv_t.S)
  SetFallback(ZGEMVNKERNEL zgemv_n.S)
  SetFallback(ZGEMVTKERNEL zgemv_t.S)
  SetFallback(QGEMVNKERNEL gemv_n.S)
  SetFallback(QGEMVTKERNEL gemv_t.S)
  SetFallback(XGEMVNKERNEL zgemv_n.S)
  SetFallback(XGEMVTKERNEL zgemv_t.S)
  SetFallback(SCABS_KERNEL ../generic/cabs.c)
  SetFallback(DCABS_KERNEL ../generic/cabs.c)
  SetFallback(QCABS_KERNEL ../generic/cabs.c)
  SetFallback(LSAME_KERNEL ../generic/lsame.c)
  SetFallback(SAXPBYKERNEL ../arm/axpby.c)
  SetFallback(DAXPBYKERNEL ../arm/axpby.c)
  SetFallback(CAXPBYKERNEL ../arm/zaxpby.c)
  SetFallback(ZAXPBYKERNEL ../arm/zaxpby.c)
  SetFallback(SSUMKERNEL sum.S)
  SetFallback(DSUMKERNEL sum.S)
  SetFallback(CSUMKERNEL zsum.S)
  SetFallback(ZSUMKERNEL zsum.S)
  SetFallback(QSUMKERNEL sum.S)
  SetFallback(XSUMKERNEL zsum.S)
if (BUILD_BFLOAT16)
  SetFallback(SHAMINKERNEL ../arm/amin.c)
  SetFallback(SHAMAXKERNEL ../arm/amax.c)
  SetFallback(SHMAXKERNEL ../arm/max.c)
  SetFallback(SHMINKERNEL ../arm/min.c)
  SetFallback(ISHAMAXKERNEL ../arm/iamax.c)
  SetFallback(ISHAMINKERNEL ../arm/iamin.c)
  SetFallback(ISHMAXKERNEL ../arm/imax.c)
  SetFallback(ISHMINKERNEL ../arm/imin.c)
  SetFallback(SHASUMKERNEL ../arm/asum.c)
  SetFallback(SHAXPYKERNEL ../arm/axpy.c)
  SetFallback(SHAXPBYKERNEL ../arm/axpby.c)
  SetFallback(SHCOPYKERNEL ../arm/copy.c)
  SetFallback(SBDOTKERNEL ../x86_64/sbdot.c)
  SetFallback(SHROTKERNEL ../arm/rot.c)
  SetFallback(SHSCALKERNEL ../arm/scal.c)
  SetFallback(SHNRM2KERNEL ../arm/nrm2.c)
  SetFallback(SHSUMKERNEL ../arm/sum.c)
  SetFallback(SHSWAPKERNEL ../arm/swap.c)
  SetFallback(TOBF16KERNEL ../x86_64/tobf16.c)
  SetFallback(BF16TOKERNEL ../x86_64/bf16to.c)
  SetFallback(SBGEMVNKERNEL ../x86_64/sbgemv_n.c)
  SetFallback(SBGEMVTKERNEL ../x86_64/sbgemv_t.c)
endif ()
endmacro ()

macro(SetDefaultL2)
  SetFallback(SGEMVNKERNEL ../arm/gemv_n.c)
  SetFallback(SGEMVTKERNEL ../arm/gemv_t.c)
  SetFallback(DGEMVNKERNEL gemv_n.S)
  SetFallback(DGEMVTKERNEL gemv_t.S)
  SetFallback(CGEMVNKERNEL zgemv_n.S)
  SetFallback(CGEMVTKERNEL zgemv_t.S)
  SetFallback(ZGEMVNKERNEL zgemv_n.S)
  SetFallback(ZGEMVTKERNEL zgemv_t.S)
  SetFallback(QGEMVNKERNEL gemv_n.S)
  SetFallback(QGEMVTKERNEL gemv_t.S)
  SetFallback(XGEMVNKERNEL zgemv_n.S)
  SetFallback(XGEMVTKERNEL zgemv_t.S)
  SetFallback(SGERKERNEL ../generic/ger.c)
  SetFallback(DGERKERNEL ../generic/ger.c)
  SetFallback(QGERKERNEL ../generic/ger.c)
  SetFallback(CGERUKERNEL ../generic/zger.c)
  SetFallback(CGERCKERNEL ../generic/zger.c)
  SetFallback(ZGERUKERNEL ../generic/zger.c)
  SetFallback(ZGERCKERNEL ../generic/zger.c)
  SetFallback(XGERUKERNEL ../generic/zger.c)
  SetFallback(XGERCKERNEL ../generic/zger.c)
  SetFallback(SSYMV_U_KERNEL ../generic/symv_k.c)
  SetFallback(SSYMV_L_KERNEL ../generic/symv_k.c)
  SetFallback(DSYMV_U_KERNEL ../generic/symv_k.c)
  SetFallback(DSYMV_L_KERNEL ../generic/symv_k.c)
  SetFallback(QSYMV_U_KERNEL ../generic/symv_k.c)
  SetFallback(QSYMV_L_KERNEL ../generic/symv_k.c)
  SetFallback(CSYMV_U_KERNEL ../generic/zsymv_k.c)
  SetFallback(CSYMV_L_KERNEL ../generic/zsymv_k.c)
  SetFallback(ZSYMV_U_KERNEL ../generic/zsymv_k.c)
  SetFallback(ZSYMV_L_KERNEL ../generic/zsymv_k.c)
  SetFallback(XSYMV_U_KERNEL ../generic/zsymv_k.c)
  SetFallback(XSYMV_L_KERNEL ../generic/zsymv_k.c)
  SetFallback(CHEMV_U_KERNEL ../generic/zhemv_k.c)
  SetFallback(CHEMV_L_KERNEL ../generic/zhemv_k.c)
  SetFallback(CHEMV_V_KERNEL ../generic/zhemv_k.c)
  SetFallback(CHEMV_M_KERNEL ../generic/zhemv_k.c)
  SetFallback(ZHEMV_U_KERNEL ../generic/zhemv_k.c)
  SetFallback(ZHEMV_L_KERNEL ../generic/zhemv_k.c)
  SetFallback(ZHEMV_V_KERNEL ../generic/zhemv_k.c)
  SetFallback(ZHEMV_M_KERNEL ../generic/zhemv_k.c)
  SetFallback(XHEMV_U_KERNEL ../generic/zhemv_k.c)
  SetFallback(XHEMV_L_KERNEL ../generic/zhemv_k.c)
  SetFallback(XHEMV_V_KERNEL ../generic/zhemv_k.c)
  SetFallback(XHEMV_M_KERNEL ../generic/zhemv_k.c)
if (BUILD_BFLOAT16)
  SetFallback(SBGEMVNKERNEL ../x86_64/sbgemv_n.c)
  SetFallback(SBGEMVTKERNEL ../x86_64/sbgemv_t.c)
  SetFallback(SHGERKERNEL ../generic/ger.c)
endif ()
endmacro ()

macro(SetDefaultL3)
  SetFallback(SGEADD_KERNEL ../generic/geadd.c)
  SetFallback(DGEADD_KERNEL ../generic/geadd.c)
  SetFallback(CGEADD_KERNEL ../generic/zgeadd.c)
  SetFallback(ZGEADD_KERNEL ../generic/zgeadd.c)
if (BUILD_BFLOAT16)
  SetFallback(SHGEADD_KERNEL ../generic/geadd.c)
  SetFallback(SBGEMMKERNEL ../generic/gemmkernel_2x2.c)
  SetFallback(SBGEMM_BETA  ../generic/gemm_beta.c)
  SetFallback(SBGEMMINCOPY ../generic/gemm_ncopy_2.c)
  SetFallback(SBGEMMITCOPY ../generic/gemm_tcopy_2.c)
  SetFallback(SBGEMMONCOPY ../generic/gemm_ncopy_2.c)
  SetFallback(SBGEMMOTCOPY ../generic/gemm_tcopy_2.c)
  SetFallback(SBGEMMINCOPYOBJ sbgemm_incopy.o)
  SetFallback(SBGEMMITCOPYOBJ sbgemm_itcopy.o)
  SetFallback(SBGEMMONCOPYOBJ sbgemm_oncopy.o)
  SetFallback(SBGEMMOTCOPYOBJ sbgemm_otcopy.o)
endif ()

endmacro ()
