g++ --std=c++11 -o gradcpp main.cpp \
        -Iinclude \
        include/platform.h \
        include/internals.h \
        include/primitives.h \
        include/softposit.h \
        include/softposit_cpp.h \
        include/softposit_types.h \
        softpositsrc/c_convertDecToPosit16.c \
        softpositsrc/c_convertDecToPosit32.c \
        softpositsrc/c_convertDecToPosit8.c \
        softpositsrc/c_convertDecToPositX1.c \
        softpositsrc/c_convertPosit16ToDec.c \
        softpositsrc/c_convertPosit32ToDec.c \
        softpositsrc/c_convertPosit8ToDec.c \
        softpositsrc/c_convertPositX1ToDec.c \
        softpositsrc/c_convertQuire16ToPosit16.c \
        softpositsrc/c_convertQuire32ToPosit32.c \
        softpositsrc/c_convertQuire8ToPosit8.c \
        softpositsrc/c_convertQuireX2ToPositX2.c \
        softpositsrc/c_int.c \
        softpositsrc/i32_to_p16.c \
        softpositsrc/i32_to_p32.c \
        softpositsrc/i32_to_p8.c \
        softpositsrc/i32_to_pX1.c \
        softpositsrc/i32_to_pX2.c \
        softpositsrc/i64_to_p16.c \
        softpositsrc/i64_to_p32.c \
        softpositsrc/i64_to_p8.c \
        softpositsrc/i64_to_pX2.c \
        softpositsrc/p16_add.c \
        softpositsrc/p16_div.c \
        softpositsrc/p16_eq.c \
        softpositsrc/p16_le.c \
        softpositsrc/p16_lt.c \
        softpositsrc/p16_mul.c \
        softpositsrc/p16_mulAdd.c \
        softpositsrc/p16_roundToInt.c \
        softpositsrc/p16_sqrt.c \
        softpositsrc/p16_sub.c \
        softpositsrc/p16_to_i32.c \
        softpositsrc/p16_to_i64.c \
        softpositsrc/p16_to_p32.c \
        softpositsrc/p16_to_p8.c \
        softpositsrc/p16_to_pX1.c \
        softpositsrc/p16_to_pX2.c \
        softpositsrc/p16_to_ui32.c \
        softpositsrc/p16_to_ui64.c \
        softpositsrc/p32_add.c \
        softpositsrc/p32_div.c \
        softpositsrc/p32_eq.c \
        softpositsrc/p32_le.c \
        softpositsrc/p32_lt.c \
        softpositsrc/p32_mul.c \
        softpositsrc/p32_mulAdd.c \
        softpositsrc/p32_roundToInt.c \
        softpositsrc/p32_sqrt.c \
        softpositsrc/p32_sub.c \
        softpositsrc/p32_to_i32.c \
        softpositsrc/p32_to_i64.c \
        softpositsrc/p32_to_p16.c \
        softpositsrc/p32_to_p8.c \
        softpositsrc/p32_to_pX1.c \
        softpositsrc/p32_to_pX2.c \
        softpositsrc/p32_to_ui32.c \
        softpositsrc/p32_to_ui64.c \
        softpositsrc/p8_add.c \
        softpositsrc/p8_div.c \
        softpositsrc/p8_eq.c \
        softpositsrc/p8_le.c \
        softpositsrc/p8_lt.c \
        softpositsrc/p8_mul.c \
        softpositsrc/p8_mulAdd.c \
        softpositsrc/p8_roundToInt.c \
        softpositsrc/p8_sqrt.c \
        softpositsrc/p8_sub.c \
        softpositsrc/p8_to_i32.c \
        softpositsrc/p8_to_i64.c \
        softpositsrc/p8_to_p16.c \
        softpositsrc/p8_to_p32.c \
        softpositsrc/p8_to_pX1.c \
        softpositsrc/p8_to_pX2.c \
        softpositsrc/p8_to_ui32.c \
        softpositsrc/p8_to_ui64.c \
        softpositsrc/pX1_add.c \
        softpositsrc/pX1_div.c \
        softpositsrc/pX1_mul.c \
        softpositsrc/pX1_mulAdd.c \
        softpositsrc/pX1_roundToInt.c \
        softpositsrc/pX1_sub.c \
        softpositsrc/pX1_to_i32.c \
        softpositsrc/pX1_to_i64.c \
        softpositsrc/pX1_to_p16.c \
        softpositsrc/pX1_to_p32.c \
        softpositsrc/pX1_to_p8.c \
        softpositsrc/pX1_to_pX1.c \
        softpositsrc/pX1_to_pX2.c \
        softpositsrc/pX1_to_ui32.c \
        softpositsrc/pX1_to_ui64.c \
        softpositsrc/pX2_add.c \
        softpositsrc/pX2_div.c \
        softpositsrc/pX2_eq.c \
        softpositsrc/pX2_le.c \
        softpositsrc/pX2_lt.c \
        softpositsrc/pX2_mul.c \
        softpositsrc/pX2_mulAdd.c \
        softpositsrc/pX2_roundToInt.c \
        softpositsrc/pX2_sqrt.c \
        softpositsrc/pX2_sub.c \
        softpositsrc/pX2_to_pX1.c \
        softpositsrc/quire16_fdp_add.c \
        softpositsrc/quire16_fdp_sub.c \
        softpositsrc/quire32_fdp_add.c \
        softpositsrc/quire32_fdp_sub.c \
        softpositsrc/quire8_fdp_add.c \
        softpositsrc/quire8_fdp_sub.c \
        softpositsrc/quire_helper.c \
        softpositsrc/s_addMagsP16.c \
        softpositsrc/s_addMagsP32.c \
        softpositsrc/s_addMagsP8.c \
        softpositsrc/s_addMagsPX1.c \
        softpositsrc/s_addMagsPX2.c \
        softpositsrc/s_approxRecipSqrt_1Ks.c \
        softpositsrc/s_mulAddP16.c \
        softpositsrc/s_mulAddP32.c \
        softpositsrc/s_mulAddP8.c \
        softpositsrc/s_mulAddPX1.c \
        softpositsrc/s_mulAddPX2.c \
        softpositsrc/s_subMagsP16.c \
        softpositsrc/s_subMagsP32.c \
        softpositsrc/s_subMagsP8.c \
        softpositsrc/s_subMagsPX1.c \
        softpositsrc/s_subMagsPX2.c \
        softpositsrc/ui32_to_p16.c \
        softpositsrc/ui32_to_p32.c \
        softpositsrc/ui32_to_p8.c \
        softpositsrc/ui32_to_pX2.c \
        softpositsrc/ui64_to_p16.c \
        softpositsrc/ui64_to_p32.c \
        softpositsrc/ui64_to_p8.c \
        softpositsrc/ui64_to_pX1.c \
        softpositsrc/ui64_to_pX2.c