
add_library(libaec3 OBJECT
		${webrtc_source_path}/modules/audio_processing/aec3/adaptive_fir_filter.cc
		${webrtc_source_path}/modules/audio_processing/aec3/adaptive_fir_filter_erl.cc
		${webrtc_source_path}/modules/audio_processing/aec3/aec3_common.cc
		${webrtc_source_path}/modules/audio_processing/aec3/aec3_fft.cc
		${webrtc_source_path}/modules/audio_processing/aec3/aec_state.cc
		${webrtc_source_path}/modules/audio_processing/aec3/api_call_jitter_metrics.cc
		${webrtc_source_path}/modules/audio_processing/aec3/block_buffer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/block_delay_buffer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/block_framer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/block_processor.cc
		${webrtc_source_path}/modules/audio_processing/aec3/block_processor_metrics.cc
		${webrtc_source_path}/modules/audio_processing/aec3/clockdrift_detector.cc
		${webrtc_source_path}/modules/audio_processing/aec3/comfort_noise_generator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/decimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/downsampled_render_buffer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/echo_audibility.cc
		${webrtc_source_path}/modules/audio_processing/aec3/echo_canceller3.cc
		${webrtc_source_path}/modules/audio_processing/aec3/echo_path_delay_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/echo_path_variability.cc
		${webrtc_source_path}/modules/audio_processing/aec3/echo_remover.cc
		${webrtc_source_path}/modules/audio_processing/aec3/echo_remover_metrics.cc
		${webrtc_source_path}/modules/audio_processing/aec3/erl_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/erle_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/fft_buffer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/filter_analyzer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/frame_blocker.cc
		${webrtc_source_path}/modules/audio_processing/aec3/fullband_erle_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/main_filter_update_gain.cc
		${webrtc_source_path}/modules/audio_processing/aec3/matched_filter.cc
		${webrtc_source_path}/modules/audio_processing/aec3/matched_filter_lag_aggregator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/moving_average.cc
		${webrtc_source_path}/modules/audio_processing/aec3/render_buffer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/render_delay_buffer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/render_delay_controller.cc
		${webrtc_source_path}/modules/audio_processing/aec3/render_delay_controller_metrics.cc
		${webrtc_source_path}/modules/audio_processing/aec3/render_signal_analyzer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/residual_echo_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/reverb_decay_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/reverb_frequency_response.cc
		${webrtc_source_path}/modules/audio_processing/aec3/reverb_model.cc
		${webrtc_source_path}/modules/audio_processing/aec3/reverb_model_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/shadow_filter_update_gain.cc
		${webrtc_source_path}/modules/audio_processing/aec3/signal_dependent_erle_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/spectrum_buffer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/stationarity_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/subband_erle_estimator.cc
		${webrtc_source_path}/modules/audio_processing/aec3/subtractor.cc
		${webrtc_source_path}/modules/audio_processing/aec3/subtractor_output.cc
		${webrtc_source_path}/modules/audio_processing/aec3/subtractor_output_analyzer.cc
		${webrtc_source_path}/modules/audio_processing/aec3/suppression_filter.cc
		${webrtc_source_path}/modules/audio_processing/aec3/suppression_gain.cc
)

target_compile_options(libaec3 PRIVATE
)

target_compile_definitions(libaec3 PRIVATE
)

target_include_directories(libaec3 PRIVATE

)
