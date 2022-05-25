
add_library(libasp OBJECT
		${webrtc_source_path}/common_audio/signal_processing/auto_corr_to_refl_coef.c
		${webrtc_source_path}/common_audio/signal_processing/auto_correlation.c
		${webrtc_source_path}/common_audio/signal_processing/complex_bit_reverse.c
		${webrtc_source_path}/common_audio/signal_processing/complex_fft.c
		${webrtc_source_path}/common_audio/signal_processing/copy_set_operations.c
		${webrtc_source_path}/common_audio/signal_processing/cross_correlation.c
		${webrtc_source_path}/common_audio/signal_processing/division_operations.c
		${webrtc_source_path}/common_audio/signal_processing/dot_product_with_scale.cc
		${webrtc_source_path}/common_audio/signal_processing/downsample_fast.c
		${webrtc_source_path}/common_audio/signal_processing/energy.c
		${webrtc_source_path}/common_audio/signal_processing/filter_ar.c
		${webrtc_source_path}/common_audio/signal_processing/filter_ar_fast_q12.c
		${webrtc_source_path}/common_audio/signal_processing/filter_ma_fast_q12.c
		${webrtc_source_path}/common_audio/signal_processing/get_hanning_window.c
		${webrtc_source_path}/common_audio/signal_processing/get_scaling_square.c
		${webrtc_source_path}/common_audio/signal_processing/ilbc_specific_functions.c
		${webrtc_source_path}/common_audio/signal_processing/levinson_durbin.c
		${webrtc_source_path}/common_audio/signal_processing/lpc_to_refl_coef.c
		${webrtc_source_path}/common_audio/signal_processing/min_max_operations.c
		${webrtc_source_path}/common_audio/signal_processing/randomization_functions.c
		${webrtc_source_path}/common_audio/signal_processing/real_fft.c
		${webrtc_source_path}/common_audio/signal_processing/refl_coef_to_lpc.c
		${webrtc_source_path}/common_audio/signal_processing/resample.c
		${webrtc_source_path}/common_audio/signal_processing/resample_48khz.c
		${webrtc_source_path}/common_audio/signal_processing/resample_by_2.c
		${webrtc_source_path}/common_audio/signal_processing/resample_by_2_internal.c
		${webrtc_source_path}/common_audio/signal_processing/resample_fractional.c
		${webrtc_source_path}/common_audio/signal_processing/spl_init.c
		${webrtc_source_path}/common_audio/signal_processing/spl_inl.c
		${webrtc_source_path}/common_audio/signal_processing/spl_sqrt.c
		${webrtc_source_path}/common_audio/signal_processing/splitting_filter.c
		${webrtc_source_path}/common_audio/signal_processing/sqrt_of_one_minus_x_squared.c
		${webrtc_source_path}/common_audio/signal_processing/vector_scaling_operations.c
)

target_compile_options(libasp PRIVATE
)

target_compile_definitions(libasp PRIVATE
)

target_include_directories(libasp PRIVATE

)
