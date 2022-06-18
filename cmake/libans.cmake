
add_library(libans OBJECT
		${webrtc_source_path}/modules/audio_processing/noise_suppression.cc
		${webrtc_source_path}/modules/audio_processing/ns/noise_suppression.c
		${webrtc_source_path}/modules/audio_processing/ns/noise_suppression_x.c
		${webrtc_source_path}/modules/audio_processing/ns/ns_core.c
		${webrtc_source_path}/modules/audio_processing/ns/nsx_core_c.c
		${webrtc_source_path}/modules/audio_processing/ns/nsx_core.c
)

if (ANDROID_PLATFORM)
	list(APPEND libans
		${webrtc_source_path}/modules/audio_processing/ns/nsx_core_neon.c
	)
endif()

target_compile_options(libans PRIVATE
)

target_compile_definitions(libans PRIVATE
)

target_include_directories(libans PRIVATE

)
