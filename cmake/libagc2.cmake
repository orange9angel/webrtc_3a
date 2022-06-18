
add_library(libagc2 OBJECT
		${rnnoise_source_path}/rnn_vad_weights.cc
		${webrtc_source_path}/modules/audio_processing/agc2/agc2_common.cc
		${webrtc_source_path}/modules/audio_processing/agc2/agc2_testing_common.cc
		${webrtc_source_path}/modules/audio_processing/agc2/adaptive_agc.cc
		${webrtc_source_path}/modules/audio_processing/agc2/adaptive_digital_gain_applier.cc
		${webrtc_source_path}/modules/audio_processing/agc2/adaptive_mode_level_estimator.cc
		${webrtc_source_path}/modules/audio_processing/agc2/adaptive_mode_level_estimator_agc.cc
		${webrtc_source_path}/modules/audio_processing/agc2/biquad_filter.cc
		${webrtc_source_path}/modules/audio_processing/agc2/compute_interpolated_gain_curve.cc
		${webrtc_source_path}/modules/audio_processing/agc2/down_sampler.cc
		${webrtc_source_path}/modules/audio_processing/agc2/fixed_digital_level_estimator.cc
		${webrtc_source_path}/modules/audio_processing/agc2/gain_applier.cc
		${webrtc_source_path}/modules/audio_processing/agc2/interpolated_gain_curve.cc
		${webrtc_source_path}/modules/audio_processing/agc2/limiter.cc
		${webrtc_source_path}/modules/audio_processing/agc2/limiter_db_gain_curve.cc
		${webrtc_source_path}/modules/audio_processing/agc2/noise_level_estimator.cc
		${webrtc_source_path}/modules/audio_processing/agc2/noise_spectrum_estimator.cc
		${webrtc_source_path}/modules/audio_processing/agc2/rnn_vad/auto_correlation.cc
		${webrtc_source_path}/modules/audio_processing/agc2/rnn_vad/features_extraction.cc
		${webrtc_source_path}/modules/audio_processing/agc2/rnn_vad/lp_residual.cc
		${webrtc_source_path}/modules/audio_processing/agc2/rnn_vad/pitch_search.cc
		${webrtc_source_path}/modules/audio_processing/agc2/rnn_vad/pitch_search_internal.cc
		${webrtc_source_path}/modules/audio_processing/agc2/rnn_vad/rnn.cc
		${webrtc_source_path}/modules/audio_processing/agc2/rnn_vad/spectral_features.cc
		${webrtc_source_path}/modules/audio_processing/agc2/rnn_vad/spectral_features_internal.cc
		${webrtc_source_path}/modules/audio_processing/agc2/saturation_protector.cc
		${webrtc_source_path}/modules/audio_processing/agc2/signal_classifier.cc
		${webrtc_source_path}/modules/audio_processing/agc2/vad_with_level.cc
		${webrtc_source_path}/modules/audio_processing/agc2/vector_float_frame.cc
)

target_compile_options(libagc2 PRIVATE
)

target_compile_definitions(libagc2 PRIVATE
)

target_include_directories(libagc2 PRIVATE

)
