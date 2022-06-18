include_directories(${webrtc_source_path}/common_audio/resampler/include)

add_library(libvad OBJECT
		${webrtc_source_path}/common_audio/vad/vad.cc
		${webrtc_source_path}/common_audio/vad/vad_core.c
		${webrtc_source_path}/common_audio/vad/vad_filterbank.c
		${webrtc_source_path}/common_audio/vad/vad_gmm.c
		${webrtc_source_path}/common_audio/vad/vad_sp.c
		${webrtc_source_path}/common_audio/vad/webrtc_vad.c
		${webrtc_source_path}/modules/audio_processing/vad/gmm.cc
		${webrtc_source_path}/modules/audio_processing/vad/pitch_based_vad.cc
		${webrtc_source_path}/modules/audio_processing/vad/pitch_internal.cc
		${webrtc_source_path}/modules/audio_processing/vad/pole_zero_filter.cc
		${webrtc_source_path}/modules/audio_processing/vad/standalone_vad.cc
		${webrtc_source_path}/modules/audio_processing/vad/vad_audio_proc.cc
		${webrtc_source_path}/modules/audio_processing/vad/vad_circular_buffer.cc
		${webrtc_source_path}/modules/audio_processing/vad/voice_activity_detector.cc
		${webrtc_source_path}/common_audio/third_party/fft4g/fft4g.c
		${webrtc_source_path}/modules/audio_coding/codecs/isac/main/source/filter_functions.c
		${webrtc_source_path}/modules/audio_coding/codecs/isac/main/source/isac_vad.c
		${webrtc_source_path}/modules/audio_coding/codecs/isac/main/source/pitch_estimator.c
		${webrtc_source_path}/modules/audio_coding/codecs/isac/main/source/pitch_filter.c
		${webrtc_source_path}/modules/audio_coding/codecs/isac/main/source/pitch_gain_tables.c
		${webrtc_source_path}/modules/audio_coding/codecs/isac/main/source/pitch_lag_tables.c
		${webrtc_source_path}/common_audio/resampler/push_resampler.cc
		${webrtc_source_path}/common_audio/resampler/push_sinc_resampler.cc
		${webrtc_source_path}/common_audio/resampler/resampler.cc
		${webrtc_source_path}/common_audio/resampler/sinc_resampler.cc
		${webrtc_source_path}/common_audio/audio_util.cc
)

target_compile_options(libvad PRIVATE
)

target_compile_definitions(libvad PRIVATE
)

target_include_directories(libvad PRIVATE

)
