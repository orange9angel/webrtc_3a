
add_library(libagc OBJECT
		${webrtc_source_path}/modules/audio_processing/agc/agc.cc
		${webrtc_source_path}/modules/audio_processing/agc/agc_manager_direct.cc
		${webrtc_source_path}/modules/audio_processing/agc/utility.cc
		${webrtc_source_path}/modules/audio_processing/agc/legacy/analog_agc.c
		${webrtc_source_path}/modules/audio_processing/agc/legacy/digital_agc.c
		${webrtc_source_path}/modules/audio_processing/agc/loudness_histogram.cc
)

target_compile_options(libagc PRIVATE
)

target_compile_definitions(libagc PRIVATE
)

target_include_directories(libagc PRIVATE

)
